import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
   
    let worker = DataAccessWorker()
    worker.getDataAndReload()
    router.get("Ranking") { req in return "GUI"}
    
}
