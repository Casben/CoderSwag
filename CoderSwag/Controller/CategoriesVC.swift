//
//  ViewController.swift
//  CoderSwag
//
//  Created by Herbert Dodge on 4/1/21.
//

import UIKit

class CategoriesVC: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var categoryTable: UITableView!

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: - Helpers
    
    func configure() {
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }


}

extension CategoriesVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
}
