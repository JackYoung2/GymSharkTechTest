//
//  File.swift
//  
//
//  Created by Jack Young on 09/05/2024.
//

import Foundation
@testable import Models
@testable import ProductFeature

public extension Array where Element == Product {
    static var mock: [Element] = [
        .mock, mockProduct2, mockProduct3, mockProduct4
    ]
}

public extension Array where Element == ProductViewModel {
    static var mock: [Element] = [
        .mock, mockProduct2, mockProduct3, mockProduct4
    ].map(ProductViewModel.init)
}


public let mockResponse = ProductListResponse(hits: .mock)
public let mockResponseData = try! JSONEncoder().encode(mockResponse)

public let mockProduct2 = Product(
    id: 6732607094883,
    sku: "B3A3E",
    inStock: true,
    sizeInStock: [.xs, .m, .l, .xxl, .xxl],
    availableSizes: [
        AvailableSize(
            id: 39814339690595,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xs,
            sku: "B3A3E-UBFC-XS"
        ),
        AvailableSize(
            id: 39814339756131,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .m,
            sku: "B3A3E-UBFC-M"
        ),
        AvailableSize(
            id: 39814339788899,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .l,
            sku: "B3A3E-UBFC-L"
        ),
        AvailableSize(
            id: 39814339821667,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xl,
            sku: "B3A3E-UBFC-XL"
        ),
        AvailableSize(
            id: 39814339854435,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xxl,
            sku: "B3A3E-UBFC-XXL"
        )
    ],
    handle: "gymshark-speed-leggings-moonstone-blue-ss22",
    title: "Speed Leggings",
    description: "<meta charset=\"utf-8\">\n<p data-mce-fragment=\"1\"><strong data-mce-fragment=\"1\">RUN WITH IT</strong></p>\n<p data-mce-fragment=\"1\"><br data-mce-fragment=\"1\">Your run requires enduring comfort and support, so step out and hit the road in Speed. Made with zero-distractions and lightweight, ventilating fabrics that move with you, you can trust in Speed no matter how far you go.</p>\n<p data-mce-fragment=\"1\"> <br data-mce-fragment=\"1\"></p>\n<p data-mce-fragment=\"1\"><br data-mce-fragment=\"1\">- Full length legging<br data-mce-fragment=\"1\">- High-waisted<br data-mce-fragment=\"1\">- Compressive fit<br data-mce-fragment=\"1\">- Internal adjustable elastic/drawcord at front waistband<br data-mce-fragment=\"1\">- Pocket to back of waistband<br data-mce-fragment=\"1\">- Reflective Gymshark sharkhead logo to ankle<br data-mce-fragment=\"1\">- Main: 88% Polyester 12% Elastane. Internal Mesh: 76% Nylon 24% Elastane<br data-mce-fragment=\"1\">- We've cut down our use of swing tags, so this product comes without one<br data-mce-fragment=\"1\">- Model is <meta charset=\"utf-8\"><span data-mce-fragment=\"1\"> </span><meta charset=\"utf-8\"><span lang=\"EN-GB\" class=\"TextRun SCXP30618988 BCX0\" data-contrast=\"none\" data-usefontface=\"true\" data-mce-fragment=\"1\" xml:lang=\"EN-GB\"><span class=\"NormalTextRun SCXP30618988 BCX0\" data-mce-fragment=\"1\">5'3\" and wears a size M</span></span><br>- Video model is <meta charset=\"utf-8\"><span data-usefontface=\"false\" data-contrast=\"none\" class=\"TextRun SCXP257442623 BCX0\" lang=\"EN-GB\" data-mce-fragment=\"1\" xml:lang=\"EN-GB\"><span class=\"NormalTextRun SCXP257442623 BCX0\" data-mce-fragment=\"1\">5’8” and wears a size XS</span></span><br data-mce-fragment=\"1\">- SKU: B3A3E-UBFC</p>",
    type: "Womens Leggings",
    gender: ["f"],
    fit: nil,
    labels: [],
    colour: "Moonstone Blue",
    price: 1000,
    compareAtPrice: nil,
    discountPercentage: nil,
    featuredMedia: Media(
        adminGraphqlApiId: "gid://shopify/ProductImage/29031260979299",
        alt: nil,
        createdAt: "2022-04-05T09:55:32+01:00",
        height: 2018,
        id: 29031260979299,
        position: 1,
        productId: 6732607094883,
        src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLeggingsMoonstoneBlue-B3A3E-UBFC.A_ZH_ZH.jpg?v=1649148949",
        updatedAt: "2022-04-05T09:55:49+01:00",
        variantIds: [],
        width: 1692
    ),
    media: [
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29031260979299",
            alt: nil,
            createdAt: "2022-04-05T09:55:32+01:00",
            height: 2018,
            id: 29031260979299,
            position: 1,
            productId: 6732607094883,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLeggingsMoonstoneBlue-B3A3E-UBFC.A_ZH_ZH.jpg?v=1649148949",
            updatedAt: "2022-04-05T09:55:49+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29031260815459",
            alt: nil,
            createdAt: "2022-04-05T09:55:30+01:00",
            height: 2018,
            id: 29031260815459,
            position: 2,
            productId: 6732607094883,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLeggingsMoonstoneBlue-B3A3E-UBFC.B_ZH_ZH.jpg?v=1649148949",
            updatedAt: "2022-04-05T09:55:49+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29031260848227",
            alt: nil,
            createdAt: "2022-04-05T09:55:30+01:00",
            height: 2018,
            id: 29031260848227,
            position: 3,
            productId: 6732607094883,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLeggingsMoonstoneBlue-B3A3E-UBFC.C_ZH_ZH.jpg?v=1649148949",
            updatedAt: "2022-04-05T09:55:49+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29031260880995",
            alt: nil,
            createdAt: "2022-04-05T09:55:31+01:00",
            height: 2018,
            id: 29031260880995,
            position: 4,
            productId: 6732607094883,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLeggingsMoonstoneBlue-B3A3E-UBFC.D11_ZH_ZH.jpg?v=1649148932",
            updatedAt: "2022-04-05T09:55:32+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29031260913763",
            alt: nil,
            createdAt: "2022-04-05T09:55:31+01:00",
            height: 2018,
            id: 29031260913763,
            position: 5,
            productId: 6732607094883,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLeggingsMoonstoneBlue-B3A3E-UBFC.D2_ZH_ZH.jpg?v=1649148932",
            updatedAt: "2022-04-05T09:55:32+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29031260946531",
            alt: nil,
            createdAt: "2022-04-05T09:55:32+01:00",
            height: 2018,
            id: 29031260946531,
            position: 6,
            productId: 6732607094883,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLeggingsMoonstoneBlue-B3A3E-UBFC.D3_ZH_ZH.jpg?v=1649148932",
            updatedAt: "2022-04-05T09:55:32+01:00",
            variantIds: [],
            width: 1692
        )
    ],
    objectID: "6732607094883"
)

