//
//  ViewController.swift
//  Observer Pattern Timer
//
//  Created by Riken Maharjan on 8/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

class ViewController: UITabBarController, IObservable {
    
    
    var time = 0
    
    
    
    var timer: Timer!
    
    
    var observerList = [IObserver]()
    
    
    func add(observer: IObserver) {
        self.observerList.append(observer)
    }
    
    
    
    func notify() {
        
        _ = observerList.map{
            (observer) in
            
            observer.update(time: String(self.time))
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        _ = viewControllers
//        for vc  in (allViewControllers)!{
//            if let vc = vc as? TabOne{
//                vc?.station = self
//
//            }else{
//
//
//            }
//
//            observerList.append(vc)
//
//
//
//        }
        
        
        let vcOne = viewControllers![0] as! TabOne
        let vcTwo = viewControllers![1] as! TabTwo
        
        observerList.append(vcOne)
        observerList.append(vcTwo)
        //
        
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        
        
        
        
    }

    
    
 
    
    @objc func action(){
        
        time += 1
        
        notify()
       
        
    }

}

