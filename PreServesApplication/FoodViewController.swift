//
//  FoodViewController.swift
//  PreServesApplication
//
//  Created by Maggie Grether on 7/21/21.
//

import UIKit

class FoodViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let food = ["Slightly stale bread", "3 servings leftover rice", "Extra lemons from tree", "Carrots", "Honey, used once", "Stirfry noodles: 5 leftover servings", "Jam: opened but unused", "Slightly bruised apples", "Biscuits"]
    
    let foodImages: [UIImage] = [
        UIImage(named: "bread")!,
        UIImage(named: "rice")!,
        UIImage(named: "lemons")!,
        UIImage(named: "carrots")!,
        UIImage(named: "honey")!,
        UIImage(named: "noodles")!,
        UIImage(named: "jam")!,
        UIImage(named: "apples")!,
        UIImage(named: "biscuits")!
    ]
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return food.count
        }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
            
            cell.foodLabel.text = food[indexPath.item]
            cell.foodImageView.image = foodImages[indexPath.item]
            return UICollectionViewCell()
        }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
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
