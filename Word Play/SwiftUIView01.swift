//
//  SwiftUIView01.swift
//  Word Play
//
//  Created by Student on 9/9/21.
//

import SwiftUI

struct SwiftUIView01: View {
    let adj1 : String
    let adj2 : String
    let bird : String
    let room : String
    let verb1 : String
    let verb2 : String
    let name : String
    let noun1 : String
    let liquid : String
    let verb3 : String
    let bodyPart : String
    let noun2 : String
    let verb4 : String
    let noun3 : String
    var body: some View {
        VStack {
            Text("Your Madlibs:")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding()
            Text("It was a \(adj1) Novemeber day. I woke up to the \(adj2) smell of \(bird) roasting in the \(room) downstairs. I \(verb1) down the stairs to see if I could help \(verb2) the dinner. My mom said \"See if \(name) needs a fresh \(noun1).\" So I carried a tray of glasses full of \(liquid) into the \(verb3) room. When I got there, I couldn't belive my \(bodyPart)! There were \(noun2) \(verb4) on the \(noun3)!")
                .font(.title2)
            Spacer()
        }
        
        
    }
}

struct SwiftUIView01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(adj1: "Adjective",
                      adj2: "Adjective",
                      bird: "Type of Bird",
                      room: "Room in House",
                      verb1: "Verb",
                      verb2: "Verb",
                      name: "Relative's Name",
                      noun1: "Noun",
                      liquid: "A Liquid",
                      verb3: "Verb",
                      bodyPart: "Part of Body",
                      noun2: "Noun",
                      verb4: "Verb",
                      noun3: "Noun")
    }
}
