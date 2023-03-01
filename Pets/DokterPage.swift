//
//  DokterPage.swift
//  Pets
//
//  Created by Fransiscus Verrol Yaurentius on 21/07/21.
//

import SwiftUI

struct DokterPage: View {
    
    var body: some View {
        VStack {
            Color(hex: "0F78C8")
                .ignoresSafeArea()
                .overlay(
                    VStack(alignment: .center){
                        Spacer()
                        Image("comingSoon")
                            .resizable()
                            .scaledToFill()
                        
                        Spacer()
                        VStack {
                            Text("Fitur dalam Progress")
                                .foregroundColor(Color.white)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            Text("Terima kasih atas semangat Anda untuk menggunakan app kami! Kami akan segera mengupdate halaman ini. ")
                                .multilineTextAlignment(.center)
                                .frame(width: 300)
                                .padding(.top, 1)
                                .padding(.bottom, 20)
                            
                            
                            Text("Mohon kembali ke halaman utama")
                                .multilineTextAlignment(.center)
                                .frame(width: 300)
                                .padding(.top, 1)
                                .padding(.bottom, 20)
                        }
                        .padding(.bottom, 100)
                        .foregroundColor(Color.white)
                    }
                )
        }
    }
}

struct DokterPage_Previews: PreviewProvider {
    static var previews: some View {
        DokterPage()
    }
}
