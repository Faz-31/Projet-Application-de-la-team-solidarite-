//
//  PersonalProfilView.swift
//  DetailMission
//
//  Created by Apprenant 11 on 09/05/2023.
//

import SwiftUI

struct PersonalProfilView: View {
    var body: some View {
        

//        Liste élément aléatoire du tableau "personnals"
        let randomPersonal = personals.randomElement()!
        
        VStack{
//            Exemple image profil élément aléatoire du tableau "personnals "
            Image(randomPersonal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 30)
                )
            Text(randomPersonal.name + " " + randomPersonal.lastName)
                .font(.title)
                .bold()
            
            List {
                HStack {
                    Text("Prénom")
                    Spacer()
                    Text(randomPersonal.name)
                }
                HStack {
                    Text("Nom")
                    Spacer()
                    Text(randomPersonal.lastName)
                }
                HStack {
                    Text("Pays de naissance")
                    Spacer()
                    Text(randomPersonal.country)
                }
            }
            
        }
    }
}

struct PersonalProfilView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalProfilView()

    }
}
