//
//  DepositViewModel.swift
//  CRM_APP
//
//  Created by jihoon an on 12/15/24.
//

import Foundation

class DepositViewModel: ObservableObject {
    @Published var products: [DepositProduct] = [
        DepositProduct(name: "Savings 1", interestRate: "1.5%", duration: "12개월"),
        DepositProduct(name: "Savings 2", interestRate: "2.0%", duration: "24개월"),
        DepositProduct(name: "Savings 3", interestRate: "1.8%", duration: "18개월")
    ]
    
    private var originalProducts: [DepositProduct] = []

    init() {
        self.originalProducts = products // 원본 데이터 저장
    }

    func sortByInterestRate() {
        products.sort { $0.interestRate > $1.interestRate }
    }
    
    func resetSort() {
        products = originalProducts // 원래 순서로 리셋
    }
}
