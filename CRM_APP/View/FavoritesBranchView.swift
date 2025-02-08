//
//  FavoritesBranchView.swift
//  CRM_APP
//
//  Created by jihoon an on 12/25/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FavoritesBranchView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("즐겨찾는 지점")
                }
        }
    }
}

struct FavoritesBranchView: View {
    
    @State private var favoritesBranches: [String] = [
        "서울 갱냄",
        "서울 강동"
    ]
    
    var body: some View {
        NavigationView {
            List(favoritesBranches, id: \.self){ branch in
                Text(branch).padding()
            }
            .navigationTitle("즐겨찾는 지점")
        }
    }
}

#Preview {
    MainTabView()
}
