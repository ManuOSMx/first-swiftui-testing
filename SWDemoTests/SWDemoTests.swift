//
//  SWDemoTests.swift
//  SWDemoTests
//
//  Created by Manuel Ortiz on 19/09/24.
//

import Testing
@testable import SWDemo


extension Tag {
    @Tag static var repository: Self
}

@Suite("Test SW", .tags(.repository))
struct SWDemoTests {
    let repository = RepositoryTest()
    let viewModel = StarCardVM(repository: RepositoryTest())
    
    @Test("Test to load data from Repository")
    func dataLoad() throws {
        let data = try repository.getData()
        #expect(data.count == 5)
    }
    
    @Test("Test to load data from ViewModel")
    func dataLoadVM() throws {
        #expect(viewModel.cards.count == 5)
    }
}
