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
    
    func displayFileContent() {
        print(content)
    }
}

//TODO: make a node class that can be subclassed by files and folders to efficiently add/remove children and print out info

class Folder: CustomStringConvertible {
    var description: String {
        var text = "\value"
        
        if !childFolders.isEmpty || !childFiles.isEmpty {
            text += " {" + childFolders.map { $0.description }.joined(separator: ", ") + childFiles.map { $0.description }.joined(separator: ", ") + "} "
            
        }
        return text
    }
    
    
    var childFiles: [File] = []
    var childFolders: [Folder] = []
    var folderName: String
    
    init(folderName: String) {
        self.folderName = folderName
    }
    
    //the add method parameters and name is different than in the example because I wanted to make it clear what type of child is being added for readability
    func addChild(file: File?, folder: Folder?){
        if file != nil && folder == nil {
            childFiles.append(file!)
        } else if file == nil && folder != nil {
            childFolders.append(folder!)
        } else if file != nil && folder != nil {
            childFiles.append(file!)
            childFolders.append(folder!)
        } else {
            return
        }
    }
    
    func childrenNames() -> [String]? {
        //returns names of Files and Folders in childFiles and childFolders array, as well as their children
        return nil
    }
    
    func displayHierarchyInfo() {
        
    }
}


func main() {
    var grandparentFolder = Folder(folderName: "Grandparent")
    var parentFolder = Folder(folderName: "Parent")
    var childAFile = File(fileName: "Child A")
    childAFile.content = "This is the content for Child A"
    var childBFile = File(fileName: "Child B")
    var childCFolder = Folder(folderName: "Child C")
    
    var grandChildFile = File(fileName: "GrandChild")
    childCFolder.addChild(file: grandChildFile, folder: nil)
    parentFolder.addChild(file: childAFile, folder: nil)
    parentFolder.addChild(file: childBFile, folder: nil)
    parentFolder.addChild(file: nil, folder: childCFolder)
    grandparentFolder.addChild(file: nil, folder: parentFolder)
    childAFile.displayFileContent()
    
    
    
    
}

main()
