//
//  Service.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/11/10.
//

import Foundation
struct City {
    let lat: String
    let lon: String
    let name: String
}
class Service {
    private let baseURL: String = "https://api.openweathermap.org/data/3.0/onecall"
    private let apiKey: String = "05f58fd325bd4f54028c353761989a2d"
    private let session = URLSession.shared
    func fecthData(city: City, _ completion: @escaping (String) -> Void) {
        let urlString = "\(baseURL)?lat=\(city.lat)&lon=\(city.lon)&appid=\(apiKey)"
        guard let url = URL(string: urlString) else { return }
        
        let task = session.dataTask(with: url) { data, response, error in
            completion("Oi!")
        }
        task.resume()
    }
}
