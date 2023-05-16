////
////  ListMissionVAsso.swift
////  ProjetS
////
////  Created by Appprenant 06 on 04/05/2023.
////
//
//import SwiftUI
//
//struct ListMissionVAsso: View {
//    @State var count = 0
//    var body: some View {
//        NavigationStack {
//            ScrollView {
//                Spacer()
//                VStack {
////                    🚨
////                    ForEach(missions){ mission in
//                    ForEach(tableauMissions){ mission in
//                        NavigationLink {
////                            🚨
//                            DetailMissionView(titre:mission)
////                           TrueDetailMission(mission: mission)
//                             } label: {
//                                 VStack(alignment: .leading) {
//                                         HStack{
//                                             VStack{
//                                                 Image(mission.img)
//                                                     .resizable()
//                                                     .frame(width: 200,height: 100)
//                                                     .padding(20)
//                                                 
////                                                 Text(mission.name)
////                                                     .foregroundColor(.black)
////                                                     .font(.title3)
//////                                                     .padding()
//                                             }
//                                             .background(Rectangle())
//                                             .foregroundColor(Color("beige"))
////                                             .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 0.5))
//                                             .border(Color.gray, width: 2)
//                                                 VStack {
//                                                     Text("Bénévole : \(count)/\(mission.count)")
//                                                    
//                                    }
//                                }
//                                     VStack{
//                                         Text(mission.name)
//                                             .font(.title3)
//                                             .foregroundColor(.black)
//                                                
//
//                                     }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct ListMissionVAsso_Previews: PreviewProvider {
//    static var previews: some View {
//        ListMissionVAsso()
//    }
//}
