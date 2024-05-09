//
//  File.swift
//  
//
//  Created by Jack Young on 09/05/2024.
//

import Foundation
import Models

public extension Media {
    static let mock = Media(
        adminGraphqlApiId: "gid://shopify/ProductImage/29035954831459",
        alt: nil,
        createdAt: "2022-04-06T15:19:54+01:00",
        height: 2018,
        id: 29035954831459,
        position: 1,
        productId: 6732609257571,
        src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGNavy-B3A3E-UBCY.A-Edit_BK.jpg?v=1649254794",
        updatedAt: "2022-04-06T15:19:54+01:00",
        variantIds: [],
        width: 1692
    )
    
    static let noImageURL = Media(
        adminGraphqlApiId: "gid://shopify/ProductImage/29035954831459",
        alt: nil,
        createdAt: "2022-04-06T15:19:54+01:00",
        height: 2018,
        id: 29035954831459,
        position: 1,
        productId: 6732609257571,
        src: "",
        updatedAt: "2022-04-06T15:19:54+01:00",
        variantIds: [],
        width: 1692
    )
}
