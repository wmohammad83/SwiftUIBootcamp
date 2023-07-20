//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 13/07/2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select a colour",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
