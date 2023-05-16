//
//  ExemplePagePrincipaleView.swift
//  DetailMission
//
//  Created by Apprenant 11 on 09/05/2023.
//

import SwiftUI

struct ExemplePagePrincipaleView: View {
//    @State var color = Color.white
    
    var body: some View {
        NavigationStack {
        Text("Ici sera présent la page principale contenant toutes les missions proposées par le site")
                .bold()
     
            VStack {
//                NavigationLink(destination: DetailView()) {
                NavigationLink {
                    ListMissionVAsso()
                } label: {
                    Text("Aller à la vue détaillée sur une mission ")
                }
                }
            //.navigationBarTitle("Retour")
            }
           
            
        }
    }
    
    struct ExemplePagePrincipaleView_Previews: PreviewProvider {
        static var previews: some View {
            ExemplePagePrincipaleView()
        }
    }
