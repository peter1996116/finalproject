//
//  showcontent.swift
//  finalproject
//
//  Created by 金陳廷 on 2019/6/25.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class showcontent: UIViewController {
    @IBOutlet weak var content: UITextView!
    
    @IBOutlet weak var names: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var datas : Array<Any> = []
        
        let tryDatabase = Database.database().reference(withPath: "/people")
        
        tryDatabase.observeSingleEvent(of: .value, with: {(snapshot) in
            
        if let snapshots = snapshot.children.allObjects as? [DataSnapshot]{
                for snap in snapshots{
                var key = snap.key
                   let tempData = snap.value as? Dictionary<String, String>
                   var  datass = snap.children.allObjects
                    let act = [ "key": key, "name": tempData!["name"] as! String,     "content": tempData!["content"] as! String]
                    datas.append(act)
                    self.names.text=act["name"]
                    self.content.text=act["content"]
                    
                   print(datas)
                }}})
        
        
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
