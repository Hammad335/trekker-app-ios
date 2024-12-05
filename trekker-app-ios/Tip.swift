//
//  Tip.swift
//  trekker-app-ios
//
//  Created by Hamad on 05/12/2024.
//

import Foundation


struct Tip: Decodable{
    let text: String
    let children: [Tip]?
}
