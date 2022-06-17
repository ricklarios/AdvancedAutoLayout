//
//  CreateConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Rick Larios on 17/6/22.
//

import UIKit

class CreateConstraintsViewController: UIViewController {

	@IBOutlet weak var yellowView: UIView!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

		// Creamos constraints de tamaño programáticamente
		yellowView.heightAnchor.constraint(equalToConstant: 200).isActive = true
		yellowView.widthAnchor.constraint(equalToConstant: 200).isActive = true
		
		// Creamos constraints de posición programáticamente
			yellowView.translatesAutoresizingMaskIntoConstraints = false // IMPORTANTE -> Porque vamos a definir las constraints mediante código
			
			// Podemos definir las constraints respecto a la VIEW a la que pertenece
			view.addConstraint(NSLayoutConstraint(item: yellowView!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
			
			// Otra forma más sencilla es definirlas respecto al elemento en concreto
			yellowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
		
			
    }
    

   

}
