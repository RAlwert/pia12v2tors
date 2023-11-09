//
//  PersonDetailIView.swift
//  pia12v2tors
//
//  Created by Robin Alwert on 2023-11-09.
//

import SwiftUI

struct PersonDetailIView: View {
    @Environment(\.dismiss) var dismiss

    @State var theperson : Person
    
    @State var pName = ""
    
    
    var body: some View {
        VStack {
            Text("LÄSA MER OM " + theperson.firstName)

            Text (theperson.prettyName())
            
            TextField("",text : $pName)
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Spara")
            })
            NavigationLink(destination: ThirdView(), label: {
                Text ("Gå tredje")
            })
        }
        .onAppear(){
            pName=theperson.firstName
          
        }
    }
}

#Preview {
    PersonDetailIView(theperson: Person(firstName: "ABC", lastName: "XYZ"))
}
