//
//  ParametreView.swift
//  DetailMission
//
//  Created by Apprenant 11 on 09/05/2023.
//

import SwiftUI

struct ParametreView: View {
    var body: some View {
        NavigationStack{
            VStack {
                   List{
                       NavigationLink {
                           BackgroundColorPrincipaleView()
                       } label: {
                           Text("Changer la couleur")
                       }
                   }
               }
        }
   
    }
}

struct ParametreView_Previews: PreviewProvider {
    static var previews: some View {
        ParametreView()
    }
}
