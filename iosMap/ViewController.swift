//
//  ViewController.swift
//  iosMap
//
//  Created by Akekapon Suebprom on 9/21/2559 BE.
//  Copyright © 2559 kratostracking. All rights reserved.
//

import UIKit
import GoogleMaps
class ViewController: UIViewController {

    @IBOutlet weak var container:UIView!
    @IBOutlet weak var mButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //loadView()
        
        
        let camera = GMSCameraPosition.camera(withLatitude: 13.727212, longitude: 100.540639, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        mapView.settings.compassButton = true
        mapView.settings.indoorPicker = true
        mapView.settings.myLocationButton = true
        mapView.mapType = kGMSTypeHybrid
        
        view = mapView
        
        self.container = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 13.727212, longitude: 100.540639)
        marker.title = "Kratostracking"
        marker.snippet = "อาคารอื้อจือเหลียง"
        marker.map = mapView
    
        
    }
    
    @IBAction func click(){
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

