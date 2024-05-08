//
//  ItemModel.swift
//  SwiftDataWindow
//
//  Created by Emorn on 5/8/24.
//

import Foundation
import SwiftData

@Model
final class ItemModel {
    var timestamp: Date
    var name: String
    var desc: String
    
    
    init(timestamp: Date, name: String = "", desc: String = "") {
        self.timestamp = timestamp
        self.name = name
        self.desc = desc
    }
}
