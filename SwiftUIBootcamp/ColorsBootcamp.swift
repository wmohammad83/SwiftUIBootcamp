//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 30/06/2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(red: 0.3, green: 0.4, blue: 0.6)
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3)  , radius: 10, x: 10, y: 10)
        
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
