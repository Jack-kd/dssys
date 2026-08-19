.class public final Landroidx/browser/customtabs/CustomTabsIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsIntent$Api21Impl;,
        Landroidx/browser/customtabs/CustomTabsIntent$Api36Impl;,
        Landroidx/browser/customtabs/CustomTabsIntent$Api34Impl;,
        Landroidx/browser/customtabs/CustomTabsIntent$Api24Impl;,
        Landroidx/browser/customtabs/CustomTabsIntent$Api23Impl;,
        Landroidx/browser/customtabs/CustomTabsIntent$Builder;,
        Landroidx/browser/customtabs/CustomTabsIntent$ContentTargetType;,
        Landroidx/browser/customtabs/CustomTabsIntent$CloseButtonPosition;,
        Landroidx/browser/customtabs/CustomTabsIntent$ActivitySideSheetRoundedCornersPosition;,
        Landroidx/browser/customtabs/CustomTabsIntent$ActivitySideSheetDecorationType;,
        Landroidx/browser/customtabs/CustomTabsIntent$ActivitySideSheetPosition;,
        Landroidx/browser/customtabs/CustomTabsIntent$ActivityHeightResizeBehavior;,
        Landroidx/browser/customtabs/CustomTabsIntent$ShareState;,
        Landroidx/browser/customtabs/CustomTabsIntent$OpenInBrowserState;,
        Landroidx/browser/customtabs/CustomTabsIntent$ColorScheme;
    }
.end annotation


# static fields
.field public static final ACTIVITY_HEIGHT_ADJUSTABLE:I = 0x1

.field public static final ACTIVITY_HEIGHT_DEFAULT:I = 0x0

.field public static final ACTIVITY_HEIGHT_FIXED:I = 0x2

.field private static final ACTIVITY_HEIGHT_MAX:I = 0x2

.field public static final ACTIVITY_SIDE_SHEET_DECORATION_TYPE_DEFAULT:I = 0x0

.field public static final ACTIVITY_SIDE_SHEET_DECORATION_TYPE_DIVIDER:I = 0x3

.field private static final ACTIVITY_SIDE_SHEET_DECORATION_TYPE_MAX:I = 0x3

.field public static final ACTIVITY_SIDE_SHEET_DECORATION_TYPE_NONE:I = 0x1

.field public static final ACTIVITY_SIDE_SHEET_DECORATION_TYPE_SHADOW:I = 0x2

.field public static final ACTIVITY_SIDE_SHEET_POSITION_DEFAULT:I = 0x0

.field public static final ACTIVITY_SIDE_SHEET_POSITION_END:I = 0x2

.field private static final ACTIVITY_SIDE_SHEET_POSITION_MAX:I = 0x2

.field public static final ACTIVITY_SIDE_SHEET_POSITION_START:I = 0x1

.field public static final ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION_DEFAULT:I = 0x0

.field private static final ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION_MAX:I = 0x2

.field public static final ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION_NONE:I = 0x1

.field public static final ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION_TOP:I = 0x2

.field public static final CLOSE_BUTTON_POSITION_DEFAULT:I = 0x0

.field public static final CLOSE_BUTTON_POSITION_END:I = 0x2

.field private static final CLOSE_BUTTON_POSITION_MAX:I = 0x2

.field public static final CLOSE_BUTTON_POSITION_START:I = 0x1

.field public static final COLOR_SCHEME_DARK:I = 0x2

.field public static final COLOR_SCHEME_LIGHT:I = 0x1

.field private static final COLOR_SCHEME_MAX:I = 0x2

.field public static final COLOR_SCHEME_SYSTEM:I = 0x0

.field public static final CONTENT_TARGET_TYPE_IMAGE:I = 0x1
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final CONTENT_TARGET_TYPE_LINK:I = 0x2
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final EXTRA_ACTION_BUTTON_BUNDLE:Ljava/lang/String; = "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

.field public static final EXTRA_ACTIVITY_HEIGHT_RESIZE_BEHAVIOR:Ljava/lang/String; = "androidx.browser.customtabs.extra.ACTIVITY_HEIGHT_RESIZE_BEHAVIOR"

.field public static final EXTRA_ACTIVITY_SIDE_SHEET_BREAKPOINT_DP:Ljava/lang/String; = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_BREAKPOINT_DP"

.field public static final EXTRA_ACTIVITY_SIDE_SHEET_DECORATION_TYPE:Ljava/lang/String; = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_DECORATION_TYPE"

