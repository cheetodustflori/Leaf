//
//  create account.swift
//  practice 2
//
//  Created by Quynh Tram on 11/4/23.
//

import SwiftUI

struct createAccountView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            headerView(title: "create account", subtitle: "subtitle")
            
            Form {
                TextField("full name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("email address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                LFButton(title: "create account") {
                    //attempt registration
                }
            }
            
                    
            
        }
        
        .offset(y: -50)
        
        Spacer()
    }
}

struct createAccount_Previews: PreviewProvider {
    static var previews: some View {
        createAccountView()
    }
}
