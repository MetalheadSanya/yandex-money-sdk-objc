//
// Created by mertvetcov on 21.05.14.
// Copyright (c) 2014 Yandex.Money. All rights reserved.
//

#import "YMACardsSourceGroup.h"


@implementation YMACardsSourceGroup

- (id)initWithCards:(NSArray *)cards defaultCard:(YMAMoneySource *)defaultCard cscRequired:(BOOL)cscRequired allowed:(BOOL)allowed {
    self = [self init];

    if (self) {
        _cards = [cards copy];
        _defaultCard = defaultCard;
        _isAllowed = allowed;
        _isCscRequired = cscRequired;
    }

    return self;
}

+ (instancetype)cardsSourceWithCards:(NSArray *)cards defaultCard:(YMAMoneySource *)defaultCard cscRequired:(BOOL)cscRequired allowed:(BOOL)allowed {
    return [[YMACardsSourceGroup alloc] initWithCards:cards defaultCard:defaultCard cscRequired:cscRequired allowed:allowed];
}


#pragma mark -
#pragma mark *** Overridden methods ***
#pragma mark -

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, %@>", [self class], (__bridge void *) self,
                                      @{
                                              @"isAllowed" : (self.isAllowed) ? @"YES" : @"NO",
                                              @"isCscRequired" : (self.isCscRequired) ? @"YES" : @"NO",
                                              @"defaultCard" : self.defaultCard.description,
                                              @"cards" : self.cards.description
                                      }];
}

@end