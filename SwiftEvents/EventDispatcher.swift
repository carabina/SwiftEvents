//
// Created by freezing on 27/01/15.
// Copyright (c) 2015 iccode ltd. All rights reserved.
//

import Foundation

class EventDispatcher : IEventDispatcherProtocol {
    func dispatchEvent(e : Event)
    {
        EventHub.instance.trigger(e.type,withEvent : e);
    }
    
    func addEventListener(name :String,withFunction f : (Event)->()) {
        EventHub.instance.addEventListener(name, withFunction: f)
    }
    
    func removeEventListener(name : String, withFunction f : (Event)->()) {
        EventHub.instance.removeEventListener(name, withFunction : f)
    }
    
}
