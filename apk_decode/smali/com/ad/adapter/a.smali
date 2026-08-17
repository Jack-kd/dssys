.class public final Lcom/ad/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ad/adapter/a$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "AdSDK"

.field public static volatile b:Lcom/ad/adapter/a;


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

.method public static a()Lcom/ad/adapter/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/ad/adapter/a;->b:Lcom/ad/adapter/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ad/adapter/a;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ad/adapter/a;->b:Lcom/ad/adapter/a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ad/adapter/a;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/ad/adapter/a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ad/adapter/a;->b:Lcom/ad/adapter/a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/ad/adapter/a;->b:Lcom/ad/adapter/a;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Ad"

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1.0.2"

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized d(Landroid/content/Context;Ljava/util/Map;Lcom/ad/adapter/a$b;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "app_id"

    .line 3
    .line 4
    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAd;->setAdult(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAd;->setPersonalizedAdvertisingOn(Z)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAd;->setDebugEnable(Z)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/ad/adapter/a$a;

    .line 28
    .line 29
    invoke-direct {v1, p0, p3}, Lcom/ad/adapter/a$a;-><init>(Lcom/ad/adapter/a;Lcom/ad/adapter/a$b;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, v1}, Lcom/windmill/sdk/WindMillAd;->startWithAppId(Landroid/content/Context;Ljava/lang/String;Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :catchall_0
    monitor-exit p0

    .line 36
    return-void
.end method
