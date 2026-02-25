import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""
    @State private var isLoggedIn = false
    
    var body: some View {
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
            
        }
        .padding()
    }
    
    func login() {
        if email.isEmpty || password.isEmpty {
            errorMessage = "Please enter both email and password."
            return
        }
        
        if email == "test@example.com" && password == "123456" {
            errorMessage = ""
            print("Login successful")
        } else {
            errorMessage = "Invalid credentials."
        }
    }
}

#Preview {
    LoginView()
}
