.class final Lcom/kwad/components/ad/interstitial/h/c$1;
.super Lcom/kwad/components/core/webview/tachikoma/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/interstitial/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic oD:Lcom/kwad/components/ad/interstitial/h/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/interstitial/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c$1;->oD:Lcom/kwad/components/ad/interstitial/h/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/f/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c$1;->oD:Lcom/kwad/components/ad/interstitial/h/c;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    iput-boolean p3, p2, Lcom/kwad/components/ad/interstitial/f/c;->na:Z

    .line 7
    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/kwad/components/ad/interstitial/h/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 9
    .line 10
    iget-wide p3, p1, Lcom/kwad/components/ad/interstitial/d;->mStartRenderTime:J

    .line 11
    .line 12
    const-wide/16 p5, 0x0

    .line 13
    .line 14
    cmp-long p1, p3, p5

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    iget-object p4, p0, Lcom/kwad/components/ad/interstitial/h/c$1;->oD:Lcom/kwad/components/ad/interstitial/h/c;

    .line 29
    .line 30
    iget-object p4, p4, Lcom/kwad/components/ad/interstitial/h/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 31
    .line 32
    iget-wide p4, p4, Lcom/kwad/components/ad/interstitial/d;->mStartRenderTime:J

    .line 33
    .line 34
    sub-long/2addr p2, p4

    .line 35
    const/4 p4, 0x2

    .line 36
    invoke-static {p1, p4, p2, p3}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void

    .line 43
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "tk_interstitial"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c$1;->oD:Lcom/kwad/components/ad/interstitial/h/c;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/kwad/components/ad/interstitial/h/c;->a(Lcom/kwad/components/ad/interstitial/h/c;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c$1;->oD:Lcom/kwad/components/ad/interstitial/h/c;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/kwad/sdk/mvp/Presenter;->oe()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c$1;->oD:Lcom/kwad/components/ad/interstitial/h/c;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/kwad/components/ad/interstitial/h/c;->fg()Lcom/kwad/components/ad/interstitial/f/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p1, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c$1;->oD:Lcom/kwad/components/ad/interstitial/h/c;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/kwad/components/ad/interstitial/h/c;->oC:Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/mvp/Presenter;->N(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c$1;->oD:Lcom/kwad/components/ad/interstitial/h/c;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/mvp/Presenter;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method
