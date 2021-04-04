//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Herbert Dodge on 4/3/21.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    //MARK: - Properties
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
