//
//  ImageSeparatorVC.swift
//  Workout Swift Project
//
//  Created by Mohamed Shafeek on 19/12/17.
//  Copyright © 2017 Mohamed Shafeek. All rights reserved.
//

import UIKit

class ImageSeparatorVC: UIViewController {

    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageArr = Array(arrayLiteral: UIColor.black,UIColor.green,UIColor.red,UIColor.blue)
           let width = Int(contentView.frame.size.width)/imageArr.count
           let height = Int(contentView.frame.size.height)/imageArr.count
        let size = width + height
        var frame = CGRect()
        for i in 0..<imageArr.count
        {
        let imgView = UIImageView(frame: CGRect(x: i * Int(frame.origin.x), y: i * Int(frame.origin.y)  , width: width, height:height))
            imgView.backgroundColor = imageArr[i]
            contentView.addSubview(imgView)
            frame = imgView.frame
            
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
