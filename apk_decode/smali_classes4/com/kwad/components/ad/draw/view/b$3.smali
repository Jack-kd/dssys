.class final Lcom/kwad/components/ad/draw/view/b$3;
.super Lcom/kwad/components/core/video/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/draw/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic gj:Lcom/kwad/components/ad/draw/view/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/draw/view/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/video/m;->onMediaPlayCompleted()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->h(Lcom/kwad/components/ad/draw/view/b;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/view/b;->b(Lcom/kwad/components/ad/draw/view/b;Z)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->g(Lcom/kwad/components/ad/draw/view/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/kwad/components/ad/draw/a/c;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onMediaPlayError(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/components/core/video/m;->onMediaPlayError(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->g(Lcom/kwad/components/ad/draw/view/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-object v3, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 15
    .line 16
    invoke-static {v3}, Lcom/kwad/components/ad/draw/view/b;->j(Lcom/kwad/components/ad/draw/view/b;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    sub-long/2addr v1, v3

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, "what : "

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " extra : "

    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, v1, v2, p1}, Lcom/kwad/components/ad/draw/a/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onMediaPlayPaused()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/video/m;->onMediaPlayPaused()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->e(Lcom/kwad/components/ad/draw/view/b;)Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->f(Lcom/kwad/components/ad/draw/view/b;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/view/b;->a(Lcom/kwad/components/ad/draw/view/b;Z)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->g(Lcom/kwad/components/ad/draw/view/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/kwad/components/ad/draw/a/c;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onMediaPlayStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/video/m;->onMediaPlayStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->e(Lcom/kwad/components/ad/draw/view/b;)Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->g(Lcom/kwad/components/ad/draw/view/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-object v3, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/kwad/components/ad/draw/view/b;->j(Lcom/kwad/components/ad/draw/view/b;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    sub-long/2addr v1, v3

    .line 32
    invoke-static {v0, v1, v2}, Lcom/kwad/components/ad/draw/a/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onMediaPlaying()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/video/m;->onMediaPlaying()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->e(Lcom/kwad/components/ad/draw/view/b;)Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->i(Lcom/kwad/components/ad/draw/view/b;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/view/b;->c(Lcom/kwad/components/ad/draw/view/b;Z)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b$3;->gj:Lcom/kwad/components/ad/draw/view/b;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/b;->g(Lcom/kwad/components/ad/draw/view/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/kwad/components/ad/draw/a/c;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
