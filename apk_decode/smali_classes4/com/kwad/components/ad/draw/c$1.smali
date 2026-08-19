.class final Lcom/kwad/components/ad/draw/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/draw/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/draw/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dJ:Landroid/view/ViewGroup;

.field final synthetic dK:Landroid/content/Context;

.field final synthetic dL:Lcom/kwad/components/ad/draw/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/draw/c;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/c$1;->dL:Lcom/kwad/components/ad/draw/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/draw/c$1;->dJ:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/draw/c$1;->dK:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final aN()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/c$1;->dL:Lcom/kwad/components/ad/draw/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/draw/c;->a(Lcom/kwad/components/ad/draw/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p0, Lcom/kwad/components/ad/draw/c$1;->dL:Lcom/kwad/components/ad/draw/c;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/kwad/components/ad/draw/c;->b(Lcom/kwad/components/ad/draw/c;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    sub-long/2addr v1, v3

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/c$1;->dL:Lcom/kwad/components/ad/draw/c;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/kwad/components/ad/draw/c;->a(Lcom/kwad/components/ad/draw/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-object v0, p0, Lcom/kwad/components/ad/draw/c$1;->dL:Lcom/kwad/components/ad/draw/c;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/kwad/components/ad/draw/c;->b(Lcom/kwad/components/ad/draw/c;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    sub-long/2addr v2, v4

    .line 48
    const/4 v5, 0x2

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v4, 0x2

    .line 51
    invoke-static/range {v1 .. v6}, Lcom/kwad/components/ad/draw/a/d;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;JIIZ)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final aO()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/c$1;->dJ:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/ad/draw/c$1;->dL:Lcom/kwad/components/ad/draw/c;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/draw/c$1;->dK:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/kwad/components/ad/draw/c$1;->dJ:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/kwad/components/ad/draw/c;->a(Lcom/kwad/components/ad/draw/c;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/draw/c$1;->dL:Lcom/kwad/components/ad/draw/c;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/kwad/components/ad/draw/c;->a(Lcom/kwad/components/ad/draw/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/draw/c$1;->dL:Lcom/kwad/components/ad/draw/c;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/components/ad/draw/c;->b(Lcom/kwad/components/ad/draw/c;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sub-long/2addr v2, v4

    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-static/range {v1 .. v6}, Lcom/kwad/components/ad/draw/a/d;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;JIIZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
