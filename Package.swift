import PackageDescription

let package = Package(
    name: "BlackfishStencil",
    dependencies: [
        .Package(url: "https://github.com/kylef/Stencil.git", majorVersion: 0),
        .Package(url: "/Users/Elliott/Dropbox/Projects/Open Source/blackfish/", majorVersion: 0)
    ]
)
