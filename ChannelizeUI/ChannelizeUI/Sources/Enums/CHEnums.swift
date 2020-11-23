//
//  CHEnums.swift
//  ChannelizeUI
//
//  Created by bigstep on 6/15/20.
//  Copyright © 2020 Channelize. All rights reserved.
//

import Foundation

struct GoogleTranslationError: LocalizedError {
    var errorDescription: String? { return errorMessage}
    var failureReason: String? { return errorMessage }
    var recoverySuggestion: String? { return nil }
    var helpAnchor: String? { return nil }
    
    private var errorMessage: String?
    
    init(message: String?) {
        self.errorMessage = message
    }
}

enum MessageSource {
    case local
    case remote
}

enum BaseMessageStatus {
    case sending
    case sent
    case seen
}

enum BaseMessageType {
    case text
    case image
    case video
    case deletedMessage
    case location
    case gifSticker
    case audio
    case dateSeperator
    case senderName
    case linkPreview
    case metaMessage
    case missedVideoCall
    case missedVoiceCall
    case undefined
    case groupedImages
    case unReadMessage
    case quotedMessage
    case doc
    case callMetaMessage
    case callCompleted
    case callDeclined
}

enum VideoCallQuality : String{
    case Quality640x480 = "640*480"
    case Quality1280x720 = "1280*720"
    case Quality960x720 = "960x720"
    case Quality840x480 = "840x480"
    case Quality480x480 = "480x480"
    case Quality640x360 = "640x360"
}

enum AudioModelStatus {
    case playing
    case loading
    case paused
    case stopped
}

enum AudioPermission{
    case allowed
    case denied
    case unknown
}

