import Stencil
import Blackfish

public class StencilRenderer: Renderer {

    public init() {
        // Allows for a public initialiser
    }

    public func render(path: String, data: [String: Any]? = nil) throws -> String  {

        let fileString = try stringFromFile(path)

        let data = data ?? [:]
        let c = Context(dictionary: data)
        let template = Template(templateString: fileString)

        return try template.render(c)
    }
}
