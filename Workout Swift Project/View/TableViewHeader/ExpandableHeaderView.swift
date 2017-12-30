//
//  ExpandableHeaderView.swift
//  Workout Swift Project
//
//  Created by Mohamed Shafeek on 28/10/17.
//  Copyright © 2017 Mohamed Shafeek. All rights reserved.
//

import UIKit
protocol ExpandableHeaderViewDelegate {
    func toggleAction(header:ExpandableHeaderView,section:Int)
}

class ExpandableHeaderView: UITableViewHeaderFooterView {
    var delegate:ExpandableHeaderViewDelegate?
    var section:Int!
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.selectHeaderAction) ))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
     Only override draw() if you perform custom drawing.
 adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
         Drawing code
    }
    */
   
    
    
    
    func customInit(title:String,section:Int,delegate:ExpandableHeaderViewDelegate) {
        self.textLabel?.text=title
        self.section=section
        self.delegate=delegate
    }
    
    @objc func selectHeaderAction(gestureRecognizer:UITapGestureRecognizer) {
        let cell = gestureRecognizer.view as! ExpandableHeaderView
        
        delegate?.toggleAction(header: self, section: cell.section)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textLabel?.textColor=UIColor.white
        self.contentView.backgroundColor=UIColor.darkGray
    }
    

}
