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
        
        if split.contains("monitor") || split.contains("smartphone") || split.contains("ipod") || split.contains("laptop") || split.contains("notebok computer"){
            return RecycleItem(item: "Electronics", description: "Electronics are harder to recycle due to the amount of materials used to produce them. However, companies such as Apple have recycling programs that allows ", other: guess)
        }
    
        else if split.contains("water bottle") {
            return RecycleItem(item: "Water Bottles", description: "Many townships have programs that allow bottle to be recycles. If you are not home makes sure to properly dispose the item in recycling bins", other: guess)
        }
        
        else if split.contains("test") {
            return RecycleItem(item: "Test", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu neque suscipit, viverra metus ac, vehicula erat. Pellentesque sed luctus mi. Aliquam ipsum arcu, vulputate vitae tristique quis, viverra nec quam. Pellentesque a condimentum leo. Suspendisse placerat dolor ut lacus ullamcorper elementum. Vestibulum urna mauris, eleifend eu lacus at, tempus pharetra magna. Sed rhoncus mauris a sapien interdum, a pharetra lacus sollicitudin.", other: guess)
        }
        else {
            return RecycleItem(item: "Test", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu neque suscipit, viverra metus ac, vehicula erat. Pellentesque sed luctus mi. Aliquam ipsum arcu, vulputate vitae tristique quis, viverra nec quam. Pellentesque a condimentum leo. Suspendisse placerat dolor ut lacus ullamcorper elementum. Vestibulum urna mauris, eleifend eu lacus at, tempus pharetra magna. Sed rhoncus mauris a sapien interdum, a pharetra lacus sollicitudin.", other: guess)
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
