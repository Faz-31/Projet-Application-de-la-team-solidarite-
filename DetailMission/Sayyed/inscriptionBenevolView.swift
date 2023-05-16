//
//  inscriptionBenevolView.swift
//  inscriptionBenevol
//
//  Created by apprenant01 on 10/05/2023.
//
//
import SwiftUI

struct inscriptionBenevolView: View {
    @State private var showingAlert = false
    @State private var name: String = ""
    @State private var  lastName: String =  ""
    @State private var  number: String = ""
    @State private var  adresse: String = ""
    @State private var  email: String =  ""
    @State private var  objetive:String = ""
    var body: some View {
        VStack{
        Text("Formulaire d'inscription")
                .font(.title2)
        VStack(alignment: .leading) {
           
            InputFieldView(field: $name, label:"   Prénom" , labelInput: "Prénom")
            InputFieldView(field:$lastName, label:"   NOM", labelInput: "NOM")
            InputFieldView(field:$number, label:"Numéro de téléphone", labelInput: "Numéro")
            InputFieldView(field:$adresse, label:"   Adresse", labelInput: "Adresse")
            InputFieldView(field:$email, label:"  email adresse", labelInput: "email")
            InputFieldView(field:$objetive, label:"   objectif", labelInput: "objectif")
       
        }
        Button {
            showingAlert = true
        } label: {  ZStack{
            Rectangle()
                .foregroundColor(.blue)
                .frame(width:90 , height:50)
            Image(systemName: "paperplane.fill")}
            
        .foregroundColor(.white).alert(isPresented: $showingAlert) {
            if name == "" {
                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un prénom"))
                
            } else if lastName == "" {
                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un nom"))
            }else if adresse == "" {
                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré l'adresse"))
            }else if email == "" {
                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré l'email"))
                
            }else if number == "" {
                return Alert(title: Text("Erreur"), message: Text("vous n'avais pas entré un numèro de tèièphone"))
            }
            
            return Alert(title: Text("bienvenu"), message: Text("\(name)"))
            
            
              }
            .position(x: 300, y: 30)
           }
         }
      }
    }
    
    
    
    struct inscriptionBenevolView_Previews: PreviewProvider {
        static var previews: some View {
            inscriptionBenevolView()
        }
    }
    
    
    struct InputFieldView: View {
        
        @Binding var field: String
        var label: String
        var labelInput: String
        
        var body: some View {
            VStack {
                HStack {
                    Text("\(labelInput)*")
                        .padding(20)
                    Spacer()
                }
                TextField(label, text: $field)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                    .padding(0)
                    .padding(.horizontal,40)
                
                
            }
        }
    }
