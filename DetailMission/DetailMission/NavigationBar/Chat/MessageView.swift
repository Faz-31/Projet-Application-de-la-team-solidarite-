//
//  MessageView.swift
//  DetailMission
//
//  Created by Apprenant 11 on 09/05/2023.
//

import SwiftUI

struct MessageView: View {
    
    var body: some View {
    
        NavigationStack{
            
        VStack(alignment: .leading){
            Text("Messages")
                .font(.largeTitle)
                .bold()
                .padding(.leading)
            
            Divider()
            ForEach(personals){ personal in
                NavigationLink{
                    ChatView(person: personal)
                } label: {
                    Image(personal.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(personal.name)
                            .foregroundColor(.black)
                        
                        if let messageText = personal.sms.first?.utilisateur {
                            let maxLength = 35 // la longueur maximale souhaitée pour le message
                            let shortenedText = messageText.prefix(maxLength)
                            Text(String(format: "%@...", String(shortenedText)))
                                .foregroundColor(.gray)
                            Divider()
                                }

                            }

                        }
                    }
                }
                .padding(.leading)
            Spacer()
        }
    }
}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
