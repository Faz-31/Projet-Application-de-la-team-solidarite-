//
//  DetailAsso.swift
//  ProjetS
//
//  Created by Appprenant 06 on 04/05/2023.
//

import SwiftUI


struct DetailAsso: View {
    @State var ifButtonEnabled = true
    var asso : Asso
    var body: some View {
        ZStack {
            Color("beige")
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Image(asso.img)
                    .resizable()
                    .frame(width: 400,height: 200)
                    .padding()
                Text(asso.name)
                    .font(.title)
                    .padding()
                Text(asso.txt)
                    .padding(50)
    //            VStack{
    ////                Text("Bénévoles : \(count)/75")
    //                Button{
    //                    if ifButtonEnabled == true {
    //                        ifButtonEnabled = false
    //                    }
    //                } label: {
    //                    ZStack {
    //                        RoundedRectangle(cornerRadius: 10)
    //                            .frame(width: 120, height: 50)
    //                            .foregroundColor(.green)
    //
    //                        Text("Participer")
    //                            .foregroundColor(.white)
    //                    }
    //                }
    //                .padding()
    //                .opacity(ifButtonEnabled == true ? 1 : 0)
    //                .disabled(!ifButtonEnabled)
    //                .padding()
    //            }
                
            }
        }
    }
}

struct Asso_Previews: PreviewProvider {
    static var previews: some View {
        DetailAsso(asso: Asso(name: "Oxfam International", img: "Oxfam_International", txt: "Action contre la faim est une organisation à but non lucratif créée en 1979 par un groupe d'intellectuels comprenant notamment Alfred Kastler, Bernard-Henri Lévy, Jacques Attali, Françoise Giroud, Marek Halter et Jean-Christophe Victor."))
    }
}
