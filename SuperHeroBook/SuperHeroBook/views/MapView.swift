//
//  MapView.swift
//  SuperHeroBook
//
//  Created by Tolga Pirim on 14.03.2023.
//

import SwiftUI
import MapKit

// UI View Representable protokolü UIKit içerisinde kullandığımız view'ları
// SwiftUı içerisinde kullanmamızı sağlıyor.

/* Map(coordinateRegion: $region)
   Bu harita IOS 14 ve üzerinde çalışabilir o yüzden IOS 14 altına
 destek vermek istiyorsak UI View Representable kullanmamız gerekiyor.
 
 struct MapView : UIViewRepresentable{
     var coordinate:CLLocationCoordinate2D

     func updateUIView(_ uiView: MKMapView, context: Context) {
         let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
         
         let region = MKCoordinateRegion(
             center: coordinate,
             span: span
         )
         
         uiView.setRegion(region, animated: true)
     }
     
     func makeUIView(context: Context) -> some MKMapView {
         MKMapView(frame: .zero)
     }

 }
 */
struct MapView : View{
    var coordinate:CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View{
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate:CLLocationCoordinate2D){
        region = MKCoordinateRegion(
        center: coordinate,
        span:MKCoordinateSpan(
            latitudeDelta: 0.2, longitudeDelta: 0.2
        ) )
    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superHeros[0].coordinat)
    }
}
