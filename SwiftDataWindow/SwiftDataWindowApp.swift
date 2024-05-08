//
//  SwiftDataWindowApp.swift
//  SwiftDataWindow
//
//  Created by Emorn on 5/8/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataWindowApp: App {
   
    var body: some Scene {
        WindowGroup {
            RootView()
                .modelContainer(for: [ItemModel.self])
        }
        
        // I can't figure out how to pass an ItemModel to WindowGroup
       
        // Example for WindowGroup documentation
        // A window group that displays messages.
         //WindowGroup(for: Message.ID.self) { $messageID in
             //MessageDetail(messageID: messageID)
        // }
        
    }
}
