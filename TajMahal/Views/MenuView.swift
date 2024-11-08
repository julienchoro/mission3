//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    
    var body: some View {
        NavigationStack {
            List {
                Text("Entrées")
                    .font(.custom("PlusJakartaSans-VariableFont_wght", size: 14))
                    .fontWeight(.bold)
                
                Section("Entrées") {
                    ForEach(viewModel.apetizerArray) { dish in
                        ZStack {
                            DishView(dish: dish)
                            NavigationLink(destination: DishDetailView(dish: dish)) {
                                EmptyView()
                            }
                            .opacity(0.0)
                        }
                    }
                }
                
                Section("Plats Principaux") {
                    ForEach(viewModel.mainCourseArray) { dish in
                        NavigationLink(destination: DishDetailView(dish: dish)) {
                            DishView(dish: dish)
                        }
                    }
                }
                .buttonStyle(.plain)
                
                
                //                Section("Entrées") {
                //                    DishView()
                //                    DishView()
                //                }
                //                Section("Plats Principaux") {
                //                    DishView()
                //                    DishView()
                //                }
            }
            .listRowSpacing(10)
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

//struct Dish: Hashable, Identifiable {
//    var id: UUID = UUID()
//    var name: String
//    var description: String
//    var allergens: String
//    var ingredients: String
//    var spiceLevel: SpiceLevel
//    var imageName: String
//}
//

struct DishView: View {
    var dish: Dish
    
    var body: some View {
        ZStack {
            HStack {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 112, height: 86)
                    .cornerRadius(10)
                    .clipped()
                
                Spacer()
                VStack (alignment: .leading){
                    Text(dish.name)
                        .font(.custom("PlusJakartaSans-VariableFont_wght", size: 14))
                        .padding(.bottom, 3)
                    Text(dish.description)
                        .font(.custom("PlusJakartaSans-VariableFont_wght", size: 12))
                        .padding(.bottom, 3)
                    
                    
                    
                    HStack {
                        Text("5,50€")
                        Spacer()
                        Image(systemName: "flame")
                            .foregroundStyle(.red)
                        Image(systemName: "flame")
                            .foregroundStyle(.red)
                        Image(systemName: "flame")
                    }
                }
            }
        }
        //        .frame(width: 335, height: 110)
    }
}


#Preview {
    MenuView()
}
