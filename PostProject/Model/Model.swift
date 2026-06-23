//
//  Model.swift
//  PostProject
//
//  Created by Naga Rajitha Bhogadi on 6/23/26.
//

import Foundation
struct Post: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
