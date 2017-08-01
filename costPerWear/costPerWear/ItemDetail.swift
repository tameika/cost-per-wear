//
//  item.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/20/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation

struct Item {
    
    var itemName: String
    var itemAge: String
    var itemPurchasePrice: Double
    var itemType: [ClothingType]
    var itemTags: [String]
    var dateCreated: String
    
}


enum ClothingType: String {
    
    case top = "Top"
    case bottom = "Bottom"
    case dress = "Dress"
    case shoe = "Shoe"
}

enum ClothingPart {
    
    case sleeve
    case neck
    case rise
    case waist
    case length
    case heel
    case toe
    case ankle
    case opening
    
    case color
    case material
    case season
    case fit
    
    static func clothes(with type: ClothingType) -> [ClothingPart] {
        
        switch type {
        case .top: return [.sleeve, .neck, .color, .material, .season, .fit]
        case .bottom: return [.rise, .length, .material, .fit, .season, .color]
        case .dress: return [.neck, .sleeve, .waist, .length, .color, .material, .season, .fit]
        case .shoe: return []
        }
        
    }
    
    
}

enum Sleeve: String {
    
    case shortSleeve = "Short Sleeve"
    case longSleeve = "Long Sleeve"
    case threeQuarter = "3/4 Sleeve"
    case sleeveless = "Sleeveless"
}

enum Neck: String {
    
    case highNeck = "High Neck"
    case turtleNeck = "Turtleneck"
    case mockNeck = "Mock Neck"
    case scoopNeck = "Scoop Neck"
    case vNeck = "V Neck"
    case deepV = "Deep-V Neck"
    case boatNeck = "Boat Neck"
    case offShoulder = "Off-The-Shoulder"
    
}

enum Rise: String {
    case midRise = "Mid Rise"
    case lowRise = "Low Rise"
    case highRise = "High Rise"
}

enum Waist: String {

    case empireWaist = "Empire Waist"
    case dropWaist = "Drop Waist"
    case cinchWaist = "Cinch Waist"
    case drawstring = "Drawstring"
}

enum Length: String {
    case floorLength = "Floor Length"
    case maxiLength = "Maxi Length"
    case miniLength = "Mini Length"
    case ankleLength = "Ankle Length"
    case aboveTheKnee = "Above-The-Knee"
    case belowTheKnee = " Below-The-Knee"
    
}

enum Material: String {
    
    case cotton = "Cotton"
    case cottonBlend = "Cotton-Blend"
    case polyester = "Polyester"
    case polyBlend = "Poly-Blend"
    case genuineleather = "Genuine Leather"
    case fauxLeather = "Faux Leather"
    case fauxFur = "Faux Fur"
    case animalFur = "Animal Fur"
    case nylon = "Nylon"
    case rayon = "Rayon"
    case spandex = "Spandex"
    case tweed = "Tweed"
    case wool = "Wool"
    case woolBlend = "Wool-Blend"
    case linen = "Linen"
    case silk = "Silk"
    case satin = "Satin"
    case canvas = "Canvas"
    case denim = "Denim"
    
}

enum Toe: String {
    case openToe = "Open-Toe"
    case pointedToe = "Pointed"
    case squareToe = "Square"
    case roundToe = "Round"
    
}
enum ClothingSeason: String {
    
    case summer = "Summer"
    case winter = "Winter"
    case spring = "Spring"
    case fall = "Fall"
}







struct Page {
    
    var title: String
    var description: String

}


let pages = [Page(title: "Item Photo", description: "Take a photo"), Page(title: "Item Name", description: "Give your item a name"), Page(title: "Item Age", description: "Enter age in months"), Page(title: "Item Price", description: "Enter how much it cost")]
