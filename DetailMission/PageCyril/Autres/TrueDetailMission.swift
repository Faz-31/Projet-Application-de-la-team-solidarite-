//
//  TrueDetailMission.swift
//  ProjetS
//
//  Created by Appprenant 06 on 04/05/2023.
//

import SwiftUI

struct TrueDetailMission: View {
    @State var count = 0
    @State var ifButtonEnabled = true
    @State var toast = false
        @State private var showingAlert = false
    var mission:Mission
    var body: some View {
        
        ZStack {
            Color("beige")
            VStack{
                Spacer()
                Image(mission.img)
                    .resizable()
                    .frame(width: 400,height: 200)
                    .padding()
                Text(mission.name)
                    .font(.title)
                VStack (alignment: .leading){
                    Text(mission.txt)
                }
                .padding(40)
                Spacer()
                Text("Bénévoles : \(count)/75")
                Button {
                    count += 1
                    if ifButtonEnabled == true {
                        ifButtonEnabled = false
                        toast = true
                    }
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 120, height: 50)
                            .foregroundColor(.green)
                        Text("Participer")
                            .foregroundColor(.white)
                    }
                }
                .opacity(ifButtonEnabled == true ? 1 : 0)
                .disabled(!ifButtonEnabled)
            }
            .padding(100)
            .overlay{
                VStack{
                    if toast {
                        ZStack {
                            RoundedRectangle(cornerRadius: 7)
                                .frame(width:175, height: 175)
                                .foregroundColor(.black)
                                .opacity(0.7)
                            VStack {
                                Text("Vous participez")
                                    .bold()
                                .foregroundColor(.white)
                            }
                        }
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                withAnimation{
                                    toast = false
                                }
                            }
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}
//}
struct TrueDetailMission_Previews: PreviewProvider {
    static var previews: some View {
        TrueDetailMission(mission: Mission(name: "Culture Végétal", img:"Culture", count: "0", txt: "Notre mission est de répondre aux besoins les plus urgents des populations affectées par la famine, en fournissant une aide alimentaire essentielle pour assurer leur survie et leur bien-être. Nous croyons que chaque personne a le droit fondamental à la nourriture et à l'eau potable, et nous sommes déterminés à aider à combler ce besoin vital."))
    }
}
