import UIKit

class File {

    var fileName: String
    var content: String = ""
    
    init(fileName: String) {
        self.fileName =  fileName
    }
    
    func getFileName() -> String {
        return self.fileName
    }
}


class Folder {
    
    var childFiles: [File]?
    var childFolders: [Folder]?
    var folderName: String
    
    init(folderName: String) {
        self.folderName = folderName
    }
    
    func childrenNames() -> [String]? {
        //returns names of Files and Folders in childFiles and childFolders array, as well as their children
        return nil
    }
    
}


func main() {
    var grandparentFolder = Folder(folderName: "Grandparent")
    var parentFolder = Folder(folderName: "Parent")
    var childAFile = File(fileName: "Child A")
    childAFile.content = "This is the content for Child A"
    var childBFile = File(fileName: "Child B")
    var childCFolder = Folder(folderName: "Child C")

    
    
    
    
}
