//
//  BackgroundColor.swift
//  DetailMission
//
//  Created by Apprenant 11 on 10/05/2023.
//

import SwiftUI

struct BackgroundColorPrincipaleView: View {
    @State private var pourcentageRed: Double = 255
    @State private var pourcentageGreen: Double = 218
    @State private var pourcentageBlue: Double = 185
 
    var body: some View {
        ZStack{
            Color(red: pourcentageRed/255, green: pourcentageGreen/255, blue: pourcentageBlue/255)
                .ignoresSafeArea()
    
                VStack{
                    Spacer(minLength: 25)
                    Text("Personaliser la couleur de fond d'écran")
                        .font(.headline)
                        .fontWeight(.heavy)
                    List{
                        Text("Red: ")
                        BackgroundColorView(pourcentage: $pourcentageRed)
                        Text("Green: ")
                        BackgroundColorView(pourcentage: $pourcentageGreen)
                        Text("Blue: ")
                        BackgroundColorView(pourcentage: $pourcentageBlue)
                    }
                    Spacer(minLength: 170)
                }
        }
    }
}

struct BackgroundColorPrincipaleView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColorPrincipaleView()
    }
}
