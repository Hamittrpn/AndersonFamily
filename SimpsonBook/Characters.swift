//
//  Characters.swift
//  SimpsonBook
//
//  Created by Hamit  Tırpan on 15.09.2019.
//  Copyright © 2019 Hamit  Tırpan. All rights reserved.
//

import Foundation
import UIKit

 class Characters{
    
    var name : String
    var job : String
    var image : UIImage
    
    init(nameInit : String, jobInit : String, imageInit : UIImage) {
        name = nameInit
        job = jobInit
        image = imageInit
    }
    
}
