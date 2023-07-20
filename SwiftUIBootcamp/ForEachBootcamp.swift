//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 04/07/2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey Everyone"]
    
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
