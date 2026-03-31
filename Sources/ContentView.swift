import SwiftUI

enum FocusField {
    case firstName
    case lastName
    case email
}

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @FocusState private var focusedField: FocusField?

    var body: some View {
        Form {
            TextField("First Name", text: $firstName)
                .focused($focusedField, equals: .firstName)

            TextField("Last Name", text: $lastName)
                .focused($focusedField, equals: .lastName)

            TextField("Email", text: $email)
                .focused($focusedField, equals: .email)

            HStack {
                Button("上一个") {
                    switch focusedField {
                    case .lastName: focusedField = .firstName
                    case .email: focusedField = .lastName
                    default: focusedField = .firstName
                    }
                }

                Button("下一个") {
                    switch focusedField {
                    case .firstName: focusedField = .lastName
                    case .lastName: focusedField = .email
                    default: focusedField = .email
                    }
                }

                Button("取消焦点") {
                    focusedField = nil
                }
            }
        }
        .padding()
        .onAppear {
            focusedField = .firstName
        }
    }
}