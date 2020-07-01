import Foundation
import ArgumentParser

enum ListSortMethod: String, EnumerableFlag {
    case Asc
    case Desc
}

extension StepDoc {
    struct List: ParsableCommand {
        public static let configuration = CommandConfiguration(commandName: "list",
                                                               abstract: "List all steps in the selected files",
                                                               discussion: """
                            This command will list all the steps contained in the files specified by path option.
                            If no option is passed, the app will list the steps contained in current folder.
                            If no file pattern is set, all files with 'rb' extension will be included in the list.
                            """)
        @OptionGroup() var options: stepdoc.Options
        
        @Flag(name: [.long, .customShort("f")], help: "Show file name")
        private var showFileName: Bool
        
        @Flag(name: [.long, .customShort("k")], help: "Show Keyword")
        private var showKeyword: Bool
        
        @Flag(help: "Sort method, default to no sort") private var sort: ListSortMethod?
            
        func run() {
            print("No-Sort")
            print(options.path)
        }
    }
}
