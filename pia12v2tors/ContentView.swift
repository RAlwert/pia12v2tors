//
//  ContentView.swift
//  pia12v2tors
//
//  Created by Robin Alwert on 2023-11-09.
//

import SwiftUI


struct ContentView: View {
    @State var people = [Person]()
    
    @State var addName=""
    @State var addLastName=""
    @State var showcounting = true

    @State var mynumber = 0

    var body: some View {
        NavigationStack{
            VStack {
     /*
                NavigationLink(
                    destination: PersonDetailIView(theperson: <#Person#>),
                    label: {
                    Text("Gå till person")
                    })
                */
                HStack{
                    
                    TextField("Namn...", text: $addName)
                    TextField("EfterNamn...", text: $addLastName)
                    Button(action: {
                        let tempperson =
                        Person(firstName: addName, lastName: addLastName)
                        people.append(tempperson )
                    }, label: {
                        Text("Lägg till")
                    })
                }
                
                List{
                    ForEach(people){
                        person in
                        
                        
                        NavigationLink(destination: PersonDetailIView(theperson: person),label: {
                            PersonRowView(person: person)
                        })
                        .listRowSeparator(.hidden)

                    }
                    .listRowBackground(Color.red)
                }
                .listStyle(.plain)
                Button(action: {
                    if showcounting == true {
                        showcounting = false
                    }else{
                        showcounting = true
                        
                    }
                }, label: {
                    Text("Visa/dölj räknare")
                })
                if showcounting{
                    CountingView (siffran:$mynumber)
                }
            }
            .padding()
            .navigationTitle("Personer")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Do stuff A"){print ("Stuff A")}
                Button("Do stuff B"){print ("Stuff B")}
            }

        }
        .onAppear(){
            /*
            print ("Hej")
            var someone = Person(firstName: "Xerxes", lastName: "Ninjasson")
            print (someone.firstName)
             */
        }
    }
}

#Preview {
    ContentView()
} 
