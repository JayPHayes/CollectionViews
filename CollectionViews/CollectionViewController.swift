//
//  CollectionViewController.swift
//  CollectionViews
//
//  Created by Jay P. Hayes on 12/28/16.
//  Copyright © 2016 Jay P. Hayes. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var imagesX = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg"]
    
    
    var images = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        let screenSize: CGRect =  UIScreen.main.bounds
        var widthScreen = 0
        var heightScreen = 0
        
        
        /// iPHone 3.5 inch
        if  screenSize.width == 320 {
            widthScreen = 80
            heightScreen = 80
        }
        
        /// iPHone 4 inch
        if  screenSize.width == 320 {
            widthScreen = 80
            heightScreen = 80
        }
        
        /// iPHone 4.7 inch
        if  screenSize.width == 375 {
            widthScreen = 100
            heightScreen = 100
        }
        
        /// iPHone 5.5 inch
        if  screenSize.width == 414 {
            widthScreen = 110
            heightScreen = 110
        }
        
        /// iPad mini
        if  screenSize.width == 768 {
            widthScreen = 170
            heightScreen = 170
        }
        
        /// iPad pro
        if  screenSize.width == 1024 {
            widthScreen = 170
            heightScreen = 170
        }
        
        return CGSize(width: widthScreen, height: heightScreen)
    }
    
    
    func collectionViewX(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionView, sizeForitemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let screenSize: CGRect =  UIScreen.main.bounds
        var widthScreen = 0
        var heightScreen = 0
        
        
        /// iPHone 3.5 inch
        if  screenSize.width == 320 {
            widthScreen = 80
            heightScreen = 80
        }

        /// iPHone 4 inch
        if  screenSize.width == 320 {
            widthScreen = 80
            heightScreen = 80
        }

        /// iPHone 4.7 inch
        if  screenSize.width == 375 {
            widthScreen = 100
            heightScreen = 100
        }
       
        /// iPHone 5.5 inch
        if  screenSize.width == 414 {
            widthScreen = 110
            heightScreen = 110
        }
        
        /// iPad mini
        if  screenSize.width == 768 {
            widthScreen = 170
            heightScreen = 170
        }
        
        /// iPad pro
        if  screenSize.width == 1024 {
            widthScreen = 170
            heightScreen = 170
        }
        
        return CGSize(width: widthScreen, height: heightScreen)
        
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imgItem.image = UIImage(named: images[indexPath.row])
    
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor(red: 91/255, green: 89/255, blue: 83/255, alpha: 0.5).cgColor
        // Configure the cell
    
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
