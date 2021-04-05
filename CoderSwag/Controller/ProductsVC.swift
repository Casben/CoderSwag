//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Herbert Dodge on 4/4/21.
//

import UIKit

class ProductsVC: UIViewController {
    
    //MARK: - Properties
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        productsCollection.dataSource = self
        productsCollection.delegate = self
        
    }
    
    func initProducts(_ category: Category) {
        let varifiedCategory = DataService.CategoryTitle.init(rawValue: category.title)!
        products = DataService.instance.getProducts(forCategory: varifiedCategory)
        navigationItem.title = category.title
    }

}

extension ProductsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
}

