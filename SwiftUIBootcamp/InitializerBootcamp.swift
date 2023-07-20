//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 04/07/2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
//        self.title = title
//
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
        
        if fruit == Fruit.apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12 ){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 100, fruit: .apple)
            InitializerBootcamp(count: 44, fruit: .orange)
        }
    }
}
