.class public Lcom/kwad/sdk/core/request/model/d;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public aXo:Ljava/lang/String;

.field public aXp:Ljava/lang/String;

.field public aXq:I

.field public operatorType:I


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

.method public static Nt()Lcom/kwad/sdk/core/request/model/d;
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/request/model/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/d;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/utils/bf;->dQ(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/d;->aXo:Ljava/lang/String;

    .line 15
    .line 16
    const-class v2, Lcom/kwad/sdk/service/a/f;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/kwad/sdk/service/a/f;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/kwad/sdk/service/a/f;->Fy()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/d;->aXp:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/kwad/sdk/utils/aq;->dB(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v0, Lcom/kwad/sdk/core/request/model/d;->aXq:I

    .line 35
    .line 36
    invoke-static {v1}, Lcom/kwad/sdk/utils/bf;->dT(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {}, Lcom/kwad/sdk/utils/be;->useNetworkStateDisable()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/utils/aq;->e(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, v0, Lcom/kwad/sdk/core/request/model/d;->operatorType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    return-object v0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public static Nu()Lcom/kwad/sdk/core/request/model/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/request/model/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/utils/aq;->dB(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, v0, Lcom/kwad/sdk/core/request/model/d;->aXq:I

    .line 15
    .line 16
    return-object v0
.end method
