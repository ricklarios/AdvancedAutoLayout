//
//  ModifyConstraitsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Rick Larios on 17/6/22.
//

import UIKit

class ModifyConstraitsViewController: UIViewController {

	@IBOutlet weak var heightConstraints: NSLayoutConstraint!
	@IBOutlet weak var topConstraints: NSLayoutConstraint!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		// Aunque hemos definido por pantalla que su constraint sea 100 podemos indicarle por código que sea 300, p.ej., de forma que al lanzar la App veremos que tiene altura 300
		heightConstraints.constant = 300
		
		topConstraints.constant = 64
    }
    

}
