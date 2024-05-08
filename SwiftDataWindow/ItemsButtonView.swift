//
//  ItemsButtonView.swift
//  SwiftDataWindow
//
//  Created by Emorn on 5/8/24.
//

import SwiftUI

struct ItemsButtonView: View {
    @Environment(\.openWindow) private var openWindow
    let item: ItemModel
  
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("\(item.name )")
                Text("\(item.desc )")
                Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                
                HStack {
                    Text("Open Item In New Window")
                        .onTapGesture {
                            // Open Item in new window
                           // openWindow(value: item)
                           print("Open Item Button Presed")
                        }
                }
                .padding(8)
                .background(.gray.opacity(0.15), in: .rect(cornerRadius: 12))
              
               
            }
            .padding()
            .background(.gray.opacity(0.15), in: .rect(cornerRadius: 12))
            
        }
    }
}

