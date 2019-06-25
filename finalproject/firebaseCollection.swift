//
//  firebaseCollection.swift/Users/jinchenting/Desktop/柏喻/finalproject/finalproject/Collectionphoto.swift
//  finalproject
//
//  Created by 金陳廷 on 2019/6/19.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit

import FirebaseDatabase
import FirebaseStorage

private let reuseIdentifier = "Cell"

class firebaseCollection: UICollectionViewController {



    
    
    var fireUploadDic: [String:Any]?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        
        self.collectionView!.register(Collectionphoto.self, forCellWithReuseIdentifier: "Collectionphoto")
        
        // Do any additional setup after loading the view.
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       

        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier:     "Collectionphoto", for: indexPath) as! Collectionphoto
        
        
        
        let storageRef = Storage.storage().reference()
        let islandRef = storageRef.child("AppCodaFireUpload/1.png")
        
        cell.imagess?.image = UIImage( named : "1")
        
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
