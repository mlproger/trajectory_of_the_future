//
//  JsonApi.swift
//  TF
//
//  Created by Максим on 18/2/2023.
//

import Foundation

struct Item: Decodable{
    let name: String
    let description: String
    let icon_url: String
    let service_url: String
}

struct Items: Decodable{
    let items: [Item]
}
