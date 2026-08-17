.class Lcom/ubix/ssp/ad/e/b0/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/b0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ubix/ssp/ad/e/b0/e;

.field final synthetic b:Lcom/ubix/ssp/ad/e/b0/e;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/e;Lcom/ubix/ssp/ad/e/b0/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->a:Lcom/ubix/ssp/ad/e/b0/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    const/4 v1, 0x3

    iput v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->r:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e$a;->f()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play current url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/b0/e$a;->b(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/e;->setState(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    const/16 v1, -0x26

    if-eq p2, v1, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p2, v0, :cond_0

    const/16 p1, -0x13

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e$a;->d()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 4
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;J)J

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAutoCompletion  ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e;->g()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e$a;->c()V

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/f;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/e;->b(Lcom/ubix/ssp/ad/e/b0/e;)Lcom/ubix/ssp/ad/e/b0/e$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/f;->a(Landroid/content/Context;Ljava/lang/Object;J)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->F:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/b0/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo what - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget v1, v1, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-boolean p2, p2, Lcom/ubix/ssp/ad/e/b0/e;->e:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/16 v0, 0x2382

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-boolean v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->a:Lcom/ubix/ssp/ad/e/b0/e;

    iput-boolean v2, v0, Lcom/ubix/ssp/ad/e/b0/e;->e:Z

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcom/ubix/ssp/ad/g/k/j;->h(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcom/ubix/ssp/ad/g/k/j;->j(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/e/b0/e$a;->b(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/e;->a(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatePlaying  ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]   isRealPlaying "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget v2, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/b0/f;->a(Landroid/content/Context;Ljava/lang/Object;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {v0, v5, v6}, Lcom/ubix/ssp/ad/e/b0/b;->a(J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    invoke-virtual {v2, v0}, Lcom/ubix/ssp/ad/e/b0/b;->a(Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    const/4 v2, 0x4

    iput v2, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    :cond_3
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e;->o()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->a:Lcom/ubix/ssp/ad/e/b0/e;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->e:Z

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-boolean v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/e;->b(Lcom/ubix/ssp/ad/e/b0/e;)Lcom/ubix/ssp/ad/e/b0/e$b;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Lcom/ubix/ssp/ad/e/b0/b;->a(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateAutoComplete  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    const/4 v1, 0x6

    iput v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->g()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/j;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/ubix/ssp/ad/e/b0/e;->F:Z

    iput-boolean v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->r:Z

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 2
    mul-int v0, p1, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->o:Lcom/ubix/ssp/ad/e/b0/k/a;

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->l:I

    if-eqz v0, :cond_1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/b0/k/a;->setRotation(F)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->o:Lcom/ubix/ssp/ad/e/b0/k/a;

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/e/b0/k/a;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->p:Lcom/ubix/ssp/ad/e/b0/j/a;

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->l:I

    if-eqz v0, :cond_3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/b0/j/a;->setRotation(F)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->p:Lcom/ubix/ssp/ad/e/b0/j/a;

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/e/b0/j/a;->a(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateError  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    const/4 v1, 0x7

    iput v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->g()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/ubix/ssp/ad/g/k/j;->a(II)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePause ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-boolean v2, v2, Lcom/ubix/ssp/ad/e/b0/e;->F:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " seekto"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-boolean v2, v0, Lcom/ubix/ssp/ad/e/b0/e;->F:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ubix/ssp/ad/e/b0/b;->a(J)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/b0/e;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v2, v3}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;J)J

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v4

    :goto_1
    invoke-static {v0, v4, v5}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatePause resumePosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    const/4 v1, 0x5

    iput v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/j;->g(I)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e;->b(Lcom/ubix/ssp/ad/e/b0/e;)Lcom/ubix/ssp/ad/e/b0/e$b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e;->b(Lcom/ubix/ssp/ad/e/b0/e;)Lcom/ubix/ssp/ad/e/b0/e$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/ubix/ssp/ad/e/b0/b;->a(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public f()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePlaying  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/e;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {v2, v0, v1}, Lcom/ubix/ssp/ad/e/b0/b;->a(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/b0/b;->a(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$a;->b:Lcom/ubix/ssp/ad/e/b0/e;

    const/4 v1, 0x4

    iput v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    return-void
.end method
