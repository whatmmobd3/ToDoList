import Foundation

class ListViewModel: ObservableObject{
    
    @Published var items: [ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    
    init(){
        getItems()
    }
    
    func getItems() {
//        let newItems = [
//            ItemModel(title: "David Nguyen", isCompleted: true),
//            ItemModel(title: "Loc Nguyen Binh Duong", isCompleted: false),
//            ItemModel(title: "ddnn2026", isCompleted: true)
//        ]
//        items.append(contentsOf: newItems)
        
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        self.items = savedItems
    }
    
    func deleteItem(index: IndexSet)  {
        items.remove(atOffsets: index)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
        
    }
}
