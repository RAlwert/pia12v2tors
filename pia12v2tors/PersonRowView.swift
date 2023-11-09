//
//  PersonRowView.swift
//  pia12v2tors
//
//  Created by Robin Alwert on 2023-11-09.
//

import SwiftUI

struct PersonRowView: View {
    @State var person : Person
    var body: some View {
        HStack{
            Text("NAMN: ")
            Spacer()
            Text(person.firstName)
            Text(person.lastName)
        }
        .frame(height: 80.0)
        .background(Color.yellow)
    }
}

#Preview {
    PersonRowView(person: Person(firstName: "test", lastName: "testsson"))
}
