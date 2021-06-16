//
//  ContentView.swift
//  EmbeddedMapViewInSwiftUI
//
//  Created by 樋川大聖 on 2021/06/16.
//

import SwiftUI
import MapKit

struct EmbeddedMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }

    func updateUIView(_ uiview: MKMapView, context: Context) {
        let latitude = 35.661286, longitude = 139.7
        let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiview.setRegion(region, animated: true)
    }
}
struct EmbeddedMapView_Previews: PreviewProvider {
    static var previews: some View {
        EmbeddedMapView()
    }
}
