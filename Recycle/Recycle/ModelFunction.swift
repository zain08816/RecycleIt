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
        if guess == "test" {
            return RecycleItem(item: "Test", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu neque suscipit, viverra metus ac, vehicula erat. Pellentesque sed luctus mi. Aliquam ipsum arcu, vulputate vitae tristique quis, viverra nec quam. Pellentesque a condimentum leo. Suspendisse placerat dolor ut lacus ullamcorper elementum. Vestibulum urna mauris, eleifend eu lacus at, tempus pharetra magna. Sed rhoncus mauris a sapien interdum, a pharetra lacus sollicitudin.", image: Image("Test"), other: "Something")
        }
        else {
            return RecycleItem(item: "Test", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu neque suscipit, viverra metus ac, vehicula erat. Pellentesque sed luctus mi. Aliquam ipsum arcu, vulputate vitae tristique quis, viverra nec quam. Pellentesque a condimentum leo. Suspendisse placerat dolor ut lacus ullamcorper elementum. Vestibulum urna mauris, eleifend eu lacus at, tempus pharetra magna. Sed rhoncus mauris a sapien interdum, a pharetra lacus sollicitudin.", image: Image("Test"), other: "Something")
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
