.class final Lcom/kwad/components/ad/nativead/b/k$1;
.super Lcom/kwad/components/core/video/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/b/k;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic qB:Lcom/kwad/components/ad/nativead/b/k;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/b/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/b/k$1;->qB:Lcom/kwad/components/ad/nativead/b/k;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/video/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaPlayCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b/k$1;->qB:Lcom/kwad/components/ad/nativead/b/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/b/k;->a(Lcom/kwad/components/ad/nativead/b/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMediaPlayError(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/b/k$1;->qB:Lcom/kwad/components/ad/nativead/b/k;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/ad/nativead/b/k;->a(Lcom/kwad/components/ad/nativead/b/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMediaPlayProgress(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x42c80000    # 100.0f

    .line 8
    .line 9
    long-to-float p3, p3

    .line 10
    mul-float/2addr p3, v0

    .line 11
    long-to-float p1, p1

    .line 12
    div-float/2addr p3, p1

    .line 13
    float-to-int p1, p3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/kwad/components/ad/nativead/b/k$1;->qB:Lcom/kwad/components/ad/nativead/b/k;

    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/kwad/components/ad/nativead/b/k;->a(Lcom/kwad/components/ad/nativead/b/k;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
