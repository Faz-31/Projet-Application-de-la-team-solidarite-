//
//  Missions.swift
//  DetailMission
//
//  Created by Apprenant 11 on 11/05/2023.
//

import Foundation
struct Missions2 : Identifiable {
    var id = UUID()
    var name: String
    var img: String
    var count: String
    var txt: String
}

var tableauMissions = [
    Missions2(name: "Entraide Alimentaire", img: "Aide Alimentaire 2", count: "100", txt: "Notre mission est de répondre aux besoins les plus urgents des populations affectées par la famine, en fournissant une aide alimentaire essentielle pour assurer leur survie et leur bien-être. Nous croyons que chaque personne a le droit fondamental à la nourriture et à l'eau potable, et nous sommes déterminés à aider à combler ce besoin vital."),
    Missions2(name: "Sème l'Espoir", img: "Sème L'Espoir", count: "70", txt: "Notre mission est de soutenir les populations vulnérables dans le développement de leur autonomie et leur sécurité alimentaire à travers des programmes durables et innovants."),
    Missions2(name: "Culture Végétale", img: "Culture", count: "230", txt: "Notre mission est de soutenir les petits agriculteurs dans la production de cultures vivrières, en favorisant une agriculture durable et respectueuse de l'environnement."),
    Missions2(name: "Accès À L'Eau Potable", img: "Eau potable", count: "45", txt: "Notre mission est de faciliter l'accès à l'eau potable pour les populations défavorisées, en mettant en place des solutions durables et adaptées à leur environnement."),
    Missions2(name: "Source De Nourriture", img: "Aide Alimentaire", count: "90", txt: "Notre mission est de fournir une aide alimentaire d'urgence aux populations les plus vulnérables, en réponse aux crises humanitaires et aux situations d'urgence.")
]

