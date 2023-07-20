//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 15/07/2023.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = ["Apples", "oranges", "Bananas"]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // Working - things to do 1) fix title
    
    /*
     Working copy
     things to do
     1) Fix title
     2) Fix alert
     */
    var body: some View {
        NavigationView{ // Start Nav
            ZStack {
                // background
                Color.red
                    .ignoresSafeArea()
                
                // forground
                ScrollView{ // Start Scroll
                    Text("Hello")
                    ForEach(data, id: \.self) { name in
                        Text(name)
                            .font(.headline)
                    }
                } // End Scroll
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("Alert", action: {
                    showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is an alert")
            }
            }
        } // End Nav
    }
    
    // MARK: FUNCTIONS
    
    /// this is some text to explain summary the purpose of this function
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
