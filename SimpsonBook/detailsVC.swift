//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by İrem Sever on 12.04.2023.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var charImg: UIImageView!
    
    @IBOutlet weak var nameLab: UILabel!
    @IBOutlet weak var jobLab: UILabel!
    
    var selSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLab.text = selSimpson?.name
        jobLab.text = selSimpson?.job
        charImg.image = selSimpson?.img
        
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
