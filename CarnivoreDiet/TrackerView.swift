//
//  TrackerView.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 8/9/22.
//

import SwiftUI

struct TrackerView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Add New Entry", destination: AddTracking())
                
                VStack {
                    HStack {
                        
                    }
                }
            }
            .navigationTitle("Tracker")
        }
    }
}

struct TrackerView_Previews: PreviewProvider {
    static var previews: some View {
        TrackerView()
    }
}
