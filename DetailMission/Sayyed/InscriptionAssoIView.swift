//
//  inscriptionassoView.swift
//  loging
//
//  Created by apprenant01 on 11/05/2023.
//

import SwiftUI

struct InscriptionAssoIView: View {
    @State private var showingAlert = false
    @State private var navigation = false
    @State private var name: String = ""
    @State private var adress: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var siretNumber: String = ""
    @State private var subject: String = ""
    @State private var errorMessage: String = ""
    
    
    
    var body: some View {
        
        NavigationStack{
            ScrollView {
                ZStack{
                    Color("beige")
                        .ignoresSafeArea()
                    VStack{
                        
//                        Text("Formulaire d'inscription")
//                            .font(.title2)
//                            .padding(10)
                        Text(errorMessage)
                        
                        VStack(alignment: .leading){
                            
                            InputFieldeView(field: $name, label: "    Nom de l'association", labelInput: "Nom de l'association")
                            
                            InputFieldeView(field: $adress, label: "    Adresse", labelInput: "Adresse")
                            
                            InputFieldeView(field: $email, label: "    Adresse email",labelInput: "Email")
                            
                            InputFieldeView(field: $phoneNumber, label: "    Numéro de téléphone*",labelInput: "Tèlèphone")
                            //                        .keyboardType(.numberPad)
                            
                            InputFieldeView(field: $siretNumber, label: "    Numéro de siret*",labelInput:"Siret")
                            
                            InputFieldeView(field: $subject, label: "     objectif*",labelInput: "Objectif")
                        }
                        
                        NavigationLink(isActive: $navigation) {
                            NavigationBarItemViewAsso()
                        } label: {
                            EmptyView()
                        }
                        Button {
                            showingAlert = true
                        } label: {  ZStack{
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(width:90 , height:50)
                            Image(systemName: "paperplane.fill")}
                            
                        .foregroundColor(.white)
                        }
                        .position(x: 300, y: 40)
                        .alert(isPresented: $showingAlert) {
                            if name == "" {
                                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un nom."))
                                
                            } else if adress == "" {
                                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré l'adresse."))
                            }else if email == "" {
                                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré l'email."))
                                
                            }else if phoneNumber == "" {
                                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un numèro de téléphone."))
                            }else if siretNumber == "" {
                                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un numèro de SIRET."))
                            }
                            
                            return Alert(title: Text("Bienvenu "), message: Text("\(name) ."),
                                         dismissButton: .default(Text("Merci")){
                                navigation = true
                            })
                            
                            
                        }
                    }
                    .navigationTitle("Formulaire d'inscription")
                }
            }
        }
    }
        
    struct ContentView_public: PreviewProvider {
        static var previews: some View {
            InscriptionAssoIView()
        }
    }
    
    //}
    struct InputFieldeView: View {
        
        
        @Binding var field: String
        var label: String
        var labelInput: String
        var body: some View {
            
            VStack {
                Color.black
                HStack {
                    Text("\(labelInput)*")
               .padding(10)
                Spacer()}
                
                TextField(label, text: $field)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                
            }
        }
    }
}
     
