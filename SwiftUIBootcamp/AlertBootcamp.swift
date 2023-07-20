//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 12/07/2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case Success
        case Error
    }
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack{
                Button("Button 1") {
                    alertType = .Error
//                    alertTitle = "Success uploading video"
//                    alertMessage = "Video was uploaded successfully 😃"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .Success
//                    alertTitle = "Error Uploading Video 😭"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
    //            Alert(title: Text("There was an error!!!!!"))
                getAlert()
            
        }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .Error:
            return Alert(title: Text("There was an error"))
        case .Success:
            return Alert(title: Text("This was a success"), message: Text("No errors found"), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Error "))
        }
        
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("This is where th error is"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
