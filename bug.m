In Objective-C, a rare but perplexing issue can arise from the interaction between KVO (Key-Value Observing) and the memory management system, specifically when dealing with weak references.  Consider this scenario:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, weak) NSString *observedString;
@end

@implementation MyClass
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@