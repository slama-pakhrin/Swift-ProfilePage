//
//  secondViewController.swift
//  AssignmentOne
//
//  Created by Arii on 2024-02-09.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource {
    

    let imageName : [String] = ["book.pages", "book.pages.fill"]
    let courseName : [String] = ["MAP 523", "BTN 410"]
    let caption : [String] = ["iOS", "Networkin"]
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "My Courses"
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let eachCell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        eachCell.myImage.image = UIImage(systemName: imageName[indexPath.row])
        eachCell.myLabel.text = courseName[indexPath.row]
        eachCell.myCaption.text = caption[indexPath.row]
        return eachCell
    }
    
    
  
}
