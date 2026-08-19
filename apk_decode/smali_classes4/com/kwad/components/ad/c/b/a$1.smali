.class final Lcom/kwad/components/ad/c/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/video/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cN:Lcom/kwad/components/ad/c/b/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/b/a$1;->cN:Lcom/kwad/components/ad/c/b/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final as()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/b/a$1;->cN:Lcom/kwad/components/ad/c/b/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/c/b/a;->c(Lcom/kwad/components/ad/c/b/a;)Lcom/kwad/sdk/core/video/videoview/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/ad/c/b/a$1;->cN:Lcom/kwad/components/ad/c/b/a;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/kwad/components/ad/c/b/a;->b(Lcom/kwad/components/ad/c/b/a;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v2}, Lcom/kwad/components/ad/c/b/a;->a(Lcom/kwad/components/ad/c/b/a;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/a;->setVideoSoundEnable(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final at()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/b/a$1;->cN:Lcom/kwad/components/ad/c/b/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/c/b/a;->d(Lcom/kwad/components/ad/c/b/a;)Lcom/kwad/sdk/mvp/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/components/ad/c/c;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/core/adlog/c;->cu(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/b/a$1;->cN:Lcom/kwad/components/ad/c/b/a;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/kwad/components/ad/c/b/a;->a(Lcom/kwad/components/ad/c/b/a;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onVideoPlayError(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/b/a$1;->cN:Lcom/kwad/components/ad/c/b/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/c/b/a;->cJ:Lcom/kwad/components/ad/c/b/a$a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ","

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lcom/kwad/components/ad/c/b/a$a;->o(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onVideoPlayStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/b/a$1;->cN:Lcom/kwad/components/ad/c/b/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/c/b/a;->a(Lcom/kwad/components/ad/c/b/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/adlog/c;->ct(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