.field public static final EXTRA_ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION:Ljava/lang/String; = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION"

.field public static final EXTRA_ACTIVITY_SIDE_SHEET_POSITION:Ljava/lang/String; = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_POSITION"

.field public static final EXTRA_ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION:Ljava/lang/String; = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION"

.field public static final EXTRA_CLICKED_CONTENT_TARGET_TYPE:Ljava/lang/String; = "androidx.browser.customtabs.extra.CLICKED_CONTENT_TARGET_TYPE"
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final EXTRA_CLOSE_BUTTON_ENABLED:Ljava/lang/String; = "androidx.browser.customtabs.extra.CLOSE_BUTTON_ENABLED"

.field public static final EXTRA_CLOSE_BUTTON_ICON:Ljava/lang/String; = "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

.field public static final EXTRA_CLOSE_BUTTON_POSITION:Ljava/lang/String; = "androidx.browser.customtabs.extra.CLOSE_BUTTON_POSITION"

.field public static final EXTRA_COLOR_SCHEME:Ljava/lang/String; = "androidx.browser.customtabs.extra.COLOR_SCHEME"

.field public static final EXTRA_COLOR_SCHEME_PARAMS:Ljava/lang/String; = "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

.field public static final EXTRA_CONTEXT_IMAGE_ALT_TEXT:Ljava/lang/String; = "androidx.browser.customtabs.extra.CONTEXT_IMAGE_ALT_TEXT"
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final EXTRA_CONTEXT_IMAGE_DATA_URI:Ljava/lang/String; = "androidx.browser.customtabs.extra.CONTEXT_IMAGE_DATA_URI"
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final EXTRA_CONTEXT_IMAGE_URL:Ljava/lang/String; = "androidx.browser.customtabs.extra.CONTEXT_IMAGE_URL"
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final EXTRA_CONTEXT_LINK_TEXT:Ljava/lang/String; = "androidx.browser.customtabs.extra.CONTEXT_LINK_TEXT"
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final EXTRA_CONTEXT_LINK_URL:Ljava/lang/String; = "androidx.browser.customtabs.extra.CONTEXT_LINK_URL"
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final EXTRA_CUSTOM_CONTENT_ACTIONS:Ljava/lang/String; = "androidx.browser.customtabs.extra.CUSTOM_CONTENT_ACTIONS"
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field public static final EXTRA_DEFAULT_SHARE_MENU_ITEM:Ljava/lang/String; = "android.support.customtabs.extra.SHARE_MENU_ITEM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DISABLE_BACKGROUND_INTERACTION:Ljava/lang/String; = "androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION"

.field public static final EXTRA_DISABLE_BOOKMARKS_BUTTON:Ljava/lang/String; = "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON"

.field public static final EXTRA_DISABLE_DOWNLOAD_BUTTON:Ljava/lang/String; = "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON"

.field public static final EXTRA_ENABLE_EPHEMERAL_BROWSING:Ljava/lang/String; = "androidx.browser.customtabs.extra.ENABLE_EPHEMERAL_BROWSING"

.field public static final EXTRA_ENABLE_INSTANT_APPS:Ljava/lang/String; = "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

.field public static final EXTRA_ENABLE_URLBAR_HIDING:Ljava/lang/String; = "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

.field public static final EXTRA_EXIT_ANIMATION_BUNDLE:Ljava/lang/String; = "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

.field public static final EXTRA_INITIAL_ACTIVITY_HEIGHT_PX:Ljava/lang/String; = "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_PX"

.field public static final EXTRA_INITIAL_ACTIVITY_WIDTH_PX:Ljava/lang/String; = "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_WIDTH_PX"

.field public static final EXTRA_MENU_ITEMS:Ljava/lang/String; = "android.support.customtabs.extra.MENU_ITEMS"

.field public static final EXTRA_NAVIGATION_BAR_COLOR:Ljava/lang/String; = "androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR"

.field public static final EXTRA_NAVIGATION_BAR_DIVIDER_COLOR:Ljava/lang/String; = "androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR"

.field public static final EXTRA_NETWORK:Ljava/lang/String; = "androidx.browser.customtabs.extra.NETWORK"

.field public static final EXTRA_OPEN_IN_BROWSER_STATE:Ljava/lang/String; = "androidx.browser.customtabs.extra.OPEN_IN_BROWSER_STATE"
    .annotation build Landroidx/browser/customtabs/ExperimentalOpenInBrowser;
    .end annotation
