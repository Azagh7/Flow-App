import SwiftUI
struct MeditationView: View {
    @State private var isPresented = false
    var body: some View {

        NavigationView{
            ZStack{
                Color("color1")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Begin Your Journey")
                        .font(.title)
                        .foregroundColor(Color("color2"))
                        .padding(.leading, -128.0)
                    Spacer()
                    Button(action: {
                        isPresented.toggle()
                    }, label: {
                        Text("Start")
                            .font(.title)
                    })
                    .fullScreenCover(isPresented: $isPresented, content: PreparationView.init)
                    .frame(width: 150, height: 150)
                    .padding()
                    .background(Color("color2"))
                    .bold()
                    .foregroundColor(Color("color1"))
                    .clipShape(Circle())
                    .shadow(color: Color("color2"),radius: 8)
                    Spacer()
                    .navigationTitle("Breath")
                    .foregroundColor(Color("color2"))
                }
            }
        }
    }
}


#Preview {
    MeditationView()
}


