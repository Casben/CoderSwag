//
//  DataService.swift
//  CoderSwag
//
//  Created by Herbert Dodge on 4/3/21.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Red", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    enum CategoryTitle: String {
        case shirts = "SHIRTS"
        case hoodies = "HOODIES"
        case hats = "HATS"
        case digital = "DIGITAL"
        
        var products: [Product] {
            switch self {
            case .shirts:
                return DataService.instance.shirts
            case .hoodies:
                return DataService.instance.hoodies
            case .hats:
                return DataService.instance.hats
            case .digital:
                return DataService.instance.digitalGoods
            }
        }
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategory title: CategoryTitle) -> [Product] {
        switch title {
        case .shirts:
            return title.products
        case .hoodies:
            return title.products
        case .hats:
            return title.products
        case .digital:
            return title.products
        }
    }
}