.end field

.field public static final EXTRA_REMOTEVIEWS:Ljava/lang/String; = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

.field public static final EXTRA_REMOTEVIEWS_CLICKED_ID:Ljava/lang/String; = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_CLICKED_ID"

.field public static final EXTRA_REMOTEVIEWS_PENDINGINTENT:Ljava/lang/String; = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

.field public static final EXTRA_REMOTEVIEWS_VIEW_IDS:Ljava/lang/String; = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

.field public static final EXTRA_SECONDARY_TOOLBAR_COLOR:Ljava/lang/String; = "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

.field public static final EXTRA_SECONDARY_TOOLBAR_SWIPE_UP_GESTURE:Ljava/lang/String; = "androidx.browser.customtabs.extra.SECONDARY_TOOLBAR_SWIPE_UP_GESTURE"

.field public static final EXTRA_SEND_TO_EXTERNAL_DEFAULT_HANDLER:Ljava/lang/String; = "android.support.customtabs.extra.SEND_TO_EXTERNAL_HANDLER"

.field public static final EXTRA_SESSION:Ljava/lang/String; = "android.support.customtabs.extra.SESSION"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "android.support.customtabs.extra.SESSION_ID"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final EXTRA_SHARE_STATE:Ljava/lang/String; = "androidx.browser.customtabs.extra.SHARE_STATE"

.field public static final EXTRA_TINT_ACTION_BUTTON:Ljava/lang/String; = "android.support.customtabs.extra.TINT_ACTION_BUTTON"

.field public static final EXTRA_TITLE_VISIBILITY_STATE:Ljava/lang/String; = "android.support.customtabs.extra.TITLE_VISIBILITY"

.field public static final EXTRA_TOOLBAR_COLOR:Ljava/lang/String; = "android.support.customtabs.extra.TOOLBAR_COLOR"

.field public static final EXTRA_TOOLBAR_CORNER_RADIUS_DP:Ljava/lang/String; = "androidx.browser.customtabs.extra.TOOLBAR_CORNER_RADIUS_DP"

.field public static final EXTRA_TOOLBAR_ITEMS:Ljava/lang/String; = "android.support.customtabs.extra.TOOLBAR_ITEMS"

.field public static final EXTRA_TRANSLATE_LANGUAGE_TAG:Ljava/lang/String; = "androidx.browser.customtabs.extra.TRANSLATE_LANGUAGE_TAG"

.field public static final EXTRA_TRIGGERED_CUSTOM_CONTENT_ACTION_ID:Ljava/lang/String; = "androidx.browser.customtabs.extra.TRIGGERED_CUSTOM_CONTENT_ACTION_ID"
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation
.end field

.field private static final EXTRA_USER_OPT_OUT_FROM_CUSTOM_TABS:Ljava/lang/String; = "android.support.customtabs.extra.user_opt_out"

.field private static final HTTP_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "android.support.customtabs.customaction.DESCRIPTION"

.field public static final KEY_ICON:Ljava/lang/String; = "android.support.customtabs.customaction.ICON"

.field public static final KEY_ID:Ljava/lang/String; = "android.support.customtabs.customaction.ID"

.field public static final KEY_MENU_ITEM_TITLE:Ljava/lang/String; = "android.support.customtabs.customaction.MENU_ITEM_TITLE"

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "android.support.customtabs.customaction.PENDING_INTENT"

.field private static final MAX_TOOLBAR_CORNER_RADIUS_DP:I = 0x10

.field private static final MAX_TOOLBAR_ITEMS:I = 0x5

.field public static final NO_TITLE:I = 0x0

.field public static final OPEN_IN_BROWSER_STATE_DEFAULT:I = 0x0
    .annotation build Landroidx/browser/customtabs/ExperimentalOpenInBrowser;
    .end annotation
.end field

.field private static final OPEN_IN_BROWSER_STATE_MAX:I = 0x2
    .annotation build Landroidx/browser/customtabs/ExperimentalOpenInBrowser;
    .end annotation
.end field

.field public static final OPEN_IN_BROWSER_STATE_OFF:I = 0x2
    .annotation build Landroidx/browser/customtabs/ExperimentalOpenInBrowser;
    .end annotation
.end field

.field public static final OPEN_IN_BROWSER_STATE_ON:I = 0x1
    .annotation build Landroidx/browser/customtabs/ExperimentalOpenInBrowser;
    .end annotation
