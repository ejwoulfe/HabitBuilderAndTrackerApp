//
//  DayView.swift
//  HabitBuilderAndTracker
//
//  Created by Woulfe, Edmond   (woulf002) on 5/7/19.
//  Copyright © 2019 akhil. All rights reserved.
//

import UIKit

class Habits{
    var habitName: String?
    var habitDuration: String?
    
    init(hName:String, hDuration:String) {
        self.habitName = hName
        self.habitDuration = hDuration
    }
    
}

class DayViewController: UIViewController{
    
    @IBOutlet weak var addNewHabitButton: UIButton!
    
  
    //
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "habitsTable")
//        if cell == nil{
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "habitsTable")
//        }
//        cell?.textLabel?.text = "Gym"
//        cell?.detailTextLabel?.text = "Weekdays"
//
//        return cell!
//
//    }
//
   @IBOutlet weak var habitTable: UITableView!
    @IBAction func backToCalendarButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: {});
        self.navigationController?.popViewController(animated: true);
    }
    //
//
//    var habitArray = [Habits]()
//
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    

}

