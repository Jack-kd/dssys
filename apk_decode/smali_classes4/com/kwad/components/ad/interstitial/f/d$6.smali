.class final Lcom/kwad/components/ad/interstitial/f/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/video/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/interstitial/f/d;->el()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic nD:I

.field final synthetic nE:Lcom/kwad/components/ad/interstitial/h/d;

.field final synthetic nz:Lcom/kwad/components/ad/interstitial/f/d;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/interstitial/f/d;ILcom/kwad/components/ad/interstitial/h/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nz:Lcom/kwad/components/ad/interstitial/f/d;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nD:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nE:Lcom/kwad/components/ad/interstitial/h/d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final as()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nE:Lcom/kwad/components/ad/interstitial/h/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1}, Lcom/kwad/components/ad/interstitial/h/d;->d(ZZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final at()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nz:Lcom/kwad/components/ad/interstitial/f/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/interstitial/f/d;->b(Lcom/kwad/components/ad/interstitial/f/d;)Lcom/kwad/sdk/core/video/videoview/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nz:Lcom/kwad/components/ad/interstitial/f/d;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/kwad/components/ad/interstitial/f/d;->a(Lcom/kwad/components/ad/interstitial/f/d;)Lcom/kwad/components/ad/interstitial/f/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nz:Lcom/kwad/components/ad/interstitial/f/d;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/kwad/components/ad/interstitial/f/d;->e(Lcom/kwad/components/ad/interstitial/f/d;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c;->M(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nE:Lcom/kwad/components/ad/interstitial/h/d;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/h/d;->fo()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nD:I

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    div-long/2addr p1, v1

    .line 6
    long-to-int p1, p1

    .line 7
    sub-int/2addr v0, p1

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nE:Lcom/kwad/components/ad/interstitial/h/d;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/interstitial/h/d;->C(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nE:Lcom/kwad/components/ad/interstitial/h/d;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/kwad/components/ad/interstitial/h/d;->fm()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onVideoPlayStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/d$6;->nE:Lcom/kwad/components/ad/interstitial/h/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/h/d;->u(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
