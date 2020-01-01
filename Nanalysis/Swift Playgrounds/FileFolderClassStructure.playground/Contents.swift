class Node: CustomStringConvertible {
    var description: String {
        var text = "\(nodeName)"
        if !children.isEmpty {
            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
        }
        return text
    }
    
    var nodeName: String
    var children: [Node] = []
    weak var parent: Node?
    
    init(name: String) {
        self.nodeName = name
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
}

class File: Node {
    var content: String = ""
    
    override init(name: String) {
        super.init(name: name)
    }
    
    func display() {
        print(content)
    }
}

class Folder: Node {
    
    override init(name: String) {
        super.init(name: name)
    }
    
    func display() {
        print(description)
    }
}


func main() {
    let grandparentFolder = Folder(name: "Grandparent")
    let parentFolder = Folder(name: "Parent")
    let childAFile = File(name: "Child A")
    childAFile.content = "This is the content for Child A"
    let childBFile = File(name: "Child B")
    let childCFolder = Folder(name: "Child C")
    
    let grandChildFile = File(name: "GrandChild")
    childCFolder.add(child: grandChildFile)
    parentFolder.add(child: childAFile)
    parentFolder.add(child: childBFile)
    parentFolder.add(child: childCFolder)
    grandparentFolder.add(child: parentFolder)
    grandparentFolder.display()
    childAFile.display()
}

main()
