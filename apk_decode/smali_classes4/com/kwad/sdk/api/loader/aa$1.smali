.class final Lcom/kwad/sdk/api/loader/aa$1;
.super Lcom/kwad/sdk/api/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/aa;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/IKsAdSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aIN:Lcom/kwad/sdk/api/core/IKsAdSDK;

.field final synthetic dK:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/api/core/IKsAdSDK;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/aa$1;->dK:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/api/loader/aa$1;->aIN:Lcom/kwad/sdk/api/core/IKsAdSDK;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/api/a/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/aa$1;->dK:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "lastUpdateTime"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/api/loader/b;->r(Landroid/content/Context;Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/kwad/sdk/api/loader/aa$1;->dK:Landroid/content/Context;

    .line 10
    .line 11
    const-string v3, "interval"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lcom/kwad/sdk/api/loader/b;->r(Landroid/content/Context;Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sub-long/2addr v4, v0

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v4, 0x3e8

    .line 27
    .line 28
    mul-long/2addr v2, v4

    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-gez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/api/loader/s;->HK()Lcom/kwad/sdk/api/loader/s$f;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/kwad/sdk/api/loader/aa$1$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/kwad/sdk/api/loader/aa$1$1;-><init>(Lcom/kwad/sdk/api/loader/aa$1;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/kwad/sdk/api/loader/aa$1$2;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/kwad/sdk/api/loader/aa$1$2;-><init>(Lcom/kwad/sdk/api/loader/aa$1;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/loader/s$f;->a(Lcom/kwad/sdk/api/loader/ab;Lcom/kwad/sdk/api/loader/s$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :catchall_0
    :goto_0
    return-void
.end method
