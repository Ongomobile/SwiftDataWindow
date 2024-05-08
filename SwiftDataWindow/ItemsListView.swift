//
//  ItemsListView.swift
//  SwiftDataWindow
//
//  Created by Emorn on 5/8/24.
//

import SwiftUI
import SwiftData

struct ItemsListView: View {
    @Query private var items: [ItemModel]
    var body: some View {
       
                GeometryReader{
            let size = $0.size
            let width = size.width
            /// Dynamic Grid Count Based on the Available Size
            let rowCount = max(Int(width / 250), 1)
            
            ScrollView(.vertical) {
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 10), count: rowCount), spacing: 10){
                    ForEach(items) { item in
                        ItemsButtonView(item: item )
                    }
                }
                .padding(.top)
            }
        }
    }
}


