import Stencil
import Blackfish

public class StencilRenderer: Renderer {

    public init() {
        // Allows for a public initialiser
    }

    public func render(path: String, data: [String: Any]? = nil) throws -> String  {
        let data = data ?? [:]
        let c = Context(dictionary: data)
        let template = Template(named: path)
        let body = try template.render(c)
        print(body)
        return try template.render(c)
    }
}
