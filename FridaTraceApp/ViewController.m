//
//  ViewController.m
//  FridaTraceApp
//
//  Created by Dmitry on 22.04.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)uiApplication {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"/open/Url"]];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"/open/Url/options/completionHandler"] options:@{} completionHandler:nil];
    [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"/can/Open/Url"]];
}

- (IBAction)fileManager {
    [[NSFileManager defaultManager] fileExistsAtPath:@"/file/Exists/At/Path"];
    [[NSFileManager defaultManager] isReadableFileAtPath:@"/is/Readble/At/Path"];
    [[NSFileManager defaultManager] createFileAtPath:@"/create/file/at/urk" contents:nil attributes:nil];
}


- (IBAction)userDefaults {
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"key1"];
    [[NSUserDefaults standardUserDefaults] stringForKey:@"key2"];
}

- (IBAction)string {
    [[NSString alloc] initWithContentsOfFile:@"file.txt" encoding:nil error:nil];
    
    NSError *error;
    NSString *stringToBeWritten = @"This is a test.";
    [stringToBeWritten writeToFile:@"/private/jailbreak.txt"
                        atomically:YES
                          encoding:NSUTF8StringEncoding
                             error:&error];

}

- (IBAction)data {
    [[NSData new] writeToFile:@"/data/write/to/fiel" atomically:YES];
    [NSData dataWithContentsOfURL:[NSURL URLWithString:@"/urk/with/string"]];
}

- (IBAction)array {
    [NSArray arrayWithContentsOfFile:@"/array/with/Content/ofFiel"];
    [@[] writeToFile:@"/write/to/file" atomically:YES];
}

- (IBAction)dictionary {
    NSDictionary *dic = @{};
    [dic writeToFile:@"/write/to/file" atomically:YES];
    
    [NSDictionary dictionaryWithContentsOfFile:@"/dict/from/file"];
}

@end
