//
//  DriverImage.swift
//  StatsApp
//
//  Created by Ben Clark on 11/27/23.
//
import SwiftUI

struct DriverImage: View {
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100) // Adjust the size as needed
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 4)
    }
}


struct DriverImage_Previews: PreviewProvider {
    static var previews: some View {
        DriverImage(imageName: "Verstappen")
    }
}
