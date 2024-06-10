import SwiftUI

struct BallAnimationView: View {
    @State var isMeditating: Bool = true
    @State private var isAnimating = false
    @State private var ballSize: CGFloat = 50.0
    @State private var stepText = "Inhale"
    var body: some View {
        
        if isMeditating{
            ZStack {
                Circle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [Color("color2"), Color("c")]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 350
                    ))
                    .frame(width: ballSize, height: ballSize)
                    .foregroundColor(Color.blue)
                    .onAppear {
                        startAnimation()
                    }
                Text(stepText)
                    .font(.headline)
                    .foregroundColor(Color("color1"))
                VStack{
                    Spacer()
                    Spacer()
                    Button("Stop") {
                        isMeditating = false
                    }
                    .font(.headline)
                    .padding()
                    .background(Color("color2"))
                    .foregroundColor(Color("color1"))
                    .cornerRadius(12)
                    .padding(10)
                }
            }
        }
        else{
            SessionCompletedView()
        }
        
    }
    private func startAnimation() {
        Timer.scheduledTimer(withTimeInterval: 0, repeats: false) { _ in
            stepText = "Inhale"
            withAnimation(Animation.easeInOut(duration: setted.inhale)) {
                self.isAnimating = true
                self.ballSize = 350.0
            }
            Timer.scheduledTimer(withTimeInterval: setted.inhale, repeats: false) { _ in
                stepText = "Hold"
                withAnimation(Animation.easeInOut(duration: setted.hold)) {
                    self.isAnimating = false
                    self.ballSize = 350.0
                }
                Timer.scheduledTimer(withTimeInterval: setted.hold, repeats: false) { _ in
                    stepText = "Exhale"
                    withAnimation(Animation.easeInOut(duration: setted.exhale)) {
                        self.isAnimating = true
                        self.ballSize = 50.0
                    }
                    Timer.scheduledTimer(withTimeInterval: setted.exhale, repeats: false) { _ in
                        startAnimation()
                    }
                }
            }
        }
    }
}

#Preview {
    BallAnimationView()
}


