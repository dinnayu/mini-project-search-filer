//
//  ItemCell.swift
//  mini-project-search-filter
//
//  Created by Dinna Ayu Karunniawati on 9/18/18.
//  Copyright © 2018 Dinna Ayu Karunniawati. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.productPrice.textColor = UIColor(red: 0.6, green: 0.0, blue: 0.0, alpha: 1)
        // Initialization code
    }
    
    func setData(title: String, urlImage: String, price: String){
        print(title)
        let url = URL(string: urlImage)
        let data = try? Data(contentsOf: url!)
        self.productImage.image = UIImage(data: data!)
        self.textLabel.text = title
        self.productPrice.text = price
    }

}
