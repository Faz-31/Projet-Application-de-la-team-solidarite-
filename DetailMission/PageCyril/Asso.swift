//
//  AssoStruct.swift
//  ProjetS
//
//  Created by Appprenant 06 on 04/05/2023.
//

import Foundation

struct Asso : Identifiable {
    var id = UUID()
    var name: String
    var img: String
    var txt: String
}

var associations = [
    Asso(name: "Action Contre La Faim", img: "ACLF", txt: "Action contre la faim est une organisation à but non lucratif créée en 1979 par un groupe d'intellectuels comprenant notamment Alfred Kastler, Bernard-Henri Lévy, Jacques Attali, Françoise Giroud, Marek Halter et Jean-Christophe Victor." ),
    Asso(name: "Programme Alimentaire Mondial", img: "PAM", txt: "Le Programme alimentaire mondial (PAM ; en anglais : World Food Programme, WFP) est l'organisme d'aide alimentaire de l'ONU et de la FAO. Le PAM est la plus grande agence humanitaire qui lutte contre la faim dans le monde en distribuant une assistance alimentaire dans les situations d'urgence et en travaillant avec les communautés pour améliorer leur état nutritionnel et renforcer leur résilience. Chaque année, le PAM apporte une assistance à 80 millions de personnes dans près de 80 pays1. "),
    Asso(name: "Care International", img: "care", txt: "CARE International est une association humanitaire fondée en 1945 aux États-Unis, à la fin de la Seconde Guerre mondiale, avant le Plan Marshall (1947). Il s'agit aujourd'hui d'un réseau international, l'une des plus importantes ONG : en termes de budget, 700 millions d'euros, plus encore en termes de bénéficiaires - CARE agit dans près de 70 pays, 66 millions de personnes sont concernées. CARE emploie 16 000 personnes. "),
    Asso(name: "Oxfam International", img: "Oxfam_International", txt: "Oxfam International (Oxford Committee for Famine Relief) est une confédération d'une vingtaine d'organisations caritatives indépendantes à travers le monde. Celles-ci travaillent ensemble et en collaboration avec des partenaires locaux répartis dans 66 pays dans le monde. "),
    Asso(name: "Save The Children", img: "Save-the-children-logo",txt: "Save the Children est une ONG qui défend les droits de l'enfant à travers le monde1. Cette organisation se présente comme « le plus grand mouvement mondial indépendant œuvrant pour les enfants ». "),
]

