//
//  ContentView.swift
//  SuperHeroBook
//
//  Created by Tolga Pirim on 12.03.2023.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(superHeros){superHero in
             NavigationLink(
                destination:{DetailView(superHero: superHero)},
                label:{
                   ListeRowItem(superHero: superHero)
                }
             ).navigationTitle(Text("Heros"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
