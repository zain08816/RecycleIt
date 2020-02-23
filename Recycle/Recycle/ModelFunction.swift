//
//  ModelFunction.swift
//  Recycle
//
//  Created by Kirtan Patel on 2/22/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import Foundation
import CoreML
import UIKit
import SwiftUI

class ModelFunction {
    static var image: UIImage? = nil
    static var guess: String = ""
    
    static var model:MobileNetV2 = MobileNetV2()
    static var split: [String] {
        print(guess.components(separatedBy: ", "))
        return guess.components(separatedBy: ", ")
    }
    
    static func picker() -> RecycleItem {
        
        if split.contains("monitor") || split.contains("smartphone") || split.contains("ipod") || split.contains("laptop") || split.contains("notebook computer") || split.contains("power cord") || split.contains("battery"){
            return RecycleItem(item: "Electronics", description: "Electronics are harder to recycle due to the amount of materials used to produce them. Take it to your local community's recycling center if they accept electronics, or alternatively, tech firms like Best Buy and Apple also accepts old electronics for recycling.", other: guess)
        }
    
        else if split.contains("water bottle") || split.contains("can") || split.contains("soda can") {
            return RecycleItem(item: "Bottles/Cans", description: "Water bottles are standard recycled items and easy to recycle. If you're not at home, throw them in any public recycling bin (for bottles, make sure to remove the cap and, if necessary, lightly rinse off the inside of the bottle first).", other: guess)
        }
        
        else if split.contains("paper") || split.contains("envelope") || split.contains("cardboard") || split.contains("cardboard box") || split.contains("newspaper") || split.contains("magazine") || split.contains("folder"){
            return RecycleItem(item: "Paper/Cardboard", description: "These are very easy to recycle. Cut or shred them up to save space if needed, and simply toss in any recycling can or your designated recycling bin at home.", other: guess)
        }

        else if split.contains("cup") {
            return RecycleItem(item: "Cups", description: "Styrofoam cups cannot be recycled, but paper and plastic ones can be.", other: guess)
        }
        else {
            return RecycleItem(item: "Unrecyclable/Can't Recognize", description: "Unfortunatly, either our app can not recognize the item or the item is not able to be recycled. If the later is the case, the best thing to do is try to reuse the item before you throw it out. If the former, we will add more categories and improve our machine learning model in the future!", other: guess)
        }
    }
    
//    init() {
//        model = MobileNetV2()
//    }
    
//    func gueser() -> String {
//        guard let prediction = try? model.prediction(image: ModelFunction.image!) else {
//            return ""
//        }
//
//        return "I think this is a \(prediction.classLabel)."
//    }
}
