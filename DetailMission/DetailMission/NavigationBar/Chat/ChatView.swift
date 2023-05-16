import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isFromCurrentUser: Bool
}

struct ChatView: View {
    var person: Personal
    @State var messages: [Message] = [
        Message(text: "Hey Leo, Alors ta mission sur Madagascar", isFromCurrentUser: false),
        Message(text: "C'était géniale à construit une école ! C'était exceptionnel ! Je suis tropcontent. Et toi ", isFromCurrentUser: true),
        Message(text: "J'ai participé à la construction de puits en Afrique!", isFromCurrentUser: false)
    ]

    @State var newMessageText: String = ""

    var body: some View {


        ZStack {
            VStack {
                Image(person.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 30))
                List(messages) { message in
                    Text(message.text)
                        .padding(8)
                        .foregroundColor(.white)
                        .background(message.isFromCurrentUser ? Color.blue : Color.gray)
                        .cornerRadius(8)
                        .frame(maxWidth: .infinity, alignment: message.isFromCurrentUser ? .trailing : .leading)
                }
                .padding(.top, 8)
                .padding(.horizontal, 16)

                HStack {
                    TextField("Nouveau message", text: $newMessageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(10)
                    Button(action: {
                        self.sendMessage()
                    }) {
                        Text("Envoyer")
                    }
                }
                .padding(8)
            }
            .navigationBarTitle("Chat")
        }
    }

    func sendMessage() {
        let newMessage = Message(text: newMessageText, isFromCurrentUser: true)
        messages.append(newMessage)
        newMessageText = ""
    }
}


struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: (personals[0]))
    }
}
