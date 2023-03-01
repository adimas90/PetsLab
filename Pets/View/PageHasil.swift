//
//  PageHasil.swift
//  Pets
//
//  Created by Willy Yunus Islami on 26/07/21.
//

import SwiftUI

struct PageHasil: View {
    
    @State private var offset = CGSize(width: 0, height: UIScreen.main.bounds.height * 0.9)
    let index: Int
    
    var body: some View {
        
        GeometryReader {
            geometry in
            
            ZStack{
                Color("birumuda").edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image(dataPenyakit[index + 1].image)
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -100)
                    CardView(index:0).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.top, -50)
                        .padding(.bottom, -100)
                    Spacer()
                }
            }
        }
    }
}

struct CardView: View{
    let index: Int
    
    var body: some View{
        
        ZStack{
            Color("putih")
            VStack (alignment: .leading, spacing: 20) {
                
                HStack {
                    Group{
                        Text(dataPenyakit[index + 1].penyakit)
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        NavigationLink(destination: halamanlain()) {
                            Text("Selengkapnya >")
                                .font(.body)
                                .foregroundColor(Color("birumuda"))
                        }
                        
                    }
                }
                .padding()
                
                VStack (alignment: .leading){
                    Text("Cara Menangani")
                        .font(.title2)
                        .bold()
                        .padding()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                    
                    
                    ScrollView{
                        VStack (alignment: .leading, spacing: 20){
                            Group{
                                ForEach(dataPenyakit[index+1].daftarPenanganan, id: \.self) { penanganan in                        HStack{
                                    Image(systemName: "checkmark")
                                        .foregroundColor(Color("birumuda"))
                                    Text(penanganan)
                                }
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, -35)
                
                
                VStack(alignment: .center){
                    NavigationLink(destination: ComingSoon()) {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color("birumuda"))
                            .frame(width: 325, height: 50)
                            .overlay(
                                Text("Hubungi Dokter")
                            )
                        
                    }
                    .accentColor(Color.white)

                    
                }
                .padding(.bottom, 100).padding(.horizontal)
                Spacer()
                
            }
            
        }
                .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct PageHasil_Previews: PreviewProvider {
    static var previews: some View {
        PageHasil(index: 0)
    }
}
