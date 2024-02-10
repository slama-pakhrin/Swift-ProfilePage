//
//  ViewController.swift
//  AssignmentOne
//
//  Created by Arii on 2024-02-08.
//

import UIKit

class ViewController: UIViewController{
    
    let courseName : [String] = ["CPA", "BSD"]
    let experienceYears : [String] = ["around 1 year", "more than 2 years", "more than 5 years now"]
    let levelAs : [String] = ["Level1", "Level2", "Level3", "Level4", "Level5"]
    
    var courseDisplayName : String?
    var presentLevel = "Level1"
    var experienceName : String?
    
    @IBOutlet weak var course: UISegmentedControl!
    @IBOutlet weak var level: UISegmentedControl!
    @IBOutlet weak var gpaSlider: UISlider!
    @IBOutlet weak var experience: UISegmentedControl!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.placeholder = "Name"
        level.selectedSegmentIndex = 2
        updateOuput()
    }
    
    @IBAction func courseUpdate(_ sender: Any) {
        
        if(course.selectedSegmentIndex == 0){courseDisplayName = courseName[course.selectedSegmentIndex]}
        else{courseDisplayName = courseName[course.selectedSegmentIndex]}
        updateOuput()
    }
    
    @IBAction func levelUpdate(_ sender: Any) {
        
        if(level.selectedSegmentIndex == 0){presentLevel = levelAs[level.selectedSegmentIndex]}
        else if(level.selectedSegmentIndex == 1){presentLevel = levelAs[level.selectedSegmentIndex]}
        else if(level.selectedSegmentIndex == 2){presentLevel = levelAs[level.selectedSegmentIndex]}
        else if(level.selectedSegmentIndex == 3){presentLevel = levelAs[level.selectedSegmentIndex]}
        else{presentLevel = levelAs[level.selectedSegmentIndex]}
        updateOuput()
    }
    
    @IBAction func experienceUpdate(_ sender: Any) {
        
        if(experience.selectedSegmentIndex==0){ experienceName = experienceYears[experience.selectedSegmentIndex]}
        else if(experience.selectedSegmentIndex==1){ experienceName = experienceYears[experience.selectedSegmentIndex]}
        else{ experienceName = experienceYears[experience.selectedSegmentIndex]}
        updateOuput()
    }
    
    @IBAction func sliderUpdate(_ sender: Any) {
        updateOuput()
    }
    @IBAction func nameUpdate(_ sender: Any) {
        updateOuput()
    }
    
    func updateOuput(){
        output.text = "My name is \( nameField.text ?? "Salon"). I am in \(courseName[course.selectedSegmentIndex]) \(levelAs[level.selectedSegmentIndex]) with the current GPA of \(gpaSlider.value). My background in iOS is \(experienceYears[experience.selectedSegmentIndex])."
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
//        performSegue(withIdentifier: "push", sender: nil)
    }
    
}
