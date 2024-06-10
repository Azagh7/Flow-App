import SwiftUI

@main
struct FlowApp: App {
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                TabView{
                    MeditationView()
                        .tabItem{
                            Image(systemName: "camera.macro.circle")
                            Text("Breath")
                        }
                    
                    MoodCheckView()
                        .tabItem{
                            Image(systemName: "calendar")
                            Text("Mood Check")
                        }
                    ProfileView()
                        .tabItem{
                            Image(systemName: "person.crop.circle")
                            Text("Profile")
                        }
                }
            }
            
        }
    }
}

