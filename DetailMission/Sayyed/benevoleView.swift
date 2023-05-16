//
//  benevoleView.swift
//  loging
//
//  Created by apprenant01 on 11/05/2023.
//

import SwiftUI

struct benevoleView: View {
    @State private var showingAlert = false
    @State private var navigate = false
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var number: String = ""
    @State private var adresse: String = ""
    @State private var email: String = ""
    @State private var objetive: String = ""
    
    var body: some View {
        NavigationStack {
//            ScrollView {
                ZStack {
                    Color("beige")
                        .ignoresSafeArea()
                    ScrollView {
                        VStack {
    //                        Text("Formulaire d'inscription")
    //                            .font(.title2)
                            VStack(alignment: .leading) {
                                InputFieldView(field: $name, label: "   Prénom", labelInput: "Prénom")
                                InputFieldView(field: $lastName, label: "   NOM", labelInput: "NOM")
                                InputFieldView(field: $number, label: "Numéro de tèlèphone", labelInput: "Numéro")
                                InputFieldView(field: $adresse, label: "   Adresse", labelInput: "Adresse")
                                InputFieldView(field: $email, label: "  email adresse", labelInput: "email")
                                InputFieldView(field: $objetive, label: "   objectif", labelInput: "objectif")
                            }
                            NavigationLink(isActive: $navigate) {
                                NavigationBarItemView()
                            } label: {
                                EmptyView()
                            }
                            Button {
                                showingAlert = true
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.blue)
                                        .frame(width: 90, height: 50)
                                    Image(systemName: "paperplane.fill")
                                }
                                .foregroundColor(.white)
                            }
                            .position(x: 300, y: 30)
                            .alert(isPresented: $showingAlert) {
                                if name == "" {
                                    return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un prénom"))
                                } else if lastName == "" {
                                    return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un nom"))
                                } else if adresse == "" {
                                    return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré l'adresse"))
                                } else if email == "" {
                                    return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré l'email"))
                                } else if number == "" {
                                    return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un numèro de téléphone"))
                                }
                                
                                return Alert(title: Text("Bienvenu"), message: Text("\(name)"), dismissButton: .default(Text("Merci")) {
                                    navigate = true
                                })
                            }
                        }
                        .navigationTitle("Formulaire d'inscription")
                    }
//                    .font(.title2)
                }
            }
        }
    }
//}
struct inscriptionBenevolView_Public: PreviewProvider {
    static var previews: some View {
        benevoleView()
    }
}

//struct InputFieldView: View {
//    @Binding var field: String
//    var label: String
//    var labelInput: String
//
//    var body: some View {
//        VStack {
//            HStack {
//                Text("\(labelInput)*")
//            }
//            TextField(label, text: $field)
//                .textFieldStyle(.roundedBorder)
//        }
//    }
//}
