//
//  NavigationBarItemViewAsso.swift
//  DetailMission
//
//  Created by Apprenant 11 on 14/05/2023.
//

import SwiftUI

struct NavigationBarItemViewAsso: View {
    var body: some View {
        TabView{
//ExemplePagePrincipaleView() à remplace par la page profil
            Picklerickk()
                .tabItem {
                    VStack {
                        Image(systemName: "paperplane.circle")
                        Text("Missions")
                    }
                }

//DetailMissionView() à remplace par la page profil
            PersonalProfilView()
                .tabItem{
                    VStack {
                        Image(systemName: "person.crop.circle")
                        Text("Profil")
                    }
                }
//DetailMissionView() à remplace par la page profil
            CreateMissionView()
//            Ajouter une mission()
                .tabItem {
                    VStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Nouvelle mission")
                    }
                }
//DetailMissionView() à remplace par la page profil
           MessageView()
//            ChatView()
                .tabItem {
                    VStack {
                        Image(systemName: "message.circle")
                        Text("Messages")
                    }
                }
//DetailMissionView() à remplace par la page profil
            ParametreView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear.circle")
                        Text("Réglage")
                    }
                }
        }
        
    }
}


struct NavigationBarItemViewAsso_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItemViewAsso()
    }
}
