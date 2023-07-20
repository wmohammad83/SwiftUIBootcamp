//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 10/07/2023.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            
            contentLayer 
            
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Bananas", count: 4, color: .yellow)
        }
    }
    
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            
            Text("\(count)")
            Text(title)
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
