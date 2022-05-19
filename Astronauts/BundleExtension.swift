//
//  BundleExtension.swift
//  Astronauts
//
//  Created by Jacob Tamayo on 5/18/22.
//

import Foundation

extension Bundle {
  func decodeData<T: Codable>(_ file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Could not locate \(file)")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Could not load \(file) file")
    }
    
    let decoder = JSONDecoder()
    
    guard let loaded = try? decoder.decode(T.self, from: data) else {
      fatalError("Could not load \(file)")
    }
    
    return loaded
  }
  
}
