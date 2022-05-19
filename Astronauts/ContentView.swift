//
//  ContentView.swift
//  Astronauts
//
//  Created by Jacob Tamayo on 5/18/22.
//

import SwiftUI

struct ContentView: View {
  let astronauts: [String: Astronaut] = Bundle.main.decodeData("astronauts.json")
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
