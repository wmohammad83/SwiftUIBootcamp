//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 01/07/2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150, alignment: .center)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading )
            .background(Color.pink)
            .frame(height: 400, alignment: .center)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
