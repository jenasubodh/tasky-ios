//
//  IndicatableViewExtension.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import APESuperHUD

extension IndicatableView where Self: UIViewController {
    
    func showActivityIndicator() {
        APESuperHUD.showOrUpdateHUD(LoadingIndicatorType.standard, message: "Loading", presentingView: self.view)
    }
    
    func hideActivityIndicator() {
        APESuperHUD.removeHUD(true, presentingView: self.view, completion: nil)
    }
}
