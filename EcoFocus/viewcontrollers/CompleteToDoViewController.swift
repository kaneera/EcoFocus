//
//  CompleteToDoViewController.swift
//  EcoFocus
//
//  Created by blub on 6/17/22.
//  Copyright © 2022 Kaneera. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
  @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
      super.viewDidLoad()

      titleLabel.text = selectedToDo.name
    }

}
  @IBAction func completeTapped(_ sender: Any)
{
    
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


