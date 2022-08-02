//
//  TrackingView.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 7/22/22.
//

import SwiftUI

struct TrackingView: View {
    var body: some View {
        NavigationView {
            Text ("You may find it helpful to track what you eat on a daily basis and adjust your food amounts as needed.")
                .navigationBarTitle("Tracker")
        } 
    }
}

struct TrackingView_Previews: PreviewProvider {
    static var previews: some View {
        TrackingView()
    }
}
