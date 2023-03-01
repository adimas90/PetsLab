//
//  HomePage.swift
//  Pets
//
//  Created by Fransiscus Verrol Yaurentius on 15/07/21.
//

import SwiftUI
import CoreData

struct HomeView: View {
    var body: some View{
        NavigationView{
            Color(hex: "0F78C8").ignoresSafeArea().overlay(
                VStack{
                    Image("homeScreen")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 370)
                    Spacer()
                    ZStack{
                        Rectangle().foregroundColor(.white).frame(height: 300)
                        VStack(alignment: .leading){
                            Text("Diagnosa Gejala")
                                .font(.largeTitle)
                                .bold()
                            Text("Pilih gejala yang paling sesuai dengan kondisi kucing peliharaan Anda")
                                .font(.title3)
                                .padding(.top, 3)
                            NavigationLink(destination: ResultDetailsPage()) {
                                Text("Mulai")
                                    .frame(width: 310, height: 20)
                                    .padding()
                            }.buttonStyle(BlueButton()).padding(.top, 30)
                        }
                    }
                }
            )
            .navigationBarHidden(true)
            .navigationBarTitle("Pets Lab", displayMode: .large)
        }.accentColor(.white)
    }
}

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(5)
            .background(Color(hex: "0F78C8"))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}


extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


struct HomePage: View {
    var body: some View {
        TabView{
            HomeView().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Diagnosa")
            }
            DokterPage().tabItem {
                Image(systemName: "person.fill")
                Text("Konsultasi")
            }
        }.accentColor(Color(hex: "0F78C8"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
