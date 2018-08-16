//
//  TabTwo.swift
//  Observer Pattern Timer
//
//  Created by Riken Maharjan on 8/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import Foundation
import UIKit

class TabTwo: UIViewController, IObserver{
    
    
    @IBOutlet weak var timer: UILabel!
    
    
    var station: ViewController!
    
    func update(time:String) {
        
        print(time)
        
        
        
    }
    
    
    
    
    
    
    
}
