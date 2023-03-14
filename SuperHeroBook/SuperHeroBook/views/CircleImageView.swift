//
//  CircleImageView.swift
//  SuperHeroBook
//
//  Created by Tolga Pirim on 14.03.2023.
//

import SwiftUI

struct CircleImageView: View {

    var image:Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(.white,lineWidth: 5)
                    .shadow(radius: 15)
            }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("spiderman"))
    }
}
