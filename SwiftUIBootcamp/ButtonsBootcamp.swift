//
//  ButtonsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 09/07/2023.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack (spacing: 20) {
            Text(title)
            Button("Press Me") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "Button #3 was clicked"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }
            
            Button {
                self.title = "Button #4 was pressed"
            } label: {
                Text("Finished".uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }



        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
