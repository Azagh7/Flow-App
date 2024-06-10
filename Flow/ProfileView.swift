import SwiftUI
struct ProfileView: View {
    @State private var sliderValue: Double = 10.0
    var yourRank: String {
        if sliderValue < 33.0 {
            return "Beginner"
        } else if sliderValue >= 33.0 && sliderValue < 66.0 {
            return "Intermediate"
        } else {
            return "Advanced"
        }
    }
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("color1")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image(yourRank)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 250)
                        .shadow(radius: 10)
                    VStack (alignment: .leading){
                        HStack {
                            Text("Minutes:")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            Text("\(Int(sliderValue))")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                        Text ("Your Level:")
                            .fontWeight(.thin)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    Slider(value: $sliderValue, in: 0...100, step: 1.0)
                        .padding(.horizontal)
                        .tint(Color("color2"))
                    HStack{
                        Text("Beginner")
                            .fontWeight(sliderValue < 33.0 ? .bold : .thin)
                        Spacer()
                        Text("Intermediate")
                            .fontWeight(sliderValue >= 33.0 && sliderValue < 66.0 ? .bold : .thin)
                        Spacer()
                        Text("Advanced")
                            .fontWeight(sliderValue >= 66.0 ? .bold : .thin)
                    }
                    .padding()
                }
                .navigationTitle("Profile")
            }
        }
    }
}

#Preview {
    ProfileView()
}

