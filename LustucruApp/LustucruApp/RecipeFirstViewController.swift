//
//  RecipeFirstViewController.swift
//  LustucruApp
//
//  Created by Charles Morey on 07/06/2018.
//  Copyright © 2018 HeticLustucruTeam. All rights reserved.
//

import UIKit

class RecipeFirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myElementsList : [String] = [
    "Pates1",
    "Pates3",
    "Pates2",
    "PatesE",
    "Pates4"
    ]
    @IBOutlet weak var myTableView: UITableView!
    
    
    // ici on rend le total d'élement à affciher
    // Si mise à jour à faire, appeler
    // self.myTableView.reloadData()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return self.myElementsList.count
    }
    
    //ici on charge chaque cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeOne") as! RecipeOneTableViewCell
        
        //ici tes actions sur la cell
        cell.textLabel?.text = self.myElementsList[indexPath.item]
        cell.detailTextLabel?.text = "Je suis uin help label"
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let root = self.navigationController?.viewControllers[0] as! ViewController
        
        let cell = self.myTableView.cellForRow(at: indexPath) as? RecipeOneTableViewCell
        
        root.recipeFirstSelected = (cell?.textLabel?.text)!
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
