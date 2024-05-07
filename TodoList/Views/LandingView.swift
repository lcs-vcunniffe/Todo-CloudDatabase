//
//  LandingView.swift
//  TodoList
//
//  Created by Russell Gordon on 2024-04-08.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemDescription = ""
    
    // The search text
    @State var searchText = ""
    
    // The view model
    @State var viewmodel = TodoListViewModel()
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            
            VStack {
                
                List($viewmodel.todos) { $todo in
                    
                    ItemView(currentItem: $todo)
                        // Delete item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    viewmodel.delete(todo)
                                }
                            )
                        }
                    
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("ADD") {
                        // Add the new to-do item
                        viewmodel.createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                }
                .padding(20)
                
            }
            .navigationTitle("To do")
            
        }
    }
}

#Preview {
    LandingView()
}
