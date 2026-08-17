.class final Lcom/kwad/components/core/offline/b/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/offline/b/c/a;->registerOnInfoListener(Lcom/kwad/components/offline/api/core/video/IMediaPlayer$OnInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic acD:Lcom/kwad/components/core/offline/b/c/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/offline/b/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/offline/b/c/a$2;->acD:Lcom/kwad/components/core/offline/b/c/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final m(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/offline/b/c/a$2;->acD:Lcom/kwad/components/core/offline/b/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/offline/b/c/a;->c(Lcom/kwad/components/core/offline/b/c/a;)Lcom/kwad/components/offline/api/core/video/IMediaPlayer$OnInfoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/offline/b/c/a$2;->acD:Lcom/kwad/components/core/offline/b/c/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/core/offline/b/c/a;->c(Lcom/kwad/components/core/offline/b/c/a;)Lcom/kwad/components/offline/api/core/video/IMediaPlayer$OnInfoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/core/offline/b/c/a$2;->acD:Lcom/kwad/components/core/offline/b/c/a;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/kwad/components/core/offline/b/c/a;->getMediaPlayer()Lcom/kwad/components/offline/api/core/video/IMediaPlayer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1, p1, p2}, Lcom/kwad/components/offline/api/core/video/IMediaPlayer$OnInfoListener;->onInfo(Lcom/kwad/components/offline/api/core/video/IMediaPlayer;II)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method
