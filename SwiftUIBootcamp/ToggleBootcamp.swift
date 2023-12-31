//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 13/07/2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                    .foregroundColor(toggleIsOn ? Color.pink : Color.black)
                Text(toggleIsOn ? "Online" : "Offline")
                    .foregroundColor(toggleIsOn ? Color.pink : Color.black)
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.pink))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
