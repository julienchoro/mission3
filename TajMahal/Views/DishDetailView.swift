//
//  DishView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 07/11/2024.
//

import SwiftUI

struct DishDetailView: View {
    
    var dish: Dish
    
    var body: some View {
        NavigationStack {
            List {
                Image(dish.imageName)
                    .resizable(resizingMode: .stretch)
                    .cornerRadius(10)
                    .clipped()
                    .aspectRatio(contentMode: .fill)
                
                    Text("Allergènes:")
                Text(dish.allergens)

                Section {
                    Text("Ingredients:")
                    Text(dish.ingredients)
                }
            }
            .listRowSeparator(.hidden)
            .listStyle(.plain)
//            .listRowSeparator(.visible)
//            .listRowSeparatorTint(.gray)
            .navigationTitle(dish.name)
            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 14))
        }
    }
}

#Preview {
    DishDetailView(dish: ViewModel().mainCourseArray[0])
}
