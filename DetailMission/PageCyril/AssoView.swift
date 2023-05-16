//
//  AssoView.swift
//  ProjetS
//
//  Created by Appprenant 06 on 05/05/2023.
//

import SwiftUI

struct AssoView: View {
    @State var count = 0
    var body: some View {
        NavigationStack {
            ZStack {
                Color("beige")
                ScrollView {
                    Spacer()
                    VStack{
                        ForEach(associations){ asso in
                            NavigationLink {
                                DetailAsso(asso: asso)
                            } label: {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Image(asso.img)
                                            .resizable()
                                            .frame(width: 200,height: 100)
                                            .padding(20)
                                    }
                                    .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 0.5))
                                    .border(Color.gray, width: 2)
                                }
                            }
                           Text(asso.name)
                                .bold()
                                Divider()
                        }
                    }
                }
            }
//            ignoresSafeArea()
        }
    }
}

struct AssoView_Previews: PreviewProvider {
    static var previews: some View {
        AssoView()
    }
}
