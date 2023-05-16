//
//  identifiantView.swift
//  loging
//
//  Created by apprenant01 on 10/05/2023.
//

import SwiftUI

struct identifiantView: View {
    @State var action: Bool = false
    @State var errormessage = ""
    @State private var username:String = ""
    @State private var pass: String = ""
    let loging = "Ok"
    let password = "Ok"
    var body: some View{
        NavigationView {
            ZStack{
                Color("beige")
                VStack{
                    Image("Environnement")
//
                        .resizable()
                        .frame(width: 300, height: 150)
                        .padding()
                    Text(errormessage)
                        .padding()
                    ZStack{
                        Text("Bienvenue !")
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.white)
//                    .border(Color.black, width: 1)
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .font(.title)
                    ScrollView {
                        TextField("identifiant",text: $username)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("mot de passe" ,text: $pass)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    
                    
                    ZStack {
                        Color("bleu")
                            .frame(width:240, height:50)
                        Text("connexion")
                            .foregroundColor(.white)
                            .font(.title)
                            .onTapGesture{
                                self.clicked()
//                                Color("bleu")
//                                    .frame(width:240, height:50)
                            }
                        }
                    }
                    NavigationLink(destination:  NavigationBarItemView(), isActive: $action) {}

                }
            }
            .ignoresSafeArea()
        }
    }
    func clicked() {
        if username.isEmpty{errormessage = "Vous n'avais pas renseigné votre identifiant !"
        }else if loging != username {
            errormessage = "Idetifiant invalide !"
        }else if pass.isEmpty{errormessage = "Vous n'avais pas entré votre mot de passe !"
        }else if password != pass{ errormessage = "Mot de passe invalide !"
        }else if loging == username && pass == password{ action = true
            
            }else {
            errormessage = "error 404"
        }
    }
    
    struct identifiantView_Previews: PreviewProvider {
        static var previews: some View {
            identifiantView()
        }
    }
    
    
}
