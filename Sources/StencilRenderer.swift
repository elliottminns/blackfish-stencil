import Stencil
import Blackfish
import Foundation

public class StencilRenderer: Renderer {

    public init() {
        // Allows for a public initialiser
    }

    public func render(path: String, data: [String: Any]? = nil) throws -> String  {

        let fileString = try stringFromFile(path: path)

        var data = data ?? [:]
        if let bundle = NSBundle(path: "Resources") {
            data["loader"] = TemplateLoader(bundle: [bundle])
        }
        let c = Context(dictionary: data)
        let template = Template(templateString: fileString)

        return try template.render(c)
    }
}
