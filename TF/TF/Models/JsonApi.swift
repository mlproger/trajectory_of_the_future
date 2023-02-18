//
//  JsonApi.swift
//  TF
//
//  Created by Максим on 18/2/2023.
//

import Foundation

class JsonApi {
    static let shared = JsonApi()
    func setUpJSON(completion:@escaping ([Item], Error?) -> Void){
        let url = URL(string: "https://mobile-olympiad-trajectory.hb.bizmrg.com/semi-final-data.json")
        guard let url = url else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                completion([], error)
            }
            guard let data = data else {return}
            
            do {
                let projects = try JSONDecoder().decode(Items.self, from: data)
                completion(projects.items, nil)
            }catch{
                print(error)
                completion([], error)
            }
        }.resume()
    }
    
}


