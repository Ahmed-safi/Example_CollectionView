//
//  CollVCell.swift
//  collectionView
//
//  Created by Mac-1 on 12/29/21.
//

import UIKit

class CollVCell: UICollectionViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    
    func setupCell(photo: UIImage, names: String){
        img.image = photo
        name.text = "\(names)"
    }
}
