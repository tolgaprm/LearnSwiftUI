//
//  SuperHero.swift
//  SuperHeroBook
//
//  Created by Tolga Pirim on 12.03.2023.
//

import Foundation
import CoreLocation

struct SuperHero: Identifiable{
    var id = UUID()
    var name:String
    var realName:String
    var imageName:String
    var city:String
    var job:String
    var coordinat:CLLocationCoordinate2D
}


var batman = SuperHero(name: "Batman",realName: "Bruce Wayce", imageName: "batman", city: "Gotham", job: "Buninessman", coordinat: CLLocationCoordinate2D(latitude: 41.8713679, longitude: -87.7669902))

var superman = SuperHero(name: "Superman",realName: "Clark Kent", imageName: "superman", city: "Kansas", job: "Gazeteci", coordinat: CLLocationCoordinate2D(latitude: 39.0865207, longitude: -94.7089592))

var spiderman = SuperHero(name: "Spiderman",realName: "Peter Parker", imageName: "spiderman", city: "New York", job: "Photographer", coordinat: CLLocationCoordinate2D(latitude: 40.7160119, longitude: -74.0524729))

var ironman = SuperHero(name: "Iron Man",realName: "Tony Stark", imageName: "iron_man", city: "Los Angeles", job: "Buninessman", coordinat: CLLocationCoordinate2D(latitude: 33.8003309, longitude: -118.2261494))

let superHeros = [batman,superman,spiderman,ironman]
