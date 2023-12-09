//
//  ContentView.swift
//  EmojiLover
//
//  Created by Rahim on 09/12/2023.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🥹, 🥳, 💪🏻, 👀
}

struct ContentView: View {
    @State var selection: Emoji = .🥹
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self) {emoji in Text(emoji.rawValue)}
                }.pickerStyle(.segmented)
            }
            .navigationTitle("Emoji App")
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
