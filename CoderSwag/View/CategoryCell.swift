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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
