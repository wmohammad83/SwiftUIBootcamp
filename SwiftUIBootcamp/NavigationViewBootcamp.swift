//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 11/07/2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello World",
                               destination: myOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    
                
                ,
                trailing: NavigationLink(
                    destination: myOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    }))
            .accentColor(.red)
        }
    }
}

struct myOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green Screen")
//                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here ", destination: Text("3rd Screen"))
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
