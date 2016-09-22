//
//  View2Controller.swift
//  iosMap
//
//  Created by Akekapon Suebprom on 9/22/2559 BE.
//  Copyright © 2559 kratostracking. All rights reserved.
//

import UIKit
import GoogleMaps

class View2Controller: UIViewController {

    @IBOutlet weak var mView: UIView!
    var mGoogleView = GMSMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//13.727212, longitude: 100.540639
        
        super.viewDidLoad()
        let panoramaNear = CLLocationCoordinate2DMake(13.727560, 100.541145)
        
        let panoView = GMSPanoramaView.panorama(withFrame: CGRect.zero, nearCoordinate: panoramaNear)        
        self.view = panoView;
        
        // Do any additional setup after loading the view.
        //loadGoogleView()
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
