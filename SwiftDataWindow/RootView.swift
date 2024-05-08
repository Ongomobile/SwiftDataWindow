//
//  RootView.swift
//  SwiftDataWindow
//
//  Created by Emorn on 5/8/24.
//

import SwiftUI
import SwiftData

struct RootView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [ItemModel]
    @State private var showAddItem: Bool = false
    
    var body: some View {
        NavigationSplitView {
            VStack{
                Text("Stuff here")
            }
            .sheet(isPresented: $showAddItem, content: {
                NavigationStack {
                   AddItem()
                }
            })
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
        } detail: {
            ItemsListView()
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                HStack(spacing: 10) {
                    Button("", systemImage: "plus") {                        showAddItem = true
                    }
                }
            }
        }
    }
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}
