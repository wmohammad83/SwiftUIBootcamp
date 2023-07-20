//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 13/07/2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                 TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
                    .colorMultiply(Color.blue)
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Text(savedText)
                
                Spacer()

            }
            .padding()
//            .background(Color.green)
            .navigationTitle("Text Editor Bootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
