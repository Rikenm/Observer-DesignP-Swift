//
//  IObservable.swift
//  Observer Pattern Timer
//
//  Created by Riken Maharjan on 8/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import Foundation

protocol IObservable {
    
   func add(observer:IObserver)
    
   func notify()
    
}
