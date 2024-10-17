import SwiftUI
import shared

struct ContentView: View {
  @State private var greet: String = "Loading..."

	var body: some View {
		Text(greet)
      .onAppear{
        Task {
          do {
            greet = try await Greeting().greet()
          } catch {
            greet = "Failed to load"
          }
        }
      }
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