.end field

.field public static final SHARE_STATE_DEFAULT:I = 0x0

.field private static final SHARE_STATE_MAX:I = 0x2

.field public static final SHARE_STATE_OFF:I = 0x2

.field public static final SHARE_STATE_ON:I = 0x1

.field public static final SHOW_PAGE_TITLE:I = 0x1

.field public static final TOOLBAR_ACTION_BUTTON_ID:I


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final startAnimationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method

.method public static getActivityResizeBehavior(Landroid/content/Intent;)I
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_HEIGHT_RESIZE_BEHAVIOR"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static getActivitySideSheetBreakpointDp(Landroid/content/Intent;)I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_BREAKPOINT_DP"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static getActivitySideSheetDecorationType(Landroid/content/Intent;)I
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_DECORATION_TYPE"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static getActivitySideSheetPosition(Landroid/content/Intent;)I
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_POSITION"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static getActivitySideSheetRoundedCornersPosition(Landroid/content/Intent;)I
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static getCloseButtonPosition(Landroid/content/Intent;)I
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.CLOSE_BUTTON_POSITION"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static getColorSchemeParams(Landroid/content/Intent;I)Landroidx/browser/customtabs/CustomTabColorSchemeParams;
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-gt p1, v0, :cond_2

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-static {p0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/os/Bundle;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-static {p0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams;->withDefaults(Landroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    return-object v0

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "Invalid colorScheme: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public static getCustomContentActions(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroidx/browser/customtabs/CustomContentAction;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.CUSTOM_CONTENT_ACTIONS"

    .line 2
    .line 3
    const-class v1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Landroidx/core/content/IntentCompat;->getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    check-cast v3, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-static {v3}, Landroidx/browser/customtabs/CustomContentAction;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/CustomContentAction;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static getInitialActivityHeightPx(Landroid/content/Intent;)I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_PX"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static getInitialActivityWidthPx(Landroid/content/Intent;)I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_WIDTH_PX"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private static getLocaleForLanguageTag(Landroid/content/Intent;)Ljava/util/Locale;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/browser/customtabs/CustomTabsIntent$Api21Impl;->getLocaleForLanguageTag(Landroid/content/Intent;)Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getMaxToolbarItems()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public static getNetwork(Landroid/content/Intent;)Landroid/net/Network;
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.NETWORK"

    .line 2
    .line 3
    const-class v1, Landroid/net/Network;

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/net/Network;

    .line 10
    .line 11
    return-object p0
.end method

.method public static getOpenInBrowserButtonState(Landroid/content/Intent;)I
    .locals 2
    .annotation build Landroidx/browser/customtabs/ExperimentalOpenInBrowser;
    .end annotation

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.OPEN_IN_BROWSER_STATE"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static getSecondaryToolbarSwipeUpGesture(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.SECONDARY_TOOLBAR_SWIPE_UP_GESTURE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/PendingIntent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getToolbarCornerRadiusDp(Landroid/content/Intent;)I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.TOOLBAR_CORNER_RADIUS_DP"

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getTranslateLocale(Landroid/content/Intent;)Ljava/util/Locale;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/browser/customtabs/CustomTabsIntent;->getLocaleForLanguageTag(Landroid/content/Intent;)Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static isActivitySideSheetMaximizationEnabled(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static isBackgroundInteractionEnabled(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    xor-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    return p0
.end method

.method public static isBookmarksButtonEnabled(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    xor-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    return p0
.end method

.method public static isCloseButtonEnabled(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "androidx.browser.customtabs.extra.CLOSE_BUTTON_ENABLED"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static isDownloadButtonEnabled(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    xor-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    return p0
.end method

.method public static isSendToExternalDefaultHandlerEnabled(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "android.support.customtabs.extra.SEND_TO_EXTERNAL_HANDLER"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static setAlwaysUseBrowserUI(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v0, "android.intent.action.VIEW"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/high16 v0, 0x10000000

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v0, "android.support.customtabs.extra.user_opt_out"

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public static shouldAlwaysUseBrowserUI(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "android.support.customtabs.extra.user_opt_out"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/high16 v0, 0x10000000

    .line 15
    .line 16
    and-int/2addr p0, v0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    return v1
.end method


# virtual methods
.method public isEphemeralBrowsingEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "androidx.browser.customtabs.extra.ENABLE_EPHEMERAL_BROWSING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-static {p1, p2, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
