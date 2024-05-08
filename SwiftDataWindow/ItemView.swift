//
//  ItemView.swift
//  SwiftDataWindow
//
//  Created by Emorn on 5/8/24.
//

import SwiftUI

struct ItemView: View {
    let item: ItemModel
    var body: some View {
        
        VStack{
            Text("Name: \(item.name)")
            Text("Description: \(item.desc)")
            Text("Name: \(item.timestamp)")
        }
        .frame(width:600, height:300)
    }
}


