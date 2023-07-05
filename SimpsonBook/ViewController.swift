//
//  ViewController.swift
//  SimpsonBook
//
//  Created by İrem Sever on 12.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabView: UITableView!
    var mySimpson = [Simpson]()
    var choosenSim : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabView.delegate = self
        tabView.dataSource = self
        
        let homer = Simpson(sName: "Homer Simpson", sJob: "Nuclear Safety", sImg: UIImage(named: "HomerSimpson")!)
        let marge = Simpson(sName: "Marge Simpson", sJob: "Housewife", sImg: UIImage(named: "MargeSimpson")!)
        let bart = Simpson(sName: "Bart Simpson", sJob: "Student", sImg: UIImage(named: "BartSimpson")!)
        let lisa = Simpson(sName: "Lisa Simpson", sJob: "Student", sImg: UIImage(named: "LisaSimpson")!)
        let maggie = Simpson(sName: "Maggie Simpson", sJob: "Baby", sImg: UIImage(named: "MargaretSimpson")!)
        let santa = Simpson(sName: "Santa", sJob: "Dog", sImg: UIImage(named: "Santas")!)
        let snowball = Simpson(sName: "Snowball", sJob: "Cat", sImg: UIImage(named: "Snowball")!)
        
        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        mySimpson.append(santa)
        mySimpson.append(snowball)
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenSim = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let desVC = segue.destination as! detailsVC
            desVC.selSimpson = choosenSim
        }
            
    }


}

