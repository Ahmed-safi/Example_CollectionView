//
//  ViewController.swift
//  collectionView
//
//  Created by Mac-1 on 12/29/21.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
 
    @IBOutlet weak var collectionView: UICollectionView!
    var arrCont = [cont]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrCont.append(cont (photo: UIImage(named: "Steve_Jobs")!, names: "Steve Jobs"))
        arrCont.append(cont (photo: UIImage(named: "Steve_Jobs")!, names: "Steve Jobs"))
        arrCont.append(cont (photo: UIImage(named: "Steve_Jobs")!, names: "Steve Jobs"))
        arrCont.append(cont (photo: UIImage(named: "Steve_Jobs")!, names: "Steve Jobs"))
        
        arrCont.append(cont (photo: UIImage(named: "Satya_Nadella")!, names: "Satya Nadella"))
        arrCont.append(cont (photo: UIImage(named: "Satya_Nadella")!, names: "Satya Nadella"))
        arrCont.append(cont (photo: UIImage(named: "Satya_Nadella")!, names: "Satya Nadella"))
        arrCont.append(cont (photo: UIImage(named: "Satya_Nadella")!, names: "Satya Nadella"))
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCont.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollVCell
        let photos = arrCont[indexPath.row]
        cell.setupCell(photo: photos.photo, names: photos.names)
        cell.img.layer.cornerRadius = 58.0
        return cell
    }
    
    private func collectionView(_ collectionView: UICollectionView , layout collectionViewLayout: UICollectionViewDelegateFlowLayout , sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.2, height: self.view.frame.width * 0.2)
    }
    
}

struct cont {
    let photo : UIImage
    let names : String
}
