//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 29/06/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".lowercased())
//            .fontWeight(.heavy)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red )
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: Color.red)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced ))
//            .baselineOffset(10)
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red )
            .frame(width: 200, height: 100,alignment: .leading)
            .minimumScaleFactor(0.1 )
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