let mockProduct3 = Product(
    id: 6732605882467,
    sku: "B3A3E",
    inStock: true,
    sizeInStock: [.xs, .s, .l, .xl, .xxl],
    availableSizes: [
        AvailableSize(
            id: 39814338084963,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xs,
            sku: "B3A3E-BBBB-XS"
        ),
        AvailableSize(
            id: 39814338117731,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .s,
            sku: "B3A3E-BBBB-S"
        ),
        AvailableSize(
            id: 39814338150499,
            inStock: false,
            inventoryQuantity: 0,
            price: 1000,
            size: .m,
            sku: "B3A3E-BBBB-M"
        ),
        AvailableSize(
            id: 39814338183267,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .l,
            sku: "B3A3E-BBBB-L"
        ),
        AvailableSize(
            id: 39814338216035,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xl,
            sku: "B3A3E-BBBB-XL"
        ),
        AvailableSize(
            id: 39814338248803,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xxl,
            sku: "B3A3E-BBBB-XXL"
        )
    ],
    handle: "gymshark-speed-leggings-black-ss22-1",
    title: "Speed Leggings",
    description: "<p><strong>RUN WITH IT</strong></p>\n<p><br data-mce-fragment=\"1\">Your run requires enduring comfort and support, so step out and hit the road in Speed. Made with zero-distractions and lightweight, ventilating fabrics that move with you, you can trust in Speed no matter how far you go.</p>\n<p> </p>\n<p><br data-mce-fragment=\"1\">- Full length legging<br data-mce-fragment=\"1\">- High-waisted<br data-mce-fragment=\"1\">- Compressive fit<br data-mce-fragment=\"1\">- Internal adjustable elastic/drawcord at front waistband<br data-mce-fragment=\"1\">- Pocket to back of waistband<br data-mce-fragment=\"1\">- Reflective Gymshark sharkhead logo to ankle<br data-mce-fragment=\"1\">- Main: 88% Polyester 12% Elastane. Internal Mesh: 76% Nylon 24% Elastane<br data-mce-fragment=\"1\">- We've cut down our use of swing tags, so this product comes without one<br data-mce-fragment=\"1\">- Model is <meta charset=\"utf-8\"><span data-usefontface=\"true\" data-contrast=\"none\" class=\"TextRun SCXP103297068 BCX0\" lang=\"EN-GB\" data-mce-fragment=\"1\" xml:lang=\"EN-GB\"><span class=\"NormalTextRun SCXP103297068 BCX0\" data-mce-fragment=\"1\">5'3\" and wears a size M</span></span><br>- SKU: B3A3E-BBBB</p>",
    type: "Womens Leggings",
    gender: ["f"],
    fit: nil,
    labels: [],
    colour: "Black",
    price: 1000,
    compareAtPrice: nil,
    discountPercentage: nil,
    featuredMedia: Media(
        adminGraphqlApiId: "gid://shopify/ProductImage/29035954241635",
        alt: nil,
        createdAt: "2022-04-06T15:19:53+01:00",
        height: 2017,
        id: 29035954241635,
        position: 1,
        productId: 6732605882467,
        src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGBlack-B3A3E-BBBB.A-Edit_BK.jpg?v=1649254793",
        updatedAt: "2022-04-06T15:19:53+01:00",
        variantIds: [],
        width: 1692
    ),
    media: [
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29035954241635",
            alt: nil,
            createdAt: "2022-04-06T15:19:53+01:00",
            height: 2017,
            id: 29035954241635,
            position: 1,
            productId: 6732605882467,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGBlack-B3A3E-BBBB.A-Edit_BK.jpg?v=1649254793",
            updatedAt: "2022-04-06T15:19:53+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29035954536547",
            alt: nil,
            createdAt: "2022-04-06T15:19:53+01:00",
            height: 2018,
            id: 29035954536547,
            position: 2,
            productId: 6732605882467,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGBlack-B3A3E-BBBB.B-Edit_BK.jpg?v=1649254793",
            updatedAt: "2022-04-06T15:19:53+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29035954798691",
            alt: nil,
            createdAt: "2022-04-06T15:19:54+01:00",
            height: 2018,
            id: 29035954798691,
            position: 3,
            productId: 6732605882467,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGBlack-B3A3E-BBBB.C-Edit_BK.jpg?v=1649254794",
            updatedAt: "2022-04-06T15:19:54+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29035954667619",
            alt: nil,
            createdAt: "2022-04-06T15:19:54+01:00",
            height: 2018,
            id: 29035954667619,
            position: 4,
            productId: 6732605882467,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGBlack-B3A3E-BBBB.D1-Edit_BK.jpg?v=1649254794",
            updatedAt: "2022-04-06T15:19:54+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29035954372707",
            alt: nil,
            createdAt: "2022-04-06T15:19:53+01:00",
            height: 2018,
            id: 29035954372707,
            position: 5,
            productId: 6732605882467,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGBlack-B3A3E-BBBB.D2-Edit_BK.jpg?v=1649254794",
            updatedAt: "2022-04-06T15:19:54+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/29035954929763",
            alt: nil,
            createdAt: "2022-04-06T15:19:55+01:00",
            height: 2018,
            id: 29035954929763,
            position: 6,
            productId: 6732605882467,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/SpeedLEGGINGBlack-B3A3E-BBBB.D3-Edit_BK.jpg?v=1649254795",
            updatedAt: "2022-04-06T15:19:55+01:00",
            variantIds: [],
            width: 1692
        )
    ],
    objectID: "6732605882467"
)

