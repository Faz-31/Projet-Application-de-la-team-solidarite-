//
//  MissionCount.swift
//  Agir pour nourrir
//
//  Created by Apprenant 11 on 15/05/2023.
//

import Foundation

class MissionCount: ObservableObject {
    @Published var count = 0
    
    func increment() {
        count += 1
    }
}
