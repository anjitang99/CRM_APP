//
//  DespositModel.swift
//  CRM_APP
//
//  Created by jihoon an on 12/15/24.
//

import Foundation

struct DepositProduct: Identifiable {
    let id = UUID()
    let name: String
    let interestRate: String
    let duration: String
}
