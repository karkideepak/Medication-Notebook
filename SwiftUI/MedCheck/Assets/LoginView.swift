var body: some View {
    NavigationStack {
        VStack(spacing: 20) {
            
            Text("Sign In")
                .font(.largeTitle)
                .bold()
            
            TextField("Email Address", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .font(.caption)
            }
            
            Button(action: {
                login()
            }) {
                Text("Sign In")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            NavigationLink("", destination: DashboardView(), isActive: $isLoggedIn)
                .hidden()
            
        }
        .padding()
    }
}
