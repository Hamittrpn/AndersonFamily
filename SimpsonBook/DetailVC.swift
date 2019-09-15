//
//  DetailVC.swift
//  SimpsonBook
//
//  Created by Hamit  Tırpan on 15.09.2019.
//  Copyright © 2019 Hamit  Tırpan. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedCharacter : Characters? //Opsiyonel yapmak için ? ekledim.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedCharacter?.name
        jobLabel.text = selectedCharacter?.job
        imageView.image = selectedCharacter?.image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
