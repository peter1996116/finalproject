//
//  uploadpaper.swift
//  finalproject
//
//  Created by 金陳廷 on 2019/6/23.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit

import FirebaseDatabase





class uploadpaper: UIViewController {
    
    
    
    @IBOutlet weak var texts: UITextField!
    
    @IBOutlet weak var content: UITextView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    

    @IBAction func uploadaction(_ sender: Any) {
        if texts.text != "" {
            var ref: DatabaseReference!
            ref = Database.database().reference()
            
           
            ref.child("people").childByAutoId().setValue(["name": texts.text,"content": content.text])
        }
        else {
            
        }
    }
    

    
}
