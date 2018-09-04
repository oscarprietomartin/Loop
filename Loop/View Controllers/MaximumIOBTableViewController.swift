//
//  MaximumIOBTableViewController.swift
//  Loop
//
//  Created by Kenneth Stack on 9/3/18.
//  Copyright © 2018 LoopKit Authors. All rights reserved.
//

import Foundation
import UIKit
import LoopKitUI
import HealthKit

final class MaximumIOBTableViewController: TextFieldTableViewController {
    
    
    
    init(maximumIOB: Double?) {
 
        super.init(style: .grouped)
        
        placeholder = NSLocalizedString("Enter Maximum Correction IOB (U)", comment: "The placeholder text instructing users to enter a maximum correction IOB")
        keyboardType = .decimalPad
        contextHelp = NSLocalizedString("Maximum Correction IOB (max-iob) is the maximum units of insulin Loop will be allowed to add via high temp basals to correct high blood glucose.  If max-iob is set to zero, Loop will be in Predictive Glucose Suspend Mode; in other words Loop will not provide high temp basals to treat high blood glucose...it will only suspend/lower insulin delivery for low blood glucose.  Loop will only be allowed to provide up to the max-iob you have set regardless of how IOB was received (through boluses or basals).  Boluses are unaffected by this restriction.  For example, if max-iob is set to 8 units and a meal bolus is calculated as 10 units recommended, Loop will recommend 10 units.  If the Loop user delivers 10 units, Loop will not provide high temp basals until the IOB of the system reaches lower than 8 units.", comment: "Explanation of maximum IOB")
        
        
        if let maximumIOB = maximumIOB {
            value = String(format:"%.1f", maximumIOB)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

