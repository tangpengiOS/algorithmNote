//
//  MergeSort_Controller.swift
//  AlgorithmNoteProject
//
//  Created by 汤鹏 on 2019/5/15.
//  Copyright © 2019 asdfjasdjfkasldjf. All rights reserved.
//

import UIKit

class MergeSort_Controller: UIViewController {

    @IBOutlet weak var firstLB: UILabel!
    
    @IBOutlet weak var secondLB: UILabel!
    
    var arr : [Int] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arr = [3,5,7,8,2,4,1,6]
        firstLB.text = String.init(format: "%@", arr)
    }
    
    @IBAction func click(_ sender: Any) {
        

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
