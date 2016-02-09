import Stencil
import Blackfish

public class StencilRenderer: Renderer {

    public func render(path: String, data: [String: Any]? = nil) throws -> String  {
        let data = data ?? [:]
        let c = Context(dictionary: data)
        let template = Template(templateString: path)
        return try template.render(c)
    }
}
