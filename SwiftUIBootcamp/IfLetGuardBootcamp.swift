//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 25/07/2023.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var displayText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe codeing!")
                Text(displayText)
                    .font(.title)
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                
            }
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
