//
//  Catalog.m
//  16page
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Catalog.h"
#import "Product.h"

@implementation Catalog
{
    NSArray *data;
}
- (Product *)productWithCode:(NSString *)productCode{
    for (Product *one in data){
        if([one isEqualProduct:productCode]){
            return one;
        }
    }
    return nil;
}
static Catalog *_instance = nil;
+ (id)defaultCatalog
{
    if (_instance == nil) {
        _instance = [[Catalog alloc]init];
    }
    return _instance;
}

- (id)init
{
    self = [super init];
    if (self) {
        data = @[[Product Product:@"BaseBall" code:@"1" price:@"$100" image:@"baseball.png" detail:@"baseball is baseball"],
                 [Product Product:@"BasketBall" code:@"2" price:@"$200" image:@"basketball.png" detail:@"basketball is basketball"],
                 [Product Product:@"FootBall" code:@"3" price:@"$250" image:@"football.png" detail:@"football is football"],
                 [Product Product:@"RudbyBall" code:@"4" price:@"$300" image:@"rugbyball.png" detail:@"rubyball is rubyball"],
                 [Product Product:@"Wilson" code:@"5" price:@"$999" image:@"volleyball.png" detail:@"wilson is wilson"]];
    }
    return self;
}

- (id)productAt:(int)index
{
    return [data objectAtIndex:index];
}

- (int)numberOfProducts
{
    return [data count];
}

@end
