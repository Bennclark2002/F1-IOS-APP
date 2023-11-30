//
//  DriverRow.swift
//  StatsApp
//
//  Created by Ben Clark on 11/28/23.
//
import SwiftUI

struct DriverRow: View {
    @ObservedObject var dataLoader = DataLoader() // Instance of DataLoader
    @State private var selectedDriver: Drivers? = nil

    var body: some View {
        List(dataLoader.drivers) { driver in
            NavigationLink(destination: DriverDetail(driver: driver)) {
                HStack {
                    Image(driver.image)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 70, height: 70)
                    
                    VStack(alignment: .leading) {
                        Text(driver.name)
                            .font(.headline)
                        Text(driver.team)
                            .font(.subheadline)
                    }
                }
            }
        }
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        DriverRow()
    }
}
