//
//  ProductCell.swift
//  CoderSwag
//
//  Created by Herbert Dodge on 4/4/21.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
