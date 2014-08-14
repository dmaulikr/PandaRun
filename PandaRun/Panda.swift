import SpriteKit

enum Status:Int{
    case run=1,jump,jump2,roll;
}

class Panda : SKSpriteNode {
    let runAtlas = SKTextureAtlas(named: "run.atlas")
    let runFrames = SKTexture[]()
    var status = Status.run
    init() {
        let texture = runAtlas.textureNamed("panda_run_01")
        let size = texture.size()
        super.init(texture:texture, color: UIColor.whiteColor(), size:size)
    
        var i:Int
        for i=1; i < runAtlas.textureNames.count; i++ {
            let tempName = String(format:"panda_run_%.2d" ,i)
            let runTexture = runAtlas.textureNamed(tempName)
            if runTexture{
                runFrames.append(runTexture)
            }
        }
        run()
    }
    
    func run(){
        self.removeAllActions()
        self.status = .run
        self.runAction(SKAction.repeatActionForever(SKAction.animateWithTextures(runFrames, timePerFrame: 0.05)))
    }
}