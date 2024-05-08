//
//  AddItem.swift
//  SwiftDataWindow
//
//  Created by Emorn on 5/8/24.
//

import SwiftUI

struct AddItem: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name: String = ""
    @State private var desc: String = ""
    
    private func saveItem() {
        let newItem = ItemModel(
            timestamp: Date(),
            name: name,
            desc: desc
        )
        
        modelContext.insert(newItem)
        
        do {
            try modelContext.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Form {
                TextField("Description", text: $desc)
                TextField("Name", text: $name)
                
                HStack{
                    Button("Save Trade") {
                        // Action to save the Item
                        saveItem()
                        dismiss()
                    }
                    
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
            .padding()
        }
        .frame(width: 400, height: 300)
    }
}
