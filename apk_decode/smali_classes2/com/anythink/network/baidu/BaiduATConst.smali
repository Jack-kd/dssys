.class public Lcom/anythink/network/baidu/BaiduATConst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/baidu/BaiduATConst$DEBUGGER_CONFIG;
    }
.end annotation


# static fields
.field public static final BD_NATIVE_REWARD:Ljava/lang/String; = "bd_native_reward"

.field public static final BD_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final BD_REWARD_INFO:Ljava/lang/String; = "bd_reward_info"

.field public static final EN_P_KEY:Ljava/lang/String; = "en_p"

.field public static final EXPECTED_SIZE_HEIGHT:Ljava/lang/String; = "bd_expected_size_height"

.field public static final EXPECTED_SIZE_WIDTH:Ljava/lang/String; = "bd_expected_size_width"

.field public static final NETWORK_FIRM_ID:I = 0x16

.field public static final REQUEST_PARAMS_CUST_EXT:Ljava/lang/String; = "request_params_cust_ext"

.field public static final REQUEST_PARAMS_EXT:Ljava/lang/String; = "request_params_ext"

.field public static final STYLE_BUILDER:Ljava/lang/String; = "baidu_style_builder"

.field public static final TK_REQUEST_ID:Ljava/lang/String; = "request_id"


# direct methods
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
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/baidu/mobads/sdk/api/AdSettings;->getSDKVersion()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :catchall_0
    return-object v0
.end method
