//
//  ViewController.swift
//  LustucruApp
//
//  Created by Charles Morey on 30/05/2018.
//  Copyright © 2018 HeticLustucruTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var recipeFirstSelected : String = ""
     @IBOutlet weak var labelRecipeSelected: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.labelRecipeSelected.text = self.recipeFirstSelected
    }

   
    
}

