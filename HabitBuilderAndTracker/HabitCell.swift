//
//  HabitCell.swift
//  HabitBuilderAndTracker
//
//  Created by Woulfe, Edmond   (woulf002) on 5/14/19.
//  Copyright © 2019 akhil. All rights reserved.
//

import UIKit

class HabitCell: UITableViewCell {
    @IBOutlet weak var habitNameLabel: UILabel!
    
    
    
    func setHabit(habit: Habit){
        habitNameLabel.text = habit.name
    }
}
