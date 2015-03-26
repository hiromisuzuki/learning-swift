//
//  GameScene.swift
//  particle
//
//  Created by Hiromi Suzuki on 2015/03/26.
//  Copyright (c) 2015年 Hiromi Suzuki. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        var particleEmitter:SKEmitterNode = SKEmitterNode(fileNamed: "MyParticle.sks")
        particleEmitter.position = CGPoint(x: 0, y: 0)
        particleEmitter.particlePosition = CGPoint(x: 400, y: 400)
        addChild(particleEmitter)
    }
    
    /** 画面をタッチしたときに実行される */
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
       println("called update ###")
        println(NSDate())
    }
}
