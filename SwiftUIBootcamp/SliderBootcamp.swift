//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 14/07/2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.2f", sliderValue)
            )
            .foregroundColor(color)
//            Text("\(sliderValue)")
            
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
            Slider(value:  $sliderValue, in:  1...5, step: 0.25)
           
                .accentColor(.red)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
