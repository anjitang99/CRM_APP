//
//  DepositView.swift
//  CRM_APP
//
//  Created by jihoon an on 12/15/24.
//

import SwiftUI

struct DepositListView: View {
    @ObservedObject var viewModel = DepositViewModel()
    @State private var isInterestRateSorted: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                
                // 금리 정렬 버튼
                Button(action: {
                    isInterestRateSorted.toggle()
                    if isInterestRateSorted {
                        viewModel.sortByInterestRate()
                    } else {
                        viewModel.resetSort()
                    }
                }) {
                    HStack {
                        Image(systemName: isInterestRateSorted ? "arrow.up.circle.fill" : "arrow.down.circle.fill")
                                                    .foregroundColor(.blue)
                                                Text(isInterestRateSorted ? "금리순 정렬 (ON)" : "금리순 정렬 (OFF)")
                                                    .font(.subheadline)
                                                    .foregroundColor(.blue)
                    }
                    .padding(8)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                }
                .padding(.horizontal)
                
                // 상품 리스트
                List(viewModel.products) { product in
                    DepositItemView(product: product)
                        .listRowSeparator(.hidden)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("예·적금") // 네비게이션 바 타이틀
            .background(Color.white)
        }
    }
}

struct DepositItemView: View {
    let product: DepositProduct
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("상품명: \(product.name)")
                .font(.headline)
                .bold()
            Text("금리: \(product.interestRate) / 기간: \(product.duration)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                Spacer()
                Button(action: {
                    print("\(product.name) 상세 보기")
                }) {
                    Text("자세히 보기")
                        .font(.footnote)
                        .foregroundColor(.blue)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
        .padding([.leading, .trailing], 10)
    }
}

#Preview {
    DepositListView()
}
