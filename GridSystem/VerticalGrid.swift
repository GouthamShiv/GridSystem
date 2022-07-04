//
//  VerticalGrid.swift
//  GridSystem
//
//  Created by Goutham S on 04/07/22.
//

import SwiftUI

struct VerticalGrid: View {
    let items = (0...200)
//    let columns = [
//        GridItem(.fixed(100)),
//        GridItem(.fixed(100)),
//        GridItem(.fixed(100)),
//    ]
    
//    let columns = [
//        GridItem(.adaptive(minimum: 60))
//    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, content: {
                ForEach(items, id: \.self) { item in
                    ZStack {
                        Circle()
                            .strokeBorder(Color.blue, lineWidth: 4)
                        Text("\(item)")
                            .font(.title3)
                            .padding()
                    }
                    .background(Color.yellow)
                }
            })
        }
    }
}

struct VerticalGrid_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGrid()
    }
}
