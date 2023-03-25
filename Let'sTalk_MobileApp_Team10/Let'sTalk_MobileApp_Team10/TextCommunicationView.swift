//
//  TextCommunicationView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/24/23.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isMe: Bool
    let timestamp: Date
}

struct TextCommunicationView: View {
    @State private var messages: [Message] = [
            Message(text: "Hi there!", isMe: false, timestamp: Date()),
            Message(text: "Hello!", isMe: true, timestamp: Date()),
            Message(text: "How are you?", isMe: false, timestamp: Date()),
        ]
    @State private var newMessageText = ""
    let keypadRows = [
        ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"],
                ["A", "S", "D", "F", "G", "H", "J", "K", "L"],
                ["Z", "X", "C", "V", "B", "N", "M"],
                ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"],
        ]
    
    @State private var showAudioCall = false
    
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
                    messages.append(Message(text: newMessageText, isMe: true, timestamp: Date()))
                    newMessageText = ""
                }
                .padding(.trailing)
            }
            .background(Color("Twilight"))
            .padding(.bottom)
            .padding(.horizontal)
            KeypadView(rows: keypadRows, text: $newMessageText)
                .frame(maxWidth:90, maxHeight: 300)
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
            VStack(alignment: message.isMe ? .trailing : .leading, spacing: 2) {
                            Text(message.text)
                                .padding(10)
                                .foregroundColor(.white)
                                .background(message.isMe ? Color.blue : Color.gray)
                                .cornerRadius(10)
                            Text(message.timestamp, style: .time)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
            if !message.isMe {
                Spacer()
            }
        }
        .background(Color("Twilight"))
    }
}

struct KeypadView: View {
    let rows: [[String]]
    @Binding var text: String
    
    var body: some View {
        VStack {
            ForEach(rows, id: \.self) { row in
                HStack(spacing: 1) {
                    ForEach(row, id: \.self) { key in
                        Button(action: {
                            if key == "Clear" {
                                self.text = ""
                            } else {
                                self.text += key
                            }
                        }, label: {
                            Text(key)
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 30, height: 40)
                                .background(Color.blue)
                                .cornerRadius(10)
                        })
                    }
                }
                Spacer()
            }
        }
        .background(Color("Twilight"))
        .padding(.bottom)
        .padding(.horizontal)
    }
}

struct TextCommunicationView_Previews: PreviewProvider {
    static var previews: some View {
        TextCommunicationView()
    }
}
