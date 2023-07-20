//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 10/07/2023.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
       contentLayer
    }
    
    var contentLayer: some View {
        ZStack {
//            Background
            backgroundColor
                .ignoresSafeArea()
            
//            Content
            VStack{
                Text("Title")
                    .font(.largeTitle)
                
                Button {
                    buttonPressed()
                } label: {
                    Text("PRESS ME")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }

            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
