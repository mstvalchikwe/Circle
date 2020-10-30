//
//  CircleStore.swift
//  CircleIOS
//
//  Created by Michelle on 05/10/2020.
//

import SwiftUI
import Combine

class CircleStore: ObservableObject {
    @Published var circles : [CreateInnerCircle] = innerCircleData
}
