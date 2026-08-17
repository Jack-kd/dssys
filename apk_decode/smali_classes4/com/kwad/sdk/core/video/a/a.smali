.class public abstract Lcom/kwad/sdk/core/video/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c;


# instance fields
.field private aZg:Lcom/kwad/sdk/core/video/a/c$f;

.field private aZh:Lcom/kwad/sdk/core/video/a/c$g;

.field private aZi:Lcom/kwad/sdk/core/video/a/c$h;

.field private amN:Lcom/kwad/sdk/core/video/a/c$e;

.field private amO:Lcom/kwad/sdk/core/video/a/c$i;

.field private amP:Lcom/kwad/sdk/core/video/a/c$b;

.field private amQ:Lcom/kwad/sdk/core/video/a/c$c;

.field private amR:Lcom/kwad/sdk/core/video/a/c$d;

.field private amS:Lcom/kwad/sdk/core/video/a/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static o(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float p0, p0, v0

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "autoMute"

    .line 7
    .line 8
    invoke-static {p0}, Lcom/kwad/sdk/core/video/a/a/a;->fs(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p0, "autoVoice"

    .line 13
    .line 14
    invoke-static {p0}, Lcom/kwad/sdk/core/video/a/a/a;->fs(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final D(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amO:Lcom/kwad/sdk/core/video/a/c$i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/video/a/c$i;->n(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final OF()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->aZg:Lcom/kwad/sdk/core/video/a/c$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c$f;->xt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/video/a/c$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->amS:Lcom/kwad/sdk/core/video/a/c$a;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/video/a/c$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->amP:Lcom/kwad/sdk/core/video/a/c$b;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/video/a/c$c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->amQ:Lcom/kwad/sdk/core/video/a/c$c;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/video/a/c$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->aZg:Lcom/kwad/sdk/core/video/a/c$f;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/video/a/c$g;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->aZh:Lcom/kwad/sdk/core/video/a/c$g;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/video/a/c$h;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->aZi:Lcom/kwad/sdk/core/video/a/c$h;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/video/a/c$i;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->amO:Lcom/kwad/sdk/core/video/a/c$i;

    return-void
.end method

.method public final b(Landroid/media/TimedText;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->aZi:Lcom/kwad/sdk/core/video/a/c$h;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/video/a/c$h;->a(Landroid/media/TimedText;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/kwad/sdk/core/video/a/c$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->amN:Lcom/kwad/sdk/core/video/a/c$e;

    return-void
.end method

.method public final c(Lcom/kwad/sdk/core/video/a/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->amR:Lcom/kwad/sdk/core/video/a/c$d;

    .line 2
    .line 3
    return-void
.end method

.method public final notifyOnBufferingUpdate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amS:Lcom/kwad/sdk/core/video/a/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/video/a/c$a;->br(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final notifyOnCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amP:Lcom/kwad/sdk/core/video/a/c$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c$b;->tK()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final notifyOnError(II)Z
    .locals 1

    .line 1
    const-string v0, "videoPlayError"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/video/a/a/a;->fs(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amQ:Lcom/kwad/sdk/core/video/a/c$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/video/a/c$c;->o(II)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public final notifyOnInfo(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amR:Lcom/kwad/sdk/core/video/a/c$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/video/a/c$d;->m(II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final notifyOnPrepared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amN:Lcom/kwad/sdk/core/video/a/c$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/video/a/c$e;->a(Lcom/kwad/sdk/core/video/a/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final notifyOnSeekComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->aZh:Lcom/kwad/sdk/core/video/a/c$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c$g;->tL()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final resetListeners()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->aZg:Lcom/kwad/sdk/core/video/a/c$f;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amN:Lcom/kwad/sdk/core/video/a/c$e;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amS:Lcom/kwad/sdk/core/video/a/c$a;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amP:Lcom/kwad/sdk/core/video/a/c$b;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->aZh:Lcom/kwad/sdk/core/video/a/c$g;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amO:Lcom/kwad/sdk/core/video/a/c$i;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amQ:Lcom/kwad/sdk/core/video/a/c$c;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->amR:Lcom/kwad/sdk/core/video/a/c$d;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->aZi:Lcom/kwad/sdk/core/video/a/c$h;

    .line 19
    .line 20
    return-void
.end method
