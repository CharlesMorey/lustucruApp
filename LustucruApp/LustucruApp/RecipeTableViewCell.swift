//
//  RecipeTableViewCell.swift
//  LustucruApp
//
//  Created by Charles Morey on 31/05/2018.
//  Copyright © 2018 HeticLustucruTeam. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell, UITableViewDelegate {

    static let identifier = "recipeCellIdentifier"
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
     
    
    
    
    /*
 
     pour que la sélection / déselection fonctionne il faut que ton ViewController
     adopte le propotol UITableViewDelegate (par exemple dans une extionsion)
     
     et tu devras redéfinir la méthode
     
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
     
     à l'intérieur de cette méthode tu devras avoir un code qui ressemble à ça :
     
     {
     if recette.isSelected {
        tableView.deselectRow(at indexPath: indexPath)
     }
     
     }

     
     
     */

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected {
            // background jaune
            // check box
        } else {
            // background bleu
            // pas check box
        }
    }

}
