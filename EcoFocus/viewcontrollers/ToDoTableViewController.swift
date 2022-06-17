//
//  ToDoTableViewController.swift
//  EcoFocus
//
//  Created by blub on 6/16/22.
//  Copyright © 2022 Kaneera. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
        }
    
        func createToDos() -> [ToDo] {

          let swift = ToDo()
          swift.name = "Drink water"
          swift.important = true

          let dog = ToDo()
          dog.name = "Read a book"
          // important is set to false by default

          return [swift, dog]
        }
        
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let toDo = toDos[indexPath.row]

      if toDo.important {
        cell.textLabel?.text = "❗️" + toDo.name
      } else {
        cell.textLabel?.text = toDo.name
      }

      return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let toDo = toDos[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddToDoViewController {
        addVC.previousVC = self
      }

      if let completeVC = segue.destination as? CompleteToDoViewController {
        if let toDo = sender as? ToDo {
          completeVC.selectedToDo = toDo
          completeVC.previousVC = self
        }
      }
    }
}
