//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Hamit  Tırpan on 15.09.2019.
//  Copyright © 2019 Hamit  Tırpan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var andersonFamily = [Characters]()
    var chosenCharacter : Characters? //Opsiyonel yaptım
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tableView.delegate = self
        tableView.dataSource = self
        
        
        //Character Objects
        let louie = Characters(nameInit: "Louie Anderson", jobInit: "Student", imageInit: UIImage(named: "louieAnderson")!)
        let andy = Characters(nameInit: "Andy Anderson", jobInit: "Soldier", imageInit: UIImage(named: "andyAnderson")!)
        let ora = Characters(nameInit: "Ora Anderson", jobInit: "Housewife", imageInit: UIImage(named: "oraAnderson")!)
        
        andersonFamily.append(louie)
        andersonFamily.append(ora)
        andersonFamily.append(andy)
    }
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return andersonFamily.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = andersonFamily[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCharacter = andersonFamily[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            let destinationVC = segue.destination as? DetailVC
            destinationVC?.selectedCharacter = chosenCharacter 
        }
    }
    

}

