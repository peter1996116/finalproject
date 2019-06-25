//
//  showdata.swift
//  finalproject
//
//  Created by 金陳廷 on 2019/6/25.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit
import FirebaseStorage

class showdata: UIViewController {
    @IBOutlet weak var images: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let islandRef = Storage.storage().reference().child("AppCodaFireUpload/1.png")
        
        // Download in memory with a maximum allowed size of 1MB (1 * 1024 * 1024 bytes)
        islandRef.getData(maxSize: 1 * 1024 * 1024) { data, error in
            if error != nil {
                // Uh-oh, an error occurred!
            } else {
                // Data for "images/island.jpg" is returned
                self.images.image = UIImage(data: data!)
            }
        }
        
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
