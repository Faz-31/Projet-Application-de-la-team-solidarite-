//
//  MissionStruct.swift
//  ProjetS
//
//  Created by Appprenant 06 on 04/05/2023.
//

import Foundation

struct Mission : Identifiable {
    var id = UUID()
    var name: String
    var img: String
    var count: String
    var txt: String
}

var missions = [
    Mission(name: "Entraide Alimentaire", img: "Aide Alimentaire 2", count: "100", txt: "Notre mission est de répondre aux besoins les plus urgents des populations affectées par la famine, en fournissant une aide alimentaire essentielle pour assurer leur survie et leur bien-être. Nous croyons que chaque personne a le droit fondamental à la nourriture et à l'eau potable, et nous sommes déterminés à aider à combler ce besoin vital."),
    Mission(name: "Sème L'Éspoir", img: "Sème L'Espoir", count: "70", txt: "Notre mission est de répondre aux besoins les plus urgents des populations affectées par la famine, en fournissant une aide alimentaire essentielle pour assurer leur survie et leur bien-être. Nous croyons que chaque personne a le droit fondamental à la nourriture et à l'eau potable, et nous sommes déterminés à aider à combler ce besoin vital."),
    Mission(name: "Culture Végétal", img: "Culture", count: "230", txt: "Notre mission est de répondre aux besoins les plus urgents des populations affectées par la famine, en fournissant une aide alimentaire essentielle pour assurer leur survie et leur bien-être. Nous croyons que chaque personne a le droit fondamental à la nourriture et à l'eau potable, et nous sommes déterminés à aider à combler ce besoin vital."),
    Mission(name: "Accès À L'Eau Potable", img: "Eau potable", count: "45",  txt: "Notre mission est de répondre aux besoins les plus urgents des populations affectées par la famine, en fournissant une aide alimentaire essentielle pour assurer leur survie et leur bien-être. Nous croyons que chaque personne a le droit fondamental à la nourriture et à l'eau potable, et nous sommes déterminés à aider à combler ce besoin vital."),
    Mission(name: "Source De Nourriture", img: "Aide Alimentaire", count: "90", txt: "Notre mission est de répondre aux besoins les plus urgents des populations affectées par la famine, en fournissant une aide alimentaire essentielle pour assurer leur survie et leur bien-être. Nous croyons que chaque personne a le droit fondamental à la nourriture et à l'eau potable, et nous sommes déterminés à aider à combler ce besoin vital."),

]
