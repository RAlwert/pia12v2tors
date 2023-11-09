//
//  CountingView.swift
//  pia12v2tors
//
//  Created by Robin Alwert on 2023-11-09.
//

import SwiftUI

struct CountingView: View {
    @Binding var siffran : Int
    var body: some View {
        VStack{
            Text (String(siffran))
            Button(action:{ siffran = siffran + 1}, label: {
                Text("Plus")
            })
        }
        .frame(width: 100.0, height: 100.0)
        .background(Color.yellow)
    }
}

#Preview {
    CountingView(siffran: .constant(99))
}