let mockProduct4 = Product(
    id: 6710581035107,
    sku: "B2A2W",
    inStock: true,
    sizeInStock: [.xs, .s, .m, .xl, .xxl],
    availableSizes: [
        AvailableSize(
            id: 39765561933923,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xs,
            sku: "B2A2W-EBJZ-XS"
        ),
        AvailableSize(
            id: 39765561966691,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .s,
            sku: "B2A2W-EBJZ-S"
        ),
        AvailableSize(
            id: 39765561999459,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .m,
            sku: "B2A2W-EBJZ-M"
        ),
        AvailableSize(
            id: 39765562032227,
            inStock: false,
            inventoryQuantity: 0,
            price: 1000,
            size: .l,
            sku: "B2A2W-EBJZ-L"
        ),
        AvailableSize(
            id: 39765562064995,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xl,
            sku: "B2A2W-EBJZ-XL"
        ),
        AvailableSize(
            id: 39765562097763,
            inStock: true,
            inventoryQuantity: 1,
            price: 1000,
            size: .xxl,
            sku: "B2A2W-EBJZ-XXL"
        )
    ],
    handle: "gymshark-adapt-animal-seamless-leggings-firefly-yellow-ss22",
    title: "Adapt Animal Seamless Leggings",
    description: "<meta charset=\"utf-8\">\n<p data-mce-fragment=\"1\"><strong data-mce-fragment=\"1\">WORKOUT ON THE WILD SIDE</strong></p>\n<p data-mce-fragment=\"1\"><br data-mce-fragment=\"1\">The collection made for lifting, unleash your wild side in Adapt Animal. Sweat-wicking finishing, seamless stretch fabric and zero-distraction designs lets you lift in comfort and support every day, in every way.</p>\n<p data-mce-fragment=\"1\"><br data-mce-fragment=\"1\">- High waisted fit\n- Seamless woven construction\n- Jacquard branding\n- Heat-sealed logo to waistband<br>- Main: 93% Nylon, 7% Elastane. Mesh: 80% Nylon, 20% Elastane<br data-mce-fragment=\"1\">- Model is 5'8\" and wears size M<br data-mce-fragment=\"1\">- SKU: B2A2W-EBJZ</p>",
    type: "Womens Leggings",
    gender: ["f"],
    fit: nil,
    labels: [],
    colour: "Firefly Yellow",
    price: 1000,
    compareAtPrice: nil,
    discountPercentage: nil,
    featuredMedia: Media(
        adminGraphqlApiId: "gid://shopify/ProductImage/28966274483203",
        alt: nil,
        createdAt: "2022-04-01T10:43:15+01:00",
        height: 2017,
        id: 28966274483203,
        position: 1,
        productId: 6710581035107,
        src: "https://cdn.shopify.com/s/files/1/1326/4923/products/ADAPTSEAMLG-FIREFLYYELLOW-B2A2W-EBJZ.A-Edit.jpg?v=1648860195",
        updatedAt: "2022-04-01T10:43:15+01:00",
        variantIds: [],
        width: 1692
    ),
    media: [
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/28966274483203",
            alt: nil,
            createdAt: "2022-04-01T10:43:15+01:00",
            height: 2017,
            id: 28966274483203,
            position: 1,
            productId: 6710581035107,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/ADAPTSEAMLG-FIREFLYYELLOW-B2A2W-EBJZ.A-Edit.jpg?v=1648860195",
            updatedAt: "2022-04-01T10:43:15+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/28966274515971",
            alt: nil,
            createdAt: "2022-04-01T10:43:15+01:00",
            height: 2018,
            id: 28966274515971,
            position: 2,
            productId: 6710581035107,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/ADAPTSEAMLG-FIREFLYYELLOW-B2A2W-EBJZ.B-Edit.jpg?v=1648860195",
            updatedAt: "2022-04-01T10:43:15+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/28966274747039",
            alt: nil,
            createdAt: "2022-04-01T10:43:16+01:00",
            height: 2018,
            id: 28966274747039,
            position: 3,
            productId: 6710581035107,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/ADAPTSEAMLG-FIREFLYYELLOW-B2A2W-EBJZ.C-Edit.jpg?v=1648860196",
            updatedAt: "2022-04-01T10:43:16+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/28966274878107",
            alt: nil,
            createdAt: "2022-04-01T10:43:16+01:00",
            height: 2018,
            id: 28966274878107,
            position: 4,
            productId: 6710581035107,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/ADAPTSEAMLG-FIREFLYYELLOW-B2A2W-EBJZ.D1-Edit.jpg?v=1648860196",
            updatedAt: "2022-04-01T10:43:16+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/28966274943643",
            alt: nil,
            createdAt: "2022-04-01T10:43:16+01:00",
            height: 2018,
            id: 28966274943643,
            position: 5,
            productId: 6710581035107,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/ADAPTSEAMLG-FIREFLYYELLOW-B2A2W-EBJZ.D2-Edit.jpg?v=1648860196",
            updatedAt: "2022-04-01T10:43:16+01:00",
            variantIds: [],
            width: 1692
        ),
        Media(
            adminGraphqlApiId: "gid://shopify/ProductImage/28966275009179",
            alt: nil,
            createdAt: "2022-04-01T10:43:17+01:00",
            height: 2018,
            id: 28966275009179,
            position: 6,
            productId: 6710581035107,
            src: "https://cdn.shopify.com/s/files/1/1326/4923/products/ADAPTSEAMLG-FIREFLYYELLOW-B2A2W-EBJZ.D3-Edit.jpg?v=1648860197",
            updatedAt: "2022-04-01T10:43:17+01:00",
            variantIds: [],
            width: 1692
        )
    ],
    objectID: "6710581035107"
)
