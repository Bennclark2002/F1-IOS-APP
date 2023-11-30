//
//  DataLoader.swift .swift
//  StatsApp
//
//  Created by Ben Clark on 11/28/23.
//

import Foundation

public class DataLoader: ObservableObject {
    
    @Published var drivers = [Drivers]()
    init() {
        load()
        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "driver", withExtension: "json") {
            
            // handles errors
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Drivers].self, from: data)
                
                self.drivers = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
    func sort() {
        self.drivers = self.drivers.sorted(by: {$0.id < $1.id })
    }
}
