//
//  AddToDoViewController.swift
//  EcoFocus
//
//  Created by blub on 6/17/22.
//  Copyright © 2022 Kaneera. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    
  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var importantSwitch: UISwitch!

  override func viewDidLoad() {
    super.viewDidLoad()

  }

    @IBAction func addTapped(_ sender: Any) {
      let toDo = ToDo()

      if let titleText = titleTextField.text {
        toDo.name = titleText
        toDo.important = importantSwitch.isOn
      }
      previousVC.toDos.append(toDo)
      previousVC.tableView.reloadData()
      navigationController?.popViewController(animated: true)
    }
        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
