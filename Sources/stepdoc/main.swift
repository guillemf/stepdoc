import ArgumentParser
import stepdocLib

struct StepDoc: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "A command-line tool to help you to find duplicates and group different steps in a single one",
        subcommands: [List.self],
        defaultSubcommand: List.self)
    
    init() { }
}

StepDoc.main()

struct Options: ParsableArguments {
    @Argument(default: "./steps", help: "Path to the steps folder")
    var path: String
}
