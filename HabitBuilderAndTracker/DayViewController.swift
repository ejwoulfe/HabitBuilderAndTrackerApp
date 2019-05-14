//
//  DayView.swift
//  HabitBuilderAndTracker
//
//  Created by Woulfe, Edmond   (woulf002) on 5/7/19.
//  Copyright © 2019 akhil. All rights reserved.
//

import UIKit


class DayViewController: UIViewController{
    
    @IBOutlet weak var habitTable: UITableView!
    @IBOutlet weak var addNewHabitButton: UIButton!
    @IBAction func backToCalendarButtonPressed(_ sender: Any) {
        habitTable.reloadData()
        self.dismiss(animated: true, completion: {});
        //self.navigationController?.popViewController(animated: true);
        

        
    }
    
    
    var habitTableArray: [Habit] = []

    

    override func viewDidLoad() {
        super.viewDidLoad()
        habitTable.tableFooterView = UIView(frame: CGRect.zero)
        habitTable.delegate = self
        habitTable.dataSource = self
        let newHabit = Habit(name: "Gym")
        habitTableArray.append(newHabit)


    }
   

    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addSegue"{
            let newHabitViewController = segue.destination as! newHabitViewController
            newHabitViewController.parentView = self
            newHabitViewController.update = { (habit) in
                let newHabit = Habit(name: habit)
                self.habitTableArray.append(newHabit)
              
                self.habitTable.reloadData()
            
                
                
            }
            
        
        }
    }
   

    
}
extension DayViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habitTableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let habit = habitTableArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "HabitCell") as! HabitCell
        cell.setHabit(habit: habit)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(60)
    }
    override func viewWillAppear(_ animated: Bool) {
        habitTable.reloadData()
    }
    
    
    
}





