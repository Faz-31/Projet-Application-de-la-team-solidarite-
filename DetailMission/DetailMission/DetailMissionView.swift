//
//  DetailMissionView.swift
//  DetailMission
//
//  Created by Apprenant 11 on 09/05/2023.
//

import SwiftUI

struct DetailMissionView: View {
    
    //        Alerte bouton participer et compteur
    @State var showingAlert = false
    @State var count = 0
    var maxCount = 1
    var titre: Missions2
    
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(height: 5)
                .foregroundColor(.white)
            ZStack {
                
                Color("beige")
                    .ignoresSafeArea()
                VStack {
                    Text(titre.name)
                        .font(.largeTitle)
                        .bold()
                    
                    //        Constante photo redimensionnée
                    Image(titre.img)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 350, height: 200)
                        .padding()
                    
                    ZStack {
                        VStack {
                            Text(titre.txt)
                                .padding(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9)))
                                .padding(16)
                            Button {
                                showingAlert = true
                                
                                if count <= maxCount{
                                    self.count += 1
                                }
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.init("orange"))
                                        .frame(width: 350, height: 60)
                                    Text("Participer")
                                }
                            }
                            .bold()
                            .foregroundColor(.black)
                            
                            // Définition des deux conditions d'alertes
                            .alert(isPresented: $showingAlert) {
                                if count > maxCount {
                                    return Alert(title: Text("Vous ne pouvez pas être bénévole à cette mission"), message: Text("Le nombre maximum de participants est atteint. "), dismissButton: .destructive(Text("OK")) {
                                        count -= 1
                                    })
                                    
                                    
                                } else {
                                    return Alert(title: Text("Félicitation !"), message: Text("Votre inscription validée !"))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct DetailMissionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMissionView(titre: Missions2(name: "titre de la mission", img: "Culture", count: "2", txt: "lorem ipsum"))
    }
}

