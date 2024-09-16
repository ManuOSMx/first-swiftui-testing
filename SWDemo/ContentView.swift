//
//  ContentView.swift
//  SWDemo
//
//  Created by Manuel Ortiz on 15/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var vm = StarCardVM()
    var body: some View {
        List {
            ForEach(vm.cards) {
                card in StarCardView(card: card)
            }
        }
    }
}

#Preview {
    ContentView(vm: StarCardVM(repository: RepositoryTest()))
}
