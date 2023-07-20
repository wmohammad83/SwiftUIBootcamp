//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 12/07/2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    @State var veggies: [String] = ["carrot", "tomato", "potato "]
    
    var body: some View {
        NavigationView  {
            List{
                Section(
                    header:
                        
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                
                ) {
                        ForEach(fruits, id:  \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.pink)
                    }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veg in
                        Text(veg.capitalized)
                    }
                    
                }
            }
//            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading:  EditButton(),
                trailing: addButton)
        }
        .accentColor(.red )
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indicies: IndexSet, newOffset:  Int){
        fruits.move(fromOffsets: indicies, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
