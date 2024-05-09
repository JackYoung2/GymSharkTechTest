//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation

public struct Product: Codable, Identifiable, Equatable {
    public let id: Int
    public let sku: String
    public let inStock: Bool
    public let sizeInStock: [Size]?
    public let availableSizes: [AvailableSize]
    public let handle: String
    public let title: String
    public let description: String
    public let type: String
    public let gender: [String]
    public let fit: String?
    public let labels: [String]?
    public let colour: String
    public let price: Int
    public let compareAtPrice: Int?
    public let discountPercentage: Int?
    public let featuredMedia: Media
    public let media: [Media]
    public let objectID: String
    
    public init(
        id: Int,
        sku: String,
        inStock: Bool,
        sizeInStock: [Size]?,
        availableSizes: [AvailableSize],
        handle: String,
        title: String, 
        description: String,
        type: String,
        gender: [String],
        fit: String? = nil,
        labels: [String]? = [], 
        colour: String,
        price: Int,
        compareAtPrice: Int? = nil,
        discountPercentage: Int? = nil,
        featuredMedia: Media,
        media: [Media],
        objectID: String
    ) {
        self.id = id
        self.sku = sku
        self.inStock = inStock
        self.sizeInStock = sizeInStock
        self.availableSizes = availableSizes
        self.handle = handle
        self.title = title
        self.description = description
        self.type = type
        self.gender = gender
        self.fit = fit
        self.labels = labels
        self.colour = colour
        self.price = price
        self.compareAtPrice = compareAtPrice
        self.discountPercentage = discountPercentage
        self.featuredMedia = featuredMedia
        self.media = media
        self.objectID = objectID
    }
}

