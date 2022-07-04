//
//  ContentView.swift
//  GridSystem
//
//  Created by Goutham S on 04/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Vertical Grid", destination: VerticalGrid())
            }
            .navigationTitle("Lazy Grid")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
