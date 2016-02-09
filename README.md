# Blackfish Stencil

This is a renderer to use [Stencil](https://github.com/kylef/Stencil) templating with Blackfish.

## Installation

To use Blackfish Stencil, add the following line to your Package.swift dependencies

```swift
.Package(url: "https://github.com/elliottminns/blackfish-stencil.git", majorVersion: 0)
```

Then add the renderer to the Blackfish server:

```swift
import Blackfish
import BlackfishStencil

let app = Blackfish()

app.use(renderer: BlackfishStencil(), ext: ".stencil")

app.listen(port: 3000) { error in

    if error == nil {
        print("Blackfish listening on port 3000")
    }

}

```

This will use the Stencil renderer for all `*.stencil` files.
