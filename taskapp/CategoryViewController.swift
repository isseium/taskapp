//
//  CategoryViewController.swift
//  taskapp
//
//  Created by Issei Komatsu on 2016/10/05.
//  Copyright © 2016年 Issei Komatsu. All rights reserved.
//

import UIKit
import RealmSwift

class CategoryViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    let realm = try! Realm()
    var category:Category!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        try! realm.write {
            self.category.title = self.nameTextField.text!
            self.realm.add(self.category, update: true)
        }
        
        super.viewWillDisappear(animated)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
