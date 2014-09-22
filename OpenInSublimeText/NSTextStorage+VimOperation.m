////
////  NSTextStorage+VimOperation.m
////  XVim
////
////  Created by Suzuki Shuichiro on 7/30/13.
////
////
//
#import <AppKit/AppKit.h>
#import "XVimStringBuffer.h"

#import "NSTextStorage+VimOperation.h"

@implementation NSTextStorage (VimOperation)

- (NSString *)xvim_string
{
    return self.string;
}

- (NSUInteger)xvim_tabWidth
{
    return 8;
}

- (NSRange)xvim_indexRangeForLineAtIndex:(NSUInteger)index newLineLength:(NSUInteger *)newLineLength
{

    NSString *string = self.xvim_string;
    NSUInteger len = self.length;
    NSUInteger end, contentEnd;

    if (index > len) {
        index = len;
    }

    [string getLineStart:&index end:&end contentsEnd:&contentEnd forRange:NSMakeRange(index, 0)];
    if (newLineLength) *newLineLength = contentEnd - end;
    return NSMakeRange(index, contentEnd - index);
}

static NSUInteger xvim_sb_count_columns(xvim_string_buffer_t *sb, NSUInteger tabWidth)
{
    NSUInteger col = 0;

    if (!xvim_sb_at_end(sb)) {
        do {
            if (xvim_sb_peek(sb) == '\t') {
                col += tabWidth;
                if (tabWidth) col -= col % tabWidth;
            } else {
                col++;
            }
        } while (xvim_sb_next(sb));
    }

    return col;
}

- (NSUInteger)xvim_columnOfIndex:(NSUInteger)index
{
    NSRange range = [self xvim_indexRangeForLineAtIndex:index newLineLength:NULL];
    xvim_string_buffer_t sb;

    if (index < NSMaxRange(range)) {
        range.length = index - range.location;
    }
    if (range.length == 0) {
        return 0;
    }

    xvim_sb_init(&sb, self.xvim_string, range.location, range);
    return xvim_sb_count_columns(&sb, self.xvim_tabWidth);
}

@end
