//
//  DiagnosePage.swift
//  Pets
//
//  Created by Willy Yunus Islami on 22/07/21.
//

import SwiftUI

struct DiagnosePage: View {
    var body: some View {
        NavigationView{Color("bgcolor")
            .ignoresSafeArea()
            .overlay(
                ScrollView(showsIndicators: false){
                    VStack{
                        Text("Kategori Penyakit")
                            .font(.largeTitle)
                            .fontWeight(.regular)
                            .padding(.top, 0)
                        
                        Text("Pilihlah kategori penyakit yang dialami oleh hewan peliharaan Anda")
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Group{
                            HStack{
                                NavigationLink(destination: KatPenyakit1()) {
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke()
                                        .fill(Color("birumuda"))
                                        .frame(width: 150, height: 50)
                                        .overlay(HStack(spacing: 8) {
                                            Text("Kategori 1")
                                                .fontWeight(.bold)
                                        })
                                }
                                
                                NavigationLink(destination: KatPenyakit2()) {
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke()
                                        .fill(Color("birumuda"))
                                        .frame(width: 150, height: 50)
                                        .overlay(HStack(spacing: 8) {
                                            Text("Kategori 2")
                                                .fontWeight(.bold)
                                        })
                                }
                            }
                            
                            HStack{
                                NavigationLink(destination: KatPenyakit3()) {
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke()
                                        .fill(Color("birumuda"))
                                        .frame(width: 150, height: 50)
                                        .overlay(HStack(spacing: 8) {
                                            Text("Kategori 3")
                                                .fontWeight(.bold)
                                        })
                                }
                                
                                NavigationLink(destination: KatPenyakit4()) {
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke()
                                        .fill(Color("birumuda"))
                                        .frame(width: 150, height: 50)
                                        .overlay(HStack(spacing: 8) {
                                            Text("Kategori 4")
                                                .fontWeight(.bold)
                                        })
                                }
                            }
                            
                            HStack{
                                NavigationLink(destination: ComingSoon()) {
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke()
                                        .fill(Color("birumuda"))
                                        .frame(width: 150, height: 50)
                                        .overlay(HStack(spacing: 8) {
                                            Text("Kategori 5")
                                                .fontWeight(.bold)
                                        })
                                }
                                
                                NavigationLink(destination: ComingSoon()) {
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke()
                                        .fill(Color("birumuda"))
                                        .frame(width: 150, height: 50)
                                        .overlay(HStack(spacing: 8) {
                                            Text("Kategori 6")
                                                .fontWeight(.bold)
                                        })
                                }
                                
                            }
                            
                            
                            HStack{
                                NavigationLink(destination: ComingSoon()) {
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke()
                                        .fill(Color("birumuda"))
                                        .frame(width: 150, height: 50)
                                        .overlay(HStack(spacing: 8) {
                                            Text("Kategori 7")
                                                .fontWeight(.bold)
                                        })
                                    
                                }
                                
                                NavigationLink(destination: ComingSoon()) {
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke()
                                        .fill(Color("birumuda"))
                                        .frame(width: 150, height: 50)
                                        .overlay(HStack(spacing: 8) {
                                            Text("Kategori 8")
                                                .fontWeight(.bold)
                                        })
                                }
                            }
                        }
                        .accentColor(Color("hitam"))
                        .padding(.top,10)
                        
                        
//                        NavigationLink(destination: ComingSoon()) {
//                            RoundedRectangle(cornerRadius: 10.0)
//                                .fill(Color("birumuda"))
//                                .frame(width: 312, height: 50)
//                                .overlay(HStack(spacing: 8) {
//                                    Text("Selanjutnya")
//                                        .fontWeight(.regular)
//                                })
//
//                        }
//                        .accentColor(Color("putih"))
//                        .padding(.top, 50)
                        
                    }
                }
            )
        }
    }
}

struct DiagnosePage_Previews: PreviewProvider {
    static var previews: some View {
        DiagnosePage()
    }
}
