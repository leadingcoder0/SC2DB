//
//  Video.swift
//  SC2DB
//
//  Created by Ted Tran on 1/6/22.
//

import SwiftUI


struct Video: Identifiable {
    let id = UUID()
    let stringname: String
}

struct VideoList {    
    
    static let topTen = [
        Video(stringname: "YES")
    ]
}
