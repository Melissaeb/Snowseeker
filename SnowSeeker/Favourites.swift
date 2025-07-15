//
//  Favourites.swift
//  SnowSeeker
//
//  Created by Melissa Elliston-Boyes on 15/07/2025.
//

import SwiftUI

@Observable
class Favourites {
    private var resorts: Set<String>
    private let key = "Favourites"
    
    init() {
        // load our saved data
        resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort)
    }
    
    func add(_ resort: Resort) {
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        // write out all data
    }
}
