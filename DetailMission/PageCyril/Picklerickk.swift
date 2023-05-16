//
//  Picklerickk.swift
//  ProjetS
//
//  Created by Appprenant 06 on 05/05/2023.
//

import SwiftUI

struct Picklerickk: View {
    @State var picklerick = false
    var body: some View {
            VStack{
                Picker(selection: $picklerick, label: Text(""))
                {
                    Text("Missions").tag(false)
                    Text("Associations").tag(true)
                }
                .pickerStyle(.segmented)
                .frame(width:250)
                //            .padding(-400)
                
                if picklerick{
                    AssoView()
                }
                else {
                    ListMissionVAsso()
                }
            }
        }
    }
struct Picklerickk_Previews: PreviewProvider {
    static var previews: some View {
        Picklerickk()
    }
}
