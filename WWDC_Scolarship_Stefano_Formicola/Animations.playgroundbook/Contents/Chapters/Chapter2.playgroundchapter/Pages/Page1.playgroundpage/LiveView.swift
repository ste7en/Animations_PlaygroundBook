//#-hidden-code
//
//  LiveView.swift
//
//  Copyright © 2017 Apple Inc. All rights reserved.
//
//#-end-hidden-code

import PlaygroundSupport
import UIKit
public let animationsViewController = AnimationsViewController()
PlaygroundPage.current.liveView = animationsViewController
PlaygroundPage.current.needsIndefiniteExecution = true

public let lord: LordInterface = LordInterface(vc: animationsViewController)
