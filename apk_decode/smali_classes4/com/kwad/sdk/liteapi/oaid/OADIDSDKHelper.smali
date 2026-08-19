.class public Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper$IIdentifierListenerImpl;,
        Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper$a;
    }
.end annotation


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "OADIDSDKHelper:"

.field private static final TAG:Ljava/lang/String; = "KSAdSDK"

.field private static mIsRequestIng:Z = false

.field private static sGetOaidFail:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->sGetOaidFail:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$102(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->mIsRequestIng:Z

    .line 2
    .line 3
    return p0
.end method

.method public static getOAId(Landroid/content/Context;Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper$a;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    sget-boolean v0, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->sGetOaidFail:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->isSupport()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sput-boolean v1, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->sGetOaidFail:Z

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    sget-boolean v0, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->mIsRequestIng:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    sput-boolean v1, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->mIsRequestIng:Z

    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper$IIdentifierListenerImpl;

    .line 34
    .line 35
    invoke-direct {v0, v2, v3, p1}, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper$IIdentifierListenerImpl;-><init>(JLcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper$a;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    const/4 p0, 0x0

    .line 46
    sput-boolean p0, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->mIsRequestIng:Z

    .line 47
    .line 48
    sput-boolean v1, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;->sGetOaidFail:Z

    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method

.method public static isSupport()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper$1;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper$1;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v1, v2}, Lcom/bun/miitmdid/interfaces/IIdentifierListener;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {}, Lcom/bun/miitmdid/e;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    :try_start_2
    const-string v1, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 15
    .line 16
    const-class v2, Lcom/kwad/sdk/liteapi/oaid/OADIDSDKHelper;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :catchall_0
    return v0
.end method
