//#-hidden-code
//
//  LiveView.swift
//
//  Copyright © 2017 Apple Inc. All rights reserved.
//
//#-end-hidden-code

import PlaygroundSupport
import UIKit
public let streetViewController: StreetViewController = StreetViewController()
PlaygroundPage.current.liveView = streetViewController
PlaygroundPage.current.needsIndefiniteExecution = true

public let drivingLord = DrivingLordInterface(vc: streetViewController)
