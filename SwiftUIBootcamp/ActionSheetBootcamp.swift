//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 13/07/2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                 Circle()
                    .frame(width: 30, height: 40)
                Text("@Username")
                Spacer()
                Button {
                    actionSheetOptions = .isMyPost
                    
                    
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)

                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
//            Add code to share
        }
        let reportButton: ActionSheet.Button =  .destructive(Text("Report")) {
//            Add code to report this post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
//            Delete post code
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        switch actionSheetOptions {
        case .isOtherPost:
            return ActionSheet(title:
                                Text("What would you like todo"),
                                message: nil,
                                buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(
                title: Text("What would you like todo"),
                message: nil,
                buttons: [shareButton, deleteButton, reportButton, cancelButton])
        }
        
        
//        return ActionSheet(title: Text("This is the title"))
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is the optional message"),
//            buttons: [button1, button2, button3])
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
