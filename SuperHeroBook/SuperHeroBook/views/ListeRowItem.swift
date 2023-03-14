//
//  ListeRowItem.swift
//  SuperHeroBook
//
//  Created by Tolga Pirim on 14.03.2023.
//

import SwiftUI

struct ListeRowItem: View {
    
    var superHero:SuperHero
    
    var body: some View {
        HStack{
            Image(superHero.imageName)
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width:75,height: 75)
                .clipShape(Circle())
            
            Spacer()
            
            VStack{
                Text(superHero.name)
                    .font(.title).bold()
                
                Text(superHero.realName)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct ListeRowItem_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowItem(superHero: spiderman)
    }
}
