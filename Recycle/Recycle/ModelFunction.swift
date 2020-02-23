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

class ModelFunction {
    static var image: UIImage? = nil
    static var guess: String = ""
    
    static var model:MobileNetV2 = MobileNetV2()
    static var split: [String] {
        print(guess.components(separatedBy: ", "))
        return guess.components(separatedBy: ", ")
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
