//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 10/07/2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectagle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
             
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            } else {
                Text("Loaded")
            }
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("Rectangle Button: \(showRectagle.description)") {
//                showRectagle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectagle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showCircle && !showRectagle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
            
            
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
