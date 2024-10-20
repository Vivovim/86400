//
//  _6400App.swift
//  86400
//
//  Created by Christopher Huffaker on 10/17/24.
//

import SwiftUI
import Foundation


@main
struct _6400App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
            
        }
    }
            
   
            
            
            class ViewController: UIViewController {
                
                
                var Timer: Timer? = nil
                
                func DDSet() {
                    
                    
                    
                    
                        Timer = Timer.scheduledTimer(
                        timeInterval: 1,
                        target: self,
                        selector: #selector(updateStatusText),
                        userInfo: nil,
                        repeats: true
                    )
                    
                    
                    
                    
                    
                }
                
                
                
                
                @objc    func updateStatusText(_ sender: Timer) {
                    
                    print(secondsDataX())
                }
                
                
                
                
                
                
                
                func secondsDataX() -> String {
                    
                    // Set the time here!
                    let now = Date();
                    
                    
                    // Set the Hours For Calculation
                    let formatter2 = DateFormatter();
                    formatter2.dateFormat = "HH";
                    let HoursXAW = formatter2.string(from: now);
                    
                    
                    // Set the Minutes for Calculation
                    let formatter22 = DateFormatter();
                    formatter22.dateFormat = "mm";
                    let XMin = formatter22.string(from: now);
                    
                    
                    
                    // Set the Seconds for Caclulation
                    let formatter3 = DateFormatter();
                    formatter3.dateFormat = "ss";
                    let Xseconds = formatter3.string(from: now);
                    
                    // Set the time to subtract from
                    
                    let time1 = 23;
                    let time2 = 59;
                    let time3 = 59;
                    
                    // Subtract the times
                    let HRB = (HoursXAW as NSString).integerValue;
                    let HRM = (XMin as NSString).integerValue;
                    let HRS = (Xseconds as NSString).integerValue;
                    
                    
                    
                    var HoursX = time1 - HRB;
                    let MinuteX = time2 - HRM;
                    let SecondsX = time3 - HRS;
                    
                    
                    
                    
                    if HoursX <= 0 {
                        HoursX = 0;
                    }
                    
                    let HoursX60 = (HoursX * 60) * 60;
                    let MinuteX60 = (MinuteX * 60);
                    
                    
                    
                    
                    
                    
                    let total = HoursX60 + MinuteX60 + SecondsX;
                    
                    // let Total1 = total + 1;
                    
                    let Total2 = total as NSNumber;
                    
                    
                    let TotalX : String = Total2.stringValue;
                    
                    // mark -->
                    
                    return(TotalX);
                    
                    
                    // let TotalXY = TotalX as NSString;
                    //     return(TotalXY);
                    
                }
                
            }
       
    }
