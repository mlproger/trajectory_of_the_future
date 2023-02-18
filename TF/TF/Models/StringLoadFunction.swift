//
//  StringLoadFunction.swift
//  TF
//
//  Created by Максим on 18/2/2023.
//

import Foundation
import UIKit

extension String{
    func loadImg(completion:@escaping (UIImage) -> Void){
        let url = URL(string: self)
        guard let url = url else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil{
                completion(UIImage())
            }

            do {
                let data = try Data(contentsOf: url)
                completion(UIImage(data: data)!)
            }catch{
                print(error)
                completion(UIImage())
            }
        }.resume()
    }
}
