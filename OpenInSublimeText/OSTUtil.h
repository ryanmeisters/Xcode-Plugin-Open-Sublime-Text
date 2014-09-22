//
//  OSTUtil.h
//  OpenInSublimeText
//
//  Created by Ryan Meisters on 9/17/14.
//  Copyright (c) 2014 Ryan M. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IDEWorkspaceWindowController;
@class IDEWorkspaceTabController;
@class IDEEditorArea;
@class DVTSourceTextView;

IDEWorkspaceWindowController* OSTLastActiveWindowController(void);
IDEWorkspaceTabController* OSTLastActiveWorkspaceTabController(void);
IDEEditorArea* OSTLastActiveEditorArea(void);
DVTSourceTextView* OSTLastActiveSourceView(void);

@interface OSTUtil : NSObject

@end
