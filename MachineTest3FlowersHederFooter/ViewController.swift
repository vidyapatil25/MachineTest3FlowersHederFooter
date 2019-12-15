//
//  ViewController.swift
//  MachineTest3FlowersHederFooter
//
//  Created by Felix-ITS016 on 26/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate{
    
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var HeaderLabel: UILabel!
    
    let FlowersArrayIndia = ["Rose","Lilies","Sunflower","Marigold","Lotus"]
    let FlowersArrayUSA = ["Blue Orchid","Carnation Bouquet","Pink Posy","Carnation Bouquet","Exotica"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FlowersArrayIndia.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        // 3
        // Configure the cell...
        switch (indexPath.section) {
        case 0:
            cell.textLabel?.text = FlowersArrayIndia[indexPath.row]
        case 1:
            cell.textLabel?.text = FlowersArrayUSA [indexPath.row]
            // return sectionHeaderView
        default:
            cell.textLabel?.text = "Other"
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40))
        headerView.backgroundColor = UIColor.blue
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 40.0
    }
    
    
   
     
   /* func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        let  headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! CustomHeaderCell
       // HeaderCell.backgroundColor = UIColor.cyan
        
        switch (section) {
        case 0:
           // headerCell.Headerlabel.text = "India"
            HeaderCell.HeaderLabel.text = "India"
        //return sectionHeaderView
        case 1:
            HeaderCell.HeaderLabel.text = "USA"
            //return sectionHeaderView
        default:
            HeaderCell.HeaderLabel.text = "Other"
        }
        
        return HeaderCell
   }*/
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
             let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40))
            footerView.backgroundColor = UIColor.red
    
         return footerView
          }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
         {
         return 40.0
         }
    
   /* func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
    {
    
    }*/
    


 override func viewDidLoad()
   {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }






}
