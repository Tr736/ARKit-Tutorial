//
//  ViewController.swift
//  EarthAR
//
//  Created by Thomas Richardson on 18/06/2018.
//  Copyright © 2018 Hidden-Pixel. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

final class ViewController: UIViewController  {

    // MARK:- @IBOUTLETS

    @IBOutlet var sceneView: ARSCNView!
    
    // MARK:- PROPERTIES
    private var arManager = ARManager()

    // MARK:- FUNCTIONS

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = arManager
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        
        // Set the scene to the view
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    


    // MARK:- CUSTOM FUNCTIONS

    // MARK:- @IBACTIONS
    
    // MARK:- ACTIONS
    
    // MARK:- DELEGATES

}
