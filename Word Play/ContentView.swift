//
//  ContentView.swift
//  Word Play
//
//  Created by Student on 9/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var adj1 = ""
    @State private var adj2 = ""
    @State private var bird = ""
    @State private var room = ""
    @State private var verb1 = ""
    @State private var verb2 = ""
    @State private var name = ""
    @State private var noun1 = ""
    @State private var liquid = ""
    @State private var verb3 = ""
    @State private var bodyPart = ""
    @State private var noun2 = ""
    @State private var verb4 = ""
    @State private var noun3 = ""
    var body: some View {
        NavigationView{
            VStack {
                Group {
                    CustomText(text: "Enter in Words")
                    HStack {
                        CustomTextField(placeholder: "Adjective", variable: $adj1, frameWidth: 150)
                        CustomTextField(placeholder: "Adjective", variable: $adj2, frameWidth: 150)
                    }
                    HStack{
                        CustomTextField(placeholder: "Type of Bird", variable: $bird, frameWidth: 150)
                        CustomTextField(placeholder: "Room in House", variable: $room, frameWidth: 150)
                    }
                    HStack{
                        CustomTextField(placeholder: "Verb (Past Tense)", variable: $verb1, frameWidth: 150)
                        CustomTextField(placeholder: "Verb", variable: $verb2, frameWidth: 150)
                    }
                    HStack{
                        CustomTextField(placeholder: "Relative's Name", variable: $name, frameWidth: 150)
                        CustomTextField(placeholder: "Noun", variable: $noun1, frameWidth: 150)
                    }
                    
                }
                Group{
                    HStack {
                        CustomTextField(placeholder: "A Liquid", variable: $liquid, frameWidth: 150)
                        CustomTextField(placeholder: "Verb (ing)", variable: $verb3, frameWidth: 150)
                    }
                    CustomTextField(placeholder: "Part of Body (Plural)", variable: $bodyPart, frameWidth: 250)
                    CustomTextField(placeholder: "Noun (Plural)", variable: $noun2, frameWidth: 250)
                    HStack{
                        CustomTextField(placeholder: "Verb (ing)", variable: $verb4, frameWidth: 150)
                        CustomTextField(placeholder: "Noun", variable: $noun3, frameWidth: 150)
                    }
                    NavigationLink("Submit Answer", destination: SwiftUIView01 (adj1: adj1, adj2: adj2, bird: bird, room: room, verb1: verb1, verb2: verb2, name: name, noun1: noun1, liquid: liquid, verb3: verb3, bodyPart: bodyPart, noun2: noun2, verb4: verb4, noun3: noun3))
                        .padding()
                }
            }
            .navigationBarTitle("MadLibs", displayMode: .inline)
        }
    }
}
struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    let frameWidth : CGFloat
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: frameWidth, height: 30, alignment: .center)
            .font(.body)
    }
}
struct CustomText: View {
    let text : String
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
