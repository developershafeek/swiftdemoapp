//
//  TinderCardVC.swift
//  Workout Swift Project
//
//  Created by Mohamed Shafeek on 16/12/17.
//  Copyright © 2017 Mohamed Shafeek. All rights reserved.
//

import UIKit

class TinderCardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func panGestureDrag(_ sender: UIPanGestureRecognizer) {
        
            let card = sender.view!
        let point = sender.translation(in: self.view)
    
        
        card.center = CGPoint(x: self.view.center.x + point.x, y: self.view.center.y + point.y)
        
        if card.center.x - card.frame.width - 5 > 0
        {
            card.backgroundColor = UIColor.brown
        
           
            
        }
        else{
           card.backgroundColor = UIColor.green
           
        }
        if sender.state == .ended
        {
            UIView.animate(withDuration: 0.2, animations: {
                
               card.center = self.view.center
               card.backgroundColor = UIColor.gray
                
            })
            
        }
        
    }

    

}
