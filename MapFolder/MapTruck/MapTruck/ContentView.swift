//
//  ContentView.swift
//  MapTruck
//
//  Created by Turma01-25 on 25/01/24.
//

import SwiftUI
import Foundation
import MapKit

struct ContentView: View {
    
    struct Location: Identifiable {
        let id = UUID()
        let name : String
        let coordinate: CLLocationCoordinate2D
        let flag: String
        let description: String
        
    }
    
    let arrayLoc =  [
        Location(name: <#T##String#>, coordinate: <#T##CLLocationCoordinate2D#>, flag: <#T##String#>, description: <#T##String#>)
    ]
    
    @State private var position = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -5.36997, longitude: -49.1169), span: MKCoordinateSpan(latitudeDelta: 0.09, longitudeDelta: 0.01))
    
    var body: some View {
        VStack{
            VStack{
                Text("MapMab").font(.largeTitle).fontWeight(.semibold)
            }
            Map(coordinateRegion : $position, interactionModes: .all)
            
            HStack{
                ScrollView(.horizontal){
                    
                }
                    
                }
            }
        }
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
