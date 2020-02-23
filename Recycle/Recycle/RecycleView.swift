//
//  RecycleView.swift
//  Recycle
//
//  Created by Kirtan Patel on 2/23/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct RecycleView: View {
    
    var item: RecycleItem
    
    
    var body: some View {
        VStack {
            Text(item.item)
                .font(.title)
                .foregroundColor(Color.white)
                .padding(.vertical)
            Text(item.description)
                .foregroundColor(Color.white)
                .padding(.vertical)
            Text(item.other)
                .foregroundColor(Color.white)
                .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

struct RecycleView_Previews: PreviewProvider {
    static var previews: some View {
        RecycleView(item: RecycleItem(item: "Test", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu neque suscipit, viverra metus ac, vehicula erat. Pellentesque sed luctus mi. Aliquam ipsum arcu, vulputate vitae tristique quis, viverra nec quam. Pellentesque a condimentum leo. Suspendisse placerat dolor ut lacus ullamcorper elementum. Vestibulum urna mauris, eleifend eu lacus at, tempus pharetra magna. Sed rhoncus mauris a sapien interdum, a pharetra lacus sollicitudin.", image: Image("Test"), other: "Something"))
    }
}