//
//  ViewController.swift
//  Workout Swift Project
//
//  Created by Mohamed Shafeek on 28/10/17.
//  Copyright © 2017 Mohamed Shafeek. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,ExpandableHeaderViewDelegate
{
    
    @IBOutlet weak var tableView: UITableView!
var sections = [DemoRecord(heading: "Title 1", values: ["a","b","c"], isExpanded: false),DemoRecord(heading: "Title 2", values: ["d","e","f"], isExpanded: false),DemoRecord(heading: "Title 3", values: ["g","h","i"], isExpanded: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
       return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "collapsecell")!
        cell.textLabel?.text = sections[indexPath.section].values[indexPath.row]

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if sections[indexPath.section].isExpanded {
            return 44
        }
        else{
            
            return 0
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ExpandableHeaderView()
        header.customInit(title: sections[section].heading, section: section, delegate: self)
        return header
    }


    func toggleAction(header: ExpandableHeaderView, section: Int) {
        for i in 0..<sections.count {
            if section != i{
                sections[i].isExpanded = false
            }
        }
//        sections[section].values[2]="shafi"
        sections[section].isExpanded = !sections[section].isExpanded
        self.tableView.reloadSections([section], with: .automatic)
    }


}

