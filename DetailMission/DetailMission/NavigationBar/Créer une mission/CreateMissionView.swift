import SwiftUI

struct CreateMissionView: View {
    @State private var missionName: String = ""
    @State private var missionDescription: String = ""
    @State private var missionNbVolunteers: Int = 0
    @State private var showingAlert = false
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Informations de la mission")) {
                    TextField("Nom de la mission", text: $missionName)
                    TextField("Description de la mission", text: $missionDescription)
                    Stepper(value: $missionNbVolunteers, in: 0...100, label: {
                        Text("Nombre de bénévoles recherchés : \(missionNbVolunteers)")
                    })
                }
                
                Section {
                    Button(action: {
                        // Code à exécuter lorsque le bouton "Créer" est cliqué
                        print("Mission créée : \(missionName)")
                        showingAlert = true
                        
                    }) {
                        Text("Créer")
                    }
                }
            }
            .navigationTitle("Créer une mission")
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Mission créée"), message: Text("Félicitations, vous avez créé une nouvelle mission : \(missionName) !"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct CreateMissionView_Previews: PreviewProvider {
    static var previews: some View {
        CreateMissionView()
    }
}

