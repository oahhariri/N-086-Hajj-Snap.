//
//  ViewController.swift
//  Hajj Snap
//
//  Created by Majed Hariri on 8/1/18.
//  Copyright © 2018 Majed Hariri. All rights reserved.
//

import UIKit
import SceneKit
import ARKit
import Vision

class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    @IBOutlet weak var debugTextView: UITextView!
    
    let dispatchQueueML = DispatchQueue(label: "com.hajjSanp.firstone")
    var visionRequests = [VNRequest]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sceneView.delegate = self

        let scene = SCNScene()
        sceneView.scene = scene
        
    }
    
    
    func randomString(length: Int) -> String {
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)
        
        var randomString = ""
        
        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        return randomString
    }
    
    @IBAction func Take_Pic(_ sender: Any) {
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        if let data = UIImagePNGRepresentation( sceneView.snapshot()) {
            let filename = paths[0].appendingPathComponent("\(randomString(length: 10)).png")
            do{
                
            try data.write(to: filename)
                
            }catch{
            
            }
        }
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }
    
    // MARK: - ARSCNViewDelegat
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        DispatchQueue.main.async {
            //Need Update in here
        }
    }
    
}
