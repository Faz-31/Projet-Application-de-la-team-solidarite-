import SwiftUI

struct accuailview: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("beige")
                    .ignoresSafeArea()
                VStack {
                    Image("Environnement")
                        .resizable()
                        .frame(width: 300, height: 150)
                        .padding()
                    Text("Bienvenue")
                        .font(.title)
                    Text("Vous êtes ?")
                        .padding()
                    HStack{
                        NavigationLink {
                            benevoleView()
                        } label: {
                            HStack {
                                VStack {
                                    Image("Png")
                                        .resizable()
                                        .aspectRatio(contentMode:.fit)
                                        .frame(width: 100, height: 100 )
                                        .clipShape(Circle() )
                                    Text("Un bénévole")
                                }
                            }
                        }
                        .padding()
                        NavigationLink {
                            InscriptionAssoIView()
                        } label: {
                            VStack {
                                Image("terre1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                Text("Une association")
                            }
                        }
                        .padding()
                    }
                    NavigationLink{
                        identifiantView()
                    } label: {
                            ZStack{
                                Color(.blue)
                                .frame(width: 240,height: 40)
                                HStack{
                                    Image(systemName: "person.fill")
                                    Text("Identifiant")
                                }
                                .foregroundColor(.white)
                        }
                   
                        
                    }.padding()
                   
                    
                   
                    
                }
                
                }
            .ignoresSafeArea()
                }
            }
        }
            
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        accuailview()
    }
    
}
