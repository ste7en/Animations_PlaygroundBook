//#-hidden-code
//
//  LiveView.swift
//
//  Copyright © 2017 Apple Inc. All rights reserved.
//
//#-end-hidden-code

import PlaygroundSupport
import UIKit
public let spaceViewController = SpaceViewController()
PlaygroundPage.current.liveView = spaceViewController
PlaygroundPage.current.needsIndefiniteExecution = true

public let spaceLord: SpaceLordInterface = SpaceLordInterface(vc: spaceViewController)
