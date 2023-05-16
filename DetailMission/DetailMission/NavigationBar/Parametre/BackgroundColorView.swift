//
//  BackgroundColorView.swift
//  DetailMission
//
//  Created by Apprenant 11 on 10/05/2023.
//

import SwiftUI

struct BackgroundColorView: View {
    @Binding var pourcentage: Double
    
//    initialisation de la variable color
    var color = Color.white
    
    
    var body: some View {
        
        ZStack{
            color
            VStack {
                Text("\(Int(pourcentage*1))")
                HStack{
                    Text("0")
                    Slider(value: $pourcentage, in: 0...255)
                    Text("255")
                }
            }
        }
    }
}


struct BackgroundColorView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColorView(pourcentage: .constant(15))
    }
}
