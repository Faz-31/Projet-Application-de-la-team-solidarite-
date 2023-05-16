//
//  NavigationBarItemView.swift
//  DetailMission
//
//  Created by Apprenant 11 on 09/05/2023.
//

import SwiftUI

struct NavigationBarItemView: View {
    var body: some View {
        
                TabView{
                    //ExemplePagePrincipaleView() à remplace par la page profil
                    Picklerickk()
                        .tabItem {
                            VStack {
                                Image(systemName: "paperplane.circle")
                                Text("Mission")
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

struct NavigationBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItemView()
    }
}

