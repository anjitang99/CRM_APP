//
//  ZeroPayView.swift
//  CRM_APP
//
//  Created by jihoon an on 2/8/25.
//

import SwiftUI

struct ZeroPayView: View {
    var body: some View {
        NavigationStack {
            VStack {
                CustomToolbar()
                    .padding(24)
                
                VStack {
                    
                }
                .frame(width: 320, height: 150)
                .background(RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.gray), lineWidth: 1)
                    .background(Color.white)
                    .cornerRadius(12)
                )
                
                Spacer().frame(height: 16)
                
                Button(action: {
                    print("QR코드 생성하기 버튼 클릭됨")
                }) {
                    Text("QR코드/바코드 생성하기")
                        .font(.system(size: 16, weight: .bold))
                        .frame(width: 320, height: 56) // 버튼 크기 조정
                        .background(Color.white) // 배경색
                        .foregroundColor(.black) // 텍스트 색상
                }

                Spacer()
            }
        }
    }
}

struct CustomToolbar: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Back button activate")
            }) {
                Image("BackButton")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            Button(action: {
                print("Home button activate")
            }) {
                Image("HomeButton")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundStyle(.black)
            }
        }
        .frame(width: 360, height: 48)
        .background(Color.white)
    }
}

#Preview {
    ZeroPayView()
}
