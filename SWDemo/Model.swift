//
//  Model.swift
//  SWDemo
//
//  Created by Manuel Ortiz on 15/09/24.
//

import Foundation

struct StarCardDTO: Codable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: String
    let habilidades: String
    let armas: String
    let imagen: String
}

extension StarCardDTO {
    var toCard: StarCard {
        StarCard(id: id,
                 nombre: nombre,
                 raza: raza,
                 descripcion: descripcion,
                 planetaOrigen: planetaOrigen,
                 epoca: epoca,
                 afiliacion: afiliacion.components(separatedBy: ", ").map(\.capitalized),
                 habilidades: habilidades.components(separatedBy: ", ").map(\.capitalized),
                 armas: armas.components(separatedBy: ", ").map(\.capitalized),
                 imagen: imagen
        )
    }
}


struct StarCard: Identifiable, Hashable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: [String]
    let habilidades: [String]
    let armas: [String]
    let imagen: String
}


extension StarCard {
    static let test = StarCard(id: 6629, nombre: "Luke S", raza: "Humano", descripcion: "Heroe y ultimo jedi", planetaOrigen: "Tatooine", epoca: "Imperio", afiliacion: ["Alianza Rebelde", "Nueva Republica"], habilidades: ["Fuerza", "Habilidad en Sable de luz"], armas: ["Sable de luz"], imagen: "lukeskywalker")
}
