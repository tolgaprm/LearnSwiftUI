//
//  DetailView.swift
//  SuperHeroBook
//
//  Created by Tolga Pirim on 14.03.2023.
//

import SwiftUI

struct DetailView: View {
    
    var superHero:SuperHero
    
    let circleImageOffset = UIScreen.main.bounds.height * -0.25
    
    var body: some View {
        VStack{
            MapView(coordinate: superHero.coordinat)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.all)
            
            CircleImageView(image: Image(superHero.imageName))
                .frame(
                    width:UIScreen.main.bounds.width * 0.9,
                    height:UIScreen.main.bounds.height * 0.3
                )
                .offset(y:circleImageOffset)
                .padding(.bottom,circleImageOffset)
            
            
            VStack{
                HStack{
                    Text(superHero.name)
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text(superHero.realName)
                        .font(.title)
                        .foregroundColor(.gray)
                }
         
                HStack{
                    Text(superHero.city).font(.title)
                        Spacer()
                    Text(superHero.job).font(.title)
                }
            }.padding()
            Spacer()
        }
        .navigationTitle(superHero.name)
        .navigationBarTitleDisplayMode(.inline)
    
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(superHero: superman)
    }
}
