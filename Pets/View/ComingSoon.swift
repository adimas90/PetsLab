
import SwiftUI

struct ComingSoon: View {
//    @State private var showHearts = false
    
    var body: some View {
        VStack {
            Color("birumuda")
                .ignoresSafeArea()
                .overlay(
                    VStack(alignment: .center){
                        Spacer()
                                Image("kucinghome")
                                    .resizable()
                                    .scaledToFit()

                        Spacer()
                        VStack {
                            Text("Coming Soon")
                                .foregroundColor(Color("putih"))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            Text("Thank you for your enthusiasm for using our App! We'll be update soon into your page! Stay tune!")
                                .multilineTextAlignment(.center)
                                .frame(width: 300)
                                .padding(.top, 1)
                                .padding(.bottom, 20)
                            
                            
                            Text("Please Go Back to Main Page")
                                .multilineTextAlignment(.center)
                                .frame(width: 300)
                                .padding(.top, 1)
                                .padding(.bottom, 20)
                        }
                        .padding(.bottom, 100)
                        .foregroundColor(Color("putih"))
                    }
                )
        }//overlay
    }
}

struct ComingSoon_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ComingSoon()
        }
    }
}
