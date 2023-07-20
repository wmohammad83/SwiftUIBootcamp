//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 03/07/2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is on multiple lines and we will align the text on the leading edge.")

             
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                        radius: 10,
                        x: 0,
                        y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
