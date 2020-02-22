//
//  Coordinator .swift
//  Recycle
//
//  Created by Kirtan Patel on 2/22/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import Foundation
import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
  @Binding var isCoordinatorShown: Bool
  @Binding var imageInCoordinator: Image?
    
  init(isShown: Binding<Bool>, image: Binding<Image?>) {
    _isCoordinatorShown = isShown
    _imageInCoordinator = image
  }
    
  func imagePickerController(_ picker: UIImagePickerController,
                didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     guard let unwrapImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
     imageInCoordinator = Image(uiImage: unwrapImage)
     isCoordinatorShown = false
  }
    
  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
     isCoordinatorShown = false
  }
    
}
