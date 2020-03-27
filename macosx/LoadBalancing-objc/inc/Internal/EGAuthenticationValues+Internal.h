/* Exit Games Photon LoadBalancing - objC Client Lib
 * Copyright (C) 2004-2020 by Exit Games GmbH. All rights reserved.
 * http://www.photonengine.com
 * mailto:developer@photonengine.com
 */

#pragma once

#import "LoadBalancing-objc/inc/EGAuthenticationValues.h"

@interface EGMutableAuthenticationValues ()

@property (readwrite, copy) NSString* Secret;

@end