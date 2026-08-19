.class public Lcom/anythink/network/toutiao/TTATConst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/toutiao/TTATConst$DEBUGGER_CONFIG;,
        Lcom/anythink/network/toutiao/TTATConst$REWARD_EXTRA;
    }
.end annotation


# static fields
.field public static final AD_LOAD_TYPE:Ljava/lang/String; = "tt_ad_load_type"

.field public static final CUSTOM_DISLIKE_INFO:Ljava/lang/String; = "tt_custom_dislike_info"

.field public static final NATIVE_AD_IMAGE_HEIGHT:Ljava/lang/String; = "tt_image_height"

.field public static final NATIVE_AD_INTERRUPT_VIDEOPLAY:Ljava/lang/String; = "tt_can_interrupt_video"

.field public static final NATIVE_AD_VIDEOPLAY_BTN_BITMAP:Ljava/lang/String; = "tt_video_play_btn_bitmap"

.field public static final NATIVE_AD_VIDEOPLAY_BTN_SIZE:Ljava/lang/String; = "tt_video_play_btn_SIZE"

.field public static final NETWORK_FIRM_ID:I = 0xf

.field public static final TK_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final TT_REQUEST_ID:Ljava/lang/String; = "request_id"

.field static a:Ljava/lang/String; = null

.field public static hasRequestPermission:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getNetworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/toutiao/TTATConst;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/anythink/network/toutiao/TTATConst;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catchall_0
    const-string v0, ""

    .line 18
    .line 19
    sput-object v0, Lcom/anythink/network/toutiao/TTATConst;->a:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method
