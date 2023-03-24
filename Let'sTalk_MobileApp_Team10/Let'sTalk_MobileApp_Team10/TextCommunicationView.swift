//
//  TextCommunicationView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/23/23.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isMe: Bool
}

struct TextCommunicationView: View {
    @State private var messages: [Message] = [
            Message(text: "Hi there!", isMe: false),
            Message(text: "Hello!", isMe: true),
            Message(text: "How are you?", isMe: false),
        ]
    @State private var newMessageText = ""

    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(messages) { message in
                        MessageRow(message: message)
                    }
                }
            }
            HStack {
                TextField("Type a message", text: $newMessageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                Button("Send") {
                    messages.append(Message(text: newMessageText, isMe: true))
                    newMessageText = ""
                }
                .padding(.trailing)
            }
            .background(Color("Twilight"))
            .padding(.bottom)
            .padding(.horizontal)

        }
        .background(Color("Twilight"))
        .navigationTitle("Messages")
    
    }
}

struct MessageRow: View {
    let message: Message
    
    var body: some View {
        HStack {
            if message.isMe {
                Spacer()
            }
            Text(message.text)
                .padding(10)
                .foregroundColor(.white)
                .background(message.isMe ? Color.blue : Color.gray)
                .cornerRadius(10)
            if !message.isMe {
                Spacer()
            }
        }
        .background(Color("Twilight"))
    }
}



struct TextCommunicationView_Previews: PreviewProvider {
    static var previews: some View {
        TextCommunicationView()
    }
}
