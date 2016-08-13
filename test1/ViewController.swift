//
//  ViewController.swift
//  test1
//
//  Created by Angela Cartagena on 13/08/2016.
//  Copyright © 2016 acicartagena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.estimatedRowHeight = 100
            tableView.rowHeight = UITableViewAutomaticDimension
            tableView.tableFooterView = UIView()
        }
    }
    let titleArray = ["hello","hello hello","hello \n hello \n hello"]
    let descriptionArray = ["aldfja ;lskdfj ;alskdfj a;lskd jfal;skd fa;lsdk fjals;df jaslfja slkajs dla;ksj faklf ja",
                            "alsdkfj as;ldkfj a;sldkfj a;lsdkfj asl;dkfj as;ldfkj asldkfj alskdjf alskjdf a;lskdjf alskdf al;kjf alskdjf al;f ",
                            "a;ldkfj a;dsklf a"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableViewCell.reuseIdentifier) as! TableViewCell
        cell.titleLabel.text = titleArray[indexPath.row]
        cell.descriptionLabel.text = descriptionArray[indexPath.row]
        return cell
    }
}

