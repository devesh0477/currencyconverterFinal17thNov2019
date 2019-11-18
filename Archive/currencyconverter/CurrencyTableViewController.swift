//
//  CurrencyTableViewController.swift
//  currencyconverter
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CurrencyTableViewController: UITableViewController // subclass to UITableViewController
{

    var val:String = "USD"
    //var val:String = ""
    //@IBOutlet weak var usernamelabel: UILabel!
    let CountryNames = ["USD" , "INR" , "EUR" , "CAD"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

      
    }
      override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

//     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return CountryNames.count
        }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell
        {
        let cell = tableView.dequeueReusableCell(
        withIdentifier: "countryList",for: indexPath)
            //cell.textLabel?.text = "hgjghjghj"
            cell.textLabel?.text = CountryNames[indexPath.row]
            cell.textLabel?.text = CountryNames[indexPath.row]
            return cell
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        self.val = CountryNames[indexPath.row]

    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
    
    @IBAction func press(_ sender: Any) {
         _ = navigationController?.popToRootViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
            if(vc!.check){
                vc?.value = self.val
            } else{
               vc?.value1 = self.val
            }
            
        }
    }
    
    
}
