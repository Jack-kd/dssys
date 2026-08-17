.class public final Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/webview/jsPublicBridge/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public apb:I

.field public apc:I

.field public apd:I

.field public ape:Ljava/lang/String;

.field public apf:Ljava/lang/String;

.field public apg:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public netType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static ym()I
    .locals 7

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/SystemUtil;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "connectivity"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 30
    .line 31
    const-string v3, "phone"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 38
    .line 39
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    const/16 v5, 0x1a

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    if-lt v4, v5, :cond_2

    .line 48
    .line 49
    invoke-static {v3}, Lcom/kwad/components/core/webview/jsPublicBridge/a;->a(Landroid/telephony/TelephonyManager;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-class v3, Landroid/net/ConnectivityManager;

    .line 57
    .line 58
    const-string v4, "getMobileDataEnabled"

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    :goto_0
    invoke-static {v0}, Lcom/kwad/sdk/utils/aq;->isWifiConnected(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const/4 v0, 0x3

    .line 87
    return v0

    .line 88
    :cond_3
    if-eqz v2, :cond_4

    .line 89
    .line 90
    return v6

    .line 91
    :cond_4
    if-eqz v0, :cond_5

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    return v0

    .line 95
    :cond_5
    return v1

    .line 96
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    return v1
.end method

.method public static yq()Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    iput v1, v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apb:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    iput v1, v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apc:I

    .line 11
    .line 12
    iput v1, v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apd:I

    .line 13
    .line 14
    const-class v1, Lcom/kwad/sdk/service/a/f;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/kwad/sdk/service/a/f;

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/kwad/sdk/service/a/f;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/kwad/sdk/utils/n;->cZ(Landroid/content/Context;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->appVersion:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->ym()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->netType:I

    .line 37
    .line 38
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KZ()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->ape:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "KSAdChinaMobile.ksadGetPhoneNumber"

    .line 45
    .line 46
    iput-object v1, v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apf:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "KSAdChinaMobile.ksadGetOperJudge"

    .line 49
    .line 50
    iput-object v1, v0, Lcom/kwad/components/core/webview/jsPublicBridge/a/a$a;->apg:Ljava/lang/String;

    .line 51
    .line 52
    return-object v0
.end method
