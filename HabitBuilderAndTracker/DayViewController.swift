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
class DayViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var addHabitButton: UIButton!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habitArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "habitsTable")
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "habitsTable")
        }
        cell?.textLabel?.text = habitArray[indexPath.row].habitName
        cell?.detailTextLabel?.text = habitArray[indexPath.row].habitDuration
        
        return cell!
        
    }
    
    @IBOutlet weak var habitTable: UITableView!
    @IBAction func addButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Add Habit", message: nil, preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Monday", style: .default, handler: { (action) -> Void in
            print("Monday Selected!")
        })
        alert.addTextField()
        alert.addTextField()
        alert.addAction(action1)
        
        alert.textFields![0].placeholder = "Enter habit"
        alert.textFields![0].keyboardType = UIKeyboardType.default
        alert.textFields![1].placeholder = "Enter Days"
        alert.textFields![1].keyboardType = UIKeyboardType.default
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {(action) in
            print("Cancelled")
        }))
//        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: {(action) in
//            let habitText = alert.textFields![0].text
//            let habitDays = alert.textFields![1].text
//
//
//        }))
        self.present(alert, animated: true)
    }
    
    var habitArray = [Habits]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        habitTable.dataSource = self
        habitTable.delegate = self
    }
    
    
    
    
    

}

