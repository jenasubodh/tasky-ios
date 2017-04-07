//
//  Globals.swift
//  Tasky
//
//  Created by Subodh Jena on 07/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation


func += <K, V> (left: inout [K : V], right: [K : V]) {
    for (k, v) in right {
        left.updateValue(v, forKey: k)
    }
}
