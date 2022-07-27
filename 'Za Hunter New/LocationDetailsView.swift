//
//  LocationDetailsView.swift
//  'Za Hunter New
//
//  Created by Millan Bhandari on 7/27/22.
//

import SwiftUI
import MapKit 

struct LocationDetailsView: View {
    var selectedMapPin: MKMapItem
    var body: some View {
        VStack {
            Text(selectedMapPin.name!)
                .font(.title)
        }
    }
}

struct LocationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailsView(selectedMapPin: MKMapItem())
    }
}
