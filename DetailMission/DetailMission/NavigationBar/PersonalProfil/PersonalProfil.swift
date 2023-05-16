//
//  PersonalProfil.swift
//  DetailMission
//
//  Created by Apprenant 11 on 09/05/2023.
//

import Foundation

struct MessageText {
    var utilisateur: String
    var ami: String
    var utilisateurReponse: String
    var amiReponse: String
}

struct Personal: Identifiable {
    var id = UUID()
    var name: String
    var lastName: String
    var image: String
    var country: String
    var sms: [MessageText]
}

let message1 = MessageText(utilisateur: "Hey Leo, alors ta mission sur Madagascar", ami: "C'était géniale à construit une école ! C'était exceptionnel ! Je suis tropcontent. Et toi ?", utilisateurReponse: "J'ai participé à la construction de puits en Afrique!", amiReponse: "Il faudra que tu me racontes tout ça en détail la prochaine fois !")
let message2 = MessageText(utilisateur: "Salut Emma, comment s'est passée ta mission humanitaire?", ami: "Salut! C'était difficile mais enrichissant, j'ai pu aider beaucoup de gens dans le besoin.", utilisateurReponse: "C'est super! Tu es vraiment une personne admirable.", amiReponse: "Merci, c'est gentil de ta part.")
let message3 = MessageText(utilisateur: "Bonjour Léa, comment se passe ton projet humanitaire en Afrique?", ami: "Bonjour! C'est une expérience incroyable, j'apprends beaucoup de choses et je me sens utile.", utilisateurReponse: "C'est fantastique, tu es une source d'inspiration pour moi.", amiReponse: "Merci, ça me touche beaucoup.")
let message4 = MessageText(utilisateur: "Salut John, j'ai entendu dire que tu travailles pour une ONG. Comment ça se passe?", ami: "Salut! C'est un travail exigeant mais gratifiant, je suis heureux de pouvoir aider les gens dans le besoin.", utilisateurReponse: "C'est vraiment impressionnant, tu es un exemple pour moi.", amiReponse: "Merci, ça me touche beaucoup.")
let message5 = MessageText(utilisateur: "Salut Maria, comment se passe ta mission humanitaire en Amérique du Sud?", ami: "Salut! C'est une expérience incroyable, je suis heureuse de pouvoir aider les gens et découvrir de nouvelles cultures.", utilisateurReponse: "C'est super, tu es vraiment courageuse.", amiReponse: "Merci, ça me touche beaucoup.")
let message6 = MessageText(utilisateur: "Salut David, j'ai entendu dire que tu travailles pour une organisation humanitaire en Asie. Comment ça se passe?", ami: "Salut! C'est un travail difficile mais important, je suis fier de pouvoir contribuer à améliorer la vie des gens dans cette région.", utilisateurReponse: "C'est admirable, tu es vraiment un héros.", amiReponse: "Merci, c'est gentil de ta part.")

let personals = [
    Personal(name: "Leo", lastName: "Mario", image: "leo", country: "USA", sms: [message1]),
    Personal(name: "Emma", lastName: "Dupont", image: "emma", country: "France", sms: [message2]),
    Personal(name: "Léa", lastName: "Martin", image: "lea", country: "Canada", sms: [message3]),
    Personal(name: "John", lastName: "Smith", image: "john", country: "USA", sms: [message4]),
    Personal(name: "Maria", lastName: "Garcia", image: "maria", country: "Espagne", sms: [message5]),
    Personal(name: "David", lastName: "Lee", image: "david", country: "Chine", sms: [message6])
]

