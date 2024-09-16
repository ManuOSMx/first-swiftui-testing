//
//  StarCardVM.swift
//  SWDemo
//
//  Created by Manuel Ortiz on 15/09/24.
//

import Foundation
@Observable
final class StarCardVM {
    let repository: DataRepository
    var cards: [StarCard]
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            cards = try repository.getData()
        } catch {
            cards = []
        }
    }
}
