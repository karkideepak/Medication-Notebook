import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.largeTitle)
                .bold()
            
            Text("Medication Tracker Dashboard")
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    DashboardView()
}

