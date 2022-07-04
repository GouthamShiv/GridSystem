//
//  HorizontalGrid.swift
//  GridSystem
//
//  Created by Goutham S on 04/07/22.
//

import SwiftUI

struct HorizontalGrid: View {
    let items = (0...200)
    
    //    let rows = [
    //        GridItem(.fixed(100)),
    //        GridItem(.fixed(100)),
    //        GridItem(.fixed(100)),
    //    ]
    
    let rows = [
        GridItem(.adaptive(minimum: 60))
    ]
    
    //    let columns = [
    //        GridItem(.flexible()),
    //        GridItem(.flexible()),
    //        GridItem(.flexible()),
    //        GridItem(.flexible()),
    //    ]
    
    //    let columns = [
    //        GridItem(.fixed(150)),
    //        GridItem(.adaptive(minimum: 60))
    //    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, content: {
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

struct HorizontalGrid_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGrid()
    }
}
