//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 09/07/2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                     RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea()
        )
        
        
//        ZStack {
//
////            Background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//
////            Forgraound
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//                Spacer()
//
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .backg round(Color.red)
//
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
