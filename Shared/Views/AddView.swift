import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    TextField("Type some thing here ...",
                              text: $textFieldText)
                        .padding(.horizontal)
                        .frame(height: 55)
                    Button(action: saveButtonPressed, label: {
                        Text("Save".uppercased())
                            .frame( height: 55)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(15)
                            .padding()
                    })
                }
            }
            .navigationTitle("Add an Item  📖")
            .alert( isPresented: $showAlert, content: getAlert)
        }
        
    }
    func saveButtonPressed(){
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool{
        if textFieldText.count < 3{
            alertTitle = "Must be at least 3 characters long!"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle)    )
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(ListViewModel())
    }
}
