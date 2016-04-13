import PackageDescription

let package = Package(
    name: "BlackfishStencil",
    dependencies: [
        .Package(url: "https://github.com/elliottminns/Stencil.git", majorVersion: 0),
        .Package(url: "https://github.com/elliottminns/blackfish.git", majorVersion: 0)
    ]
)
