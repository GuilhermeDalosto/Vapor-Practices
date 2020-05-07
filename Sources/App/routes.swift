import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    let databaseWorker = DatabaseWorker()
    router.get("Ranking") { req in return databaseWorker.start()}
    
}
