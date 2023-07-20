//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 01/07/2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .frame(width: 110, height: 110)
        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 50)
//                    ,alignment: .topLeading
//                )
//            .background(
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150),
//            alignment: .bottomTrailing
//            )
    //        )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
             Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red , Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 100, height: 100)
                .shadow(color: Color.black, radius: 10, x: 0.0, y: 5)
                .overlay(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Text("5")
                                .font(.headline)
                                .foregroundColor(.white)
                        )
                        .shadow(color: Color.black, radius: 10, x: 5, y: 5)
                    , alignment: .bottomTrailing)
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
