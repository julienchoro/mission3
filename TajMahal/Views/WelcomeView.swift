//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            List {
                VStack (alignment: .leading) {
                    Image("TajMahal")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    HStack {
                        VStack (alignment: .leading){
                            Text("Restaurant Indien")
                            Text("Taj Mahal")
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        Spacer()
                        Image("Logo")
                            .frame(width: 100.0, height: 100.0)
                    }
                    HStack {
                        Image(systemName: "clock")
                        Text("Mardi")
                        Spacer()
                        Text("18h00 - 22h00")
                    }
                    .padding(.top, 0.5)
                    HStack {
                        Image(systemName: "bag")
                        Text("Type de service")
                        Spacer()
                        Text("À emporter")
                    }
                    .padding(.top, 0.5)
                    HStack {
                        Image(systemName: "mappin")
                        Text("12 Avenur de la Brique - 75010 Paris")
                    }
                    .padding(.top, 0.5)
                    HStack {
                        Image(systemName: "globe")
                        Text("www.tajmahal.fr")
                    }
                    .padding(.top, 0.5)
                    HStack {
                        Image(systemName: "phone")
                        Text("06 12 34 56 78")
                    }
                    .padding(.top, 0.5)
                    
                }
                .padding()
                
            }
            .listStyle(PlainListStyle())
            .scrollContentBackground(.hidden)
            
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding()

            }
            .buttonStyle(.plain)
        }
    }
}

#Preview {
    WelcomeView()
}
