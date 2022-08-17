//
//  ContentView.swift
//  mood
//
//  Created by Sumaya Buzlouf on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var feeling = ""
    
    var body: some View {
        
        VStack {
            
            Text("How ya feeling ?")
                .font(.system(size: 35))
                .padding()
            
            Text("\(feeling)")
                .padding()
                .font(.system(size: 180))
                .frame(width: 300, height: 300)
            
            
            ScrollView(.horizontal){
                HStack {
                    mood(emoji: "😂", myFeeling: $feeling)
                    mood(emoji: "😆", myFeeling: $feeling)
                    mood(emoji: "🫠", myFeeling: $feeling)
                    mood(emoji: "🙂", myFeeling: $feeling)
                    mood(emoji: "🥰", myFeeling: $feeling)
                    mood(emoji: "😎", myFeeling: $feeling)
                    mood(emoji: "😒", myFeeling: $feeling)
                    mood(emoji: "😖", myFeeling: $feeling)
                    mood(emoji: "😤", myFeeling: $feeling)
                    mood(emoji: "🤧", myFeeling: $feeling)
                }.padding()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct mood: View {
    
    @State var emoji: String
    @Binding var myFeeling: String
    
    var body: some View {
        Text("\(emoji)")
            .font(.system(size: 60))
            .padding()
            .background(.yellow.opacity(0.3))
            .cornerRadius(80)
            .onTapGesture {
                myFeeling = emoji
            }
    }
}
