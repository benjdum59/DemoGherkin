//
//  DemoData.swift
//  DemoGherkin
//
//  Created by Benjamin Dumont on 05/08/2020.
//  Copyright © 2020 Axa France. All rights reserved.
//

import Foundation

struct DemoData {
    var firstBool: Bool = false
    var secondBool: Bool = false
    var result: Bool {
        firstBool && secondBool
    }
}
