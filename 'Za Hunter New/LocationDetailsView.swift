//
//  LocationDetailsView.swift
//  'Za Hunter New
//
//  Created by Millan Bhandari on 7/27/22.
//

import SwiftUI
import MapKit 

struct LocationDetailsView: View {
    var selectedMapItem: MKMapItem
    var body: some View {
        let address = selectedMapItem.placemark.subThoroughfare! + " " +
        selectedMapItem.placemark.thoroughfare! + "/n" +
        selectedMapItem.placemark.locality! + ", " +
        selectedMapItem.placemark.administrativeArea! + " " +
        selectedMapItem.placemark.postalCode!
        VStack {
            Text(selectedMapItem.name!)
                .font(.title)
            Text(address)
            Text(selectedMapItem.phoneNumber!)
            Link(destination: selectedMapItem.url!) {
                Text("Website")
                    .padding()
            }
            Button {
                let latitude = selectedMapItem.placemark.coordinate.latitude
                let longitude = selectedMapItem.placemark.coordinate.longitude
                let url = URL(string: "maps://?daddr=\(latitude),\(longitude)")
                if UIApplication.shared.canOpenURL(url!) {
                    UIApplication.shared.open(url!, options: [:])
                }
            } label: {
                Text("Directions")
            }
        }
    }
}

struct LocationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailsView(selectedMapItem: MKMapItem())
    }
}
