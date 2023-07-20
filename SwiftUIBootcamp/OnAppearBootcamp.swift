//
//  OnAppearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 17/07/2023.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start Text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text"
                }
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
