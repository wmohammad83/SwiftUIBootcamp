//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 13/07/2023.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [.foregroundColor : UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(
            selection: $selection,
            label: Text("Label"),
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            })
        .pickerStyle(SegmentedPickerStyle())
//        .background(Color.red)
        
//        Picker(
//            selection: $selection,
//            label: Text("Label"),
//            content: {
//                Text("1").tag("1")
//                Text("2").tag("2")
//            })
//        .pickerStyle(MenuPickerStyle())
        
//        VStack {
//
//            HStack{
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) {  number in
//                        Text("\(number)").tag("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                    }
//            })
//            .pickerStyle(.wheel)
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