//
//"id": 6732609257571,
//"sku": "B3A3E",
//"inStock": true,
//"sizeInStock": ["xs", "l", "xl", "xxl"],
//"availableSizes": [
//  {
//    "id": 39814344835171,
//    "inStock": true,
//    "inventoryQuantity": 1,
//    "price": 1000,
//    "size": "xs",
//    "sku": "B3A3E-UBCY-XS"
//  },
//  {
//    "id": 39814344867939,
//    "inStock": false,
//    "inventoryQuantity": 0,
//    "price": 1000,
//    "size": "s",
//    "sku": "B3A3E-UBCY-S"
//  },
//  {
//    "id": 39814344900707,
//    "inStock": false,
//    "inventoryQuantity": 0,
//    "price": 1000,
//    "size": "m",
//    "sku": "B3A3E-UBCY-M"
//  },
//  {
//    "id": 39814344933475,
//    "inStock": true,
//    "inventoryQuantity": 1,
//    "price": 1000,
//    "size": "l",
//    "sku": "B3A3E-UBCY-L"
//  },
//  {
//    "id": 39814344966243,
//    "inStock": true,
//    "inventoryQuantity": 1,
//    "price": 1000,
//    "size": "xl",
//    "sku": "B3A3E-UBCYXL"
//  },
//  {
//    "id": 39814344999011,
//    "inStock": true,
//    "inventoryQuantity": 1,
//    "price": 1000,
//    "size": "xxl",
//    "sku": "B3A3E-UBCY-XXL"
//  }
//],
//"handle": "gymshark-speed-leggings-navy-ss22",
//"title": "Speed Leggings",
//"description": "<meta charset=\"utf-8\">\n<p data-mce-fragment=\"1\"><strong data-mce-fragment=\"1\">RUN WITH IT</strong></p>\n<p data-mce-fragment=\"1\"><br data-mce-fragment=\"1\">Your run requires enduring comfort and support, so step out and hit the road in Speed. Made with zero-distractions and lightweight, ventilating fabrics that move with you, you can trust in Speed no matter how far you go.</p>\n<p data-mce-fragment=\"1\"> <br data-mce-fragment=\"1\"></p>\n<p data-mce-fragment=\"1\"><br data-mce-fragment=\"1\">- Full length legging<br data-mce-fragment=\"1\">- High-waisted<br data-mce-fragment=\"1\">- Compressive fit<br data-mce-fragment=\"1\">- Internal adjustable elastic/drawcord at front waistband<br data-mce-fragment=\"1\">- Pocket to back of waistband<br data-mce-fragment=\"1\">- Reflective Gymshark sharkhead logo to ankle<br data-mce-fragment=\"1\">- Main: 88% Polyester 12% Elastane. Internal Mesh: 76% Nylon 24% Elastane<br data-mce-fragment=\"1\">- We've cut down our use of swing tags, so this product comes without one<br data-mce-fragment=\"1\">- Model is <meta charset=\"utf-8\"><span data-mce-fragment=\"1\" lang=\"EN-GB\" class=\"TextRun SCXP103297068 BCX0\" data-contrast=\"none\" data-usefontface=\"true\" xml:lang=\"EN-GB\"><span data-mce-fragment=\"1\" class=\"NormalTextRun SCXP103297068 BCX0\">5'3\" and wears a size M</span></span><br data-mce-fragment=\"1\">- SKU: B3A3E-UBCY</p>",
//"type": "Womens Leggings",
//"gender": ["f"],
//"fit": null,
//"labels": null,
//"colour": "Navy",
//"price": 1000,
//"compareAtPrice": null,
//"discountPercentage": null,
//"featuredMedia": {
//  "admin_graphql_api_id": "gid://shopify/ProductImage/29035954831459",
//  "alt": null,
//  "created_at": "2022-04-06T15:19:54+01:00",
//  "height": 2018,
//  "id": 29035954831459,
//  "position": 1,
//  "product_id": 6732609257571,
//  "src": "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGNavy-B3A3E-UBCY.A-Edit_BK.jpg?v=1649254794",
//  "updated_at": "2022-04-06T15:19:54+01:00",
//  "variant_ids": [],
//  "width": 1692
//},
//"media": [
//  {
//    "admin_graphql_api_id": "gid://shopify/ProductImage/29035954831459",
//    "alt": null,
//    "created_at": "2022-04-06T15:19:54+01:00",
//    "height": 2018,
//    "id": 29035954831459,
//    "position": 1,
//    "product_id": 6732609257571,
//    "src": "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGNavy-B3A3E-UBCY.A-Edit_BK.jpg?v=1649254794",
//    "updated_at": "2022-04-06T15:19:54+01:00",
//    "variant_ids": [],
//    "width": 1692
//  },
//  {
//    "admin_graphql_api_id": "gid://shopify/ProductImage/29035954569315",
//    "alt": null,
//    "created_at": "2022-04-06T15:19:53+01:00",
//    "height": 2017,
//    "id": 29035954569315,
//    "position": 2,
//    "product_id": 6732609257571,
//    "src": "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGNavy-B3A3E-UBCY.B-Edit_BK.jpg?v=1649254794",
//    "updated_at": "2022-04-06T15:19:54+01:00",
//    "variant_ids": [],
//    "width": 1692
//  },
//  {
//    "admin_graphql_api_id": "gid://shopify/ProductImage/29035954700387",
//    "alt": null,
//    "created_at": "2022-04-06T15:19:54+01:00",
//    "height": 2018,
//    "id": 29035954700387,
//    "position": 3,
//    "product_id": 6732609257571,
//    "src": "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGNavy-B3A3E-UBCY.C-Edit_BK.jpg?v=1649254794",
//    "updated_at": "2022-04-06T15:19:54+01:00",
//    "variant_ids": [],
//    "width": 1692
//  },
//  {
//    "admin_graphql_api_id": "gid://shopify/ProductImage/29035954208867",
//    "alt": null,
//    "created_at": "2022-04-06T15:19:53+01:00",
//    "height": 2018,
//    "id": 29035954208867,
//    "position": 4,
//    "product_id": 6732609257571,
//    "src": "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGNavy-B3A3E-UBCY.D1-Edit_BK.jpg?v=1649254794",
//    "updated_at": "2022-04-06T15:19:54+01:00",
//    "variant_ids": [],
//    "width": 1692
//  },
//  {
//    "admin_graphql_api_id": "gid://shopify/ProductImage/29035954438243",
//    "alt": null,
//    "created_at": "2022-04-06T15:19:53+01:00",
//    "height": 2018,
//    "id": 29035954438243,
//    "position": 5,
//    "product_id": 6732609257571,
//    "src": "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGNavy-B3A3E-UBCY.D2-Edit_BK.jpg?v=1649254794",
//    "updated_at": "2022-04-06T15:19:54+01:00",
//    "variant_ids": [],
//    "width": 1692
//  },
//  {
//    "admin_graphql_api_id": "gid://shopify/ProductImage/29035954339939",
//    "alt": null,
//    "created_at": "2022-04-06T15:19:53+01:00",
//    "height": 2018,
//    "id": 29035954339939,
//    "position": 6,
//    "product_id": 6732609257571,
//    "src": "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGNavy-B3A3E-UBCY.D3-Edit_BK.jpg?v=1649254794",
//    "updated_at": "2022-04-06T15:19:54+01:00",
//    "variant_ids": [],
//    "width": 1692
//  }
//],
//"objectID": "6732609257571"
//},