//
//  drag.swift
//  DolceKeto
//
//  Created by AS on 9/15/23.
//

import SwiftUI
import UniformTypeIdentifiers

struct drag: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text("DropProposal Example")
                .font(.largeTitle)
                .padding()
            
            Text("Drop Text Here:")
            
            Text(text)
                .padding()
                .background(Color.yellow)
                .onDrop(of: [UTType.text], isTargeted: $text?, perform: { providers, isTargeted in
                        // Create a custom DropProposal
                        let dropProposal = DropProposal(operation: .copy)
                        
                        // Check if the drop is targeted to this view
                        if isTargeted {
                            // Handle the drop operation based on the custom DropProposal
                            if let itemProvider = providers.first {
                                itemProvider.loadObject(ofClass: String.self) { item, error in
                                    if let droppedText = item as? String {
                                        // Update the text with the dropped content
                                        DispatchQueue.main.async {
                                            self.text = droppedText
                                        }
                                    }
                                }
                                return dropProposal
                            }
                        }
                        
                        return nil
                })
                .frame(width: 200, height: 100)
                .border(Color.gray)
        }
    }
}

struct drag_Previews: PreviewProvider {
    static var previews: some View {
        drag()
    }
}
