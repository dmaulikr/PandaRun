
import SpriteKit

class GameScene: SKScene {
    @lazy var panda = Panda()
    override func didMoveToView(view: SKView) {
        let skyColor = SKColor(red: 113/255, green: 197/255, blue: 207/255, alpha: 1)
        self.backgroundColor = skyColor
        
        panda.position = CGPointMake(200, 400)
        self.addChild(panda)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
