//
//  ViewProtocols.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

protocol IndicatableView: class {
    func showActivityIndicator()
    func hideActivityIndicator()
}
