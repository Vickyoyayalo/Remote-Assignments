//
//  Item.swift
//  week2
//
//  Created by Vickyhereiam on 2024/6/27.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
