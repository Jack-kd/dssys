.class final Lcom/kwad/sdk/o$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/request/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/o;->g(Lcom/kwad/sdk/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGI:Lcom/kwad/sdk/o;

.field final synthetic aGK:Lcom/kwad/sdk/g/a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/o;Lcom/kwad/sdk/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/o$7;->aGI:Lcom/kwad/sdk/o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/o$7;->aGK:Lcom/kwad/sdk/g/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lcom/kwad/sdk/core/response/model/SdkConfigData;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/core/response/model/SdkConfigData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "KSAdSDK"

    .line 2
    .line 3
    const-string v1, "onConfigRefresh()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/o$7;->aGI:Lcom/kwad/sdk/o;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/kwad/sdk/o;->a(Lcom/kwad/sdk/o;Lcom/kwad/sdk/core/response/model/SdkConfigData;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/kwad/sdk/o$7;->aGK:Lcom/kwad/sdk/g/a;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Lcom/kwad/sdk/g/a;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void

    .line 25
    :goto_0
    invoke-static {p1}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final vZ()V
    .locals 2

    .line 1
    const-string v0, "KSAdSDK"

    .line 2
    .line 3
    const-string v1, "onCacheLoaded()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/sdk/o$7;->aGI:Lcom/kwad/sdk/o;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/o;->a(Lcom/kwad/sdk/o;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final wa()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/o$7;->aGK:Lcom/kwad/sdk/g/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/kwad/sdk/g/a;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
