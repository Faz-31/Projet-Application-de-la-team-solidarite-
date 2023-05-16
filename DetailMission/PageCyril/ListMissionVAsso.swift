//
//  ListMissionVAsso.swift
//  ProjetS
//
//  Created by Appprenant 06 on 04/05/2023.
//

import SwiftUI

struct ListMissionVAsso: View {
    @State var count = 0
    var body: some View {
        NavigationView {
            ZStack {
                Color("beige")
                ScrollView {
                    VStack {
                        ForEach(missions) { mission in
//                        ForEach(tableauMissions) { mission in
                            NavigationLink(destination: TrueDetailMission(mission: mission)) {
//                            NavigationLink(destination: DetailMissionView(titre: mission)) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        Spacer()
                                        VStack {
                                            Image(mission.img)
                                                .resizable()
                                                .frame(width: 200, height: 100)
                                                .padding(20)
                                        }
                                        .background(Rectangle())
                                        .foregroundColor(Color(.white))
                                        .border(Color.gray, width: 2)
                                        VStack {
                                            Text("Bénévole")
                                            Text(" \(count)/\(mission.count)")
                                                
                                        }
                                        .foregroundColor(Color.black)
                                        Spacer()
                                    }
                                    VStack(alignment: .leading) {
                                        Text(mission.name)
                                            .bold()
                                            .foregroundColor(.black)
                                        Divider()
                                    }
                                    .padding(.leading)
                                }
                            }
                        }
                    }
                }
//                .navigationTitle("Liste des missions")
            }
        }
    }
}


struct ListMissionVAsso_Previews: PreviewProvider {
    static var previews: some View {
        ListMissionVAsso()
    }
}
