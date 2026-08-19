.class final Lcom/kwad/components/ad/interstitial/f/d$3$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/interstitial/f/d$3;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic nC:Lcom/kwad/components/ad/interstitial/f/d$3;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/interstitial/f/d$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/f/d$3$1;->nC:Lcom/kwad/components/ad/interstitial/f/d$3;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/d$3$1;->nC:Lcom/kwad/components/ad/interstitial/f/d$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/d$3;->nz:Lcom/kwad/components/ad/interstitial/f/d;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/ad/interstitial/f/d;->b(Lcom/kwad/components/ad/interstitial/f/d;)Lcom/kwad/sdk/core/video/videoview/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/d$3$1;->nC:Lcom/kwad/components/ad/interstitial/f/d$3;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/d$3;->nz:Lcom/kwad/components/ad/interstitial/f/d;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/components/ad/interstitial/f/d;->b(Lcom/kwad/components/ad/interstitial/f/d;)Lcom/kwad/sdk/core/video/videoview/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
