// main.m
#import <Foundation/Foundation.h>
#import "CarUtilities.h"
#import "Car.h"

//
//int getRandomInteger(int minimum, int maximum) {
//    return arc4random_uniform((maximum - minimum) + 1) + minimum;
//}

static int getRandomInteger(int, int);

// Static function implementation
static int getRandomInteger(int minimum, int maximum) {
    return arc4random_uniform((maximum - minimum) + 1) + minimum;
}

NSString *getRandomMake(NSArray *);

int countByTwo() {
    static int currentCount = 0;
    currentCount += 2;
    return currentCount;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double odometer = 9200.8;
        int odometerAsInteger = (int)odometer;
        
        NSLog(@"You've driven %.1f miles", odometer);        // 9200.8
        NSLog(@"You've driven %d miles\n\n", odometerAsInteger); // 9200
    }
    
    //Output formats
    BOOL isBool = YES;
    NSLog(@"%d", isBool);
    NSLog(@"%@", isBool ? @"YES" : @"NO");
    NSLog(@"\n\n");
    
    char aChar = 'a';
    unsigned char anUnsignedChar = 255;
    NSLog(@"The letter %c is ASCII number %hhd", aChar, aChar);
    NSLog(@"%hhu", anUnsignedChar);
    NSLog(@"\n\n");
    
    short aShort = -32768;
    unsigned short anUnsignedShort = 65535;
    NSLog(@"%hd", aShort);
    NSLog(@"%hu", anUnsignedShort);
    NSLog(@"\n\n");
    
    int anInt = -2147483648;
    unsigned int anUnsignedInt = 4294967295;
    NSLog(@"%d", anInt);
    NSLog(@"%u", anUnsignedInt);
    NSLog(@"\n\n");
    
    long double aLong = -9223372036854775808;
    unsigned long anUnsignedLong = 18446744073709551615;
    float f = 29.0;
    NSLog(@"%ld", aLong);
    NSLog(@"%lu", anUnsignedLong);
    NSLog(@"\n\n");
    
    long long aLongLong = -9223372036854775808;
    unsigned long long anUnsignedLongLong = 18446744073709551615;
    NSLog(@"%lld", aLongLong);
    NSLog(@"%llu", anUnsignedLongLong);
    NSLog(@"\n\n");
    //
    
    //Primitive sizes
    NSLog(@"Determine the size of each primitive\n");
    
    NSLog(@"Size of char: %zu", sizeof(char));   // This will always be 1
    NSLog(@"Size of short: %zu", sizeof(short));
    NSLog(@"Size of int: %zu", sizeof(int));
    NSLog(@"Size of long: %zu", sizeof(long));
    NSLog(@"Size of long long: %zu", sizeof(long long));
    NSLog(@"Size of float: %zu", sizeof(float));
    NSLog(@"Size of double: %zu", sizeof(double));
    NSLog(@"Size of size_t: %zu", sizeof(size_t));
    
    NSLog(@"\n\n");
    //
    
    //Function example
    int randomNumber = getRandomInteger(-10, 10);
    NSLog(@"Selected a random number between -10 and 10: %d",
          randomNumber);
    NSLog(@"\n\n");
    //
    
    //Function pointer example
    NSArray *makes = @[@"Honda", @"Ford", @"Nissan", @"Porsche"];
    NSLog(@"Selected a %@", getRandomMake(makes));
    NSLog(@"\n\n");
    //
    
    //Static local variable example
    NSLog(@"%d", countByTwo());    // 2
    NSLog(@"%d", countByTwo());    // 4
    NSLog(@"%d", countByTwo());    // 6
    NSLog(@"\n\n");
    //
    
    //Import from a separate class
    NSDictionary *makesAndModels = @{
                                     @"Ford": @[@"Explorer", @"F-150"],
                                     @"Honda": @[@"Accord", @"Civic", @"Pilot"],
                                     @"Nissan": @[@"370Z", @"Altima", @"Versa"],
                                     @"Porsche": @[@"911 Turbo", @"Boxster", @"Cayman S"]
                                     };
    NSString *randomCar = CUGetRandomMakeAndModel(makesAndModels);
    NSLog(@"Selected a %@", randomCar);
    NSLog(@"\n\n");
    //
    
    //Instantiation and usage
    Car *toyota = [[Car alloc] init];
    
    [toyota setModel:@"Toyota Corolla"];
    NSLog(@"Created a %@", [toyota model]);
    
    toyota.model = @"Toyota Camry";
    NSLog(@"Changed the car to a %@", toyota.model);
    
    [toyota drive];
    NSLog(@"\n\n");
    //

    return 0;
}

NSString *getRandomMake(NSArray *makes) {
    int maximum = (int)[makes count];   //equivalent to sizeof(makes)
    int randomIndex = arc4random_uniform(maximum);
    return makes[randomIndex];  //Returns value at randomIndex in array makes
}
