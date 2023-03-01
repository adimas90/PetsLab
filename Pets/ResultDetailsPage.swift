//
//  ResultDetailsPage.swift
//  Pets
//
//  Created by Fransiscus Verrol Yaurentius on 23/07/21.
//

import SwiftUI

struct ResultDetailsPage: View {
    
    init(){
        UINavigationBar.appearance().barTintColor = UIColor(Color(hex: "0F78C8"))
        UINavigationBar.appearance().backgroundColor = UIColor(Color(hex: "0F78C8"))
    }
    
    var body: some View {
        Color(hex: "0F78C8").ignoresSafeArea().overlay(
            ZStack{
                RoundedRectangle(cornerRadius: 10).foregroundColor(.white)
                    .padding(.horizontal)
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 20){
                        Text("Semua Gejala Penyakit")
                            .font(.title2)
                            .bold()
                        VStack(alignment: .leading, spacing: 10){
                            ForEach(dataPenyakit[1].daftarGejala, id: \.self) { i in
                                HStack{
                                    Image(systemName: "checkmark")
                                        .foregroundColor(Color(hex: "0F78C8"))
                                    Text(i)
                                }
                            }
                        }
                        Text("Penyebab Penyakit")
                            .font(.title2)
                            .bold()
                        VStack(alignment: .leading, spacing: 10){
                            ForEach(dataPenyakit[1].daftarPenyebab, id: \.self) { i in
                                HStack{
                                    Image(systemName: "checkmark")
                                        .foregroundColor(Color(hex: "0F78C8"))
                                    Text(i)
                                }
                            }
                        }
                    }.padding(.horizontal, 30).padding(.vertical)
                }
            }.navigationBarTitle("", displayMode: .inline)
            .padding(.top).padding(.bottom, -10)
        )
    }
}

struct ResultDetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultDetailsPage()
    }
}
