.class Lcom/ubix/ssp/ad/d/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/d/f;->b(Ljava/lang/String;Lcom/ubix/ssp/ad/g/k/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/ubix/ssp/ad/g/k/g;

.field final synthetic e:Lcom/ubix/ssp/ad/d/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/d/f;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/ubix/ssp/ad/g/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/d/f$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/ubix/ssp/ad/d/f$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/ubix/ssp/ad/d/f$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/ubix/ssp/ad/d/f$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    const-string v0, "\u7f13\u51b2\u8d85\u65f6"

    invoke-static {p2, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/g/k/g;->a(ILcom/ubix/ssp/open/AdError;)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;->onVideoError(Lcom/ubix/ssp/open/AdError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(IJJ)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoProgressUpdate videoView.playable()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v1}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/d;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0, p4, p5}, Lcom/ubix/ssp/ad/d/f;->b(Lcom/ubix/ssp/ad/d/f;J)J

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0, p2, p3}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;J)J

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->g(Lcom/ubix/ssp/ad/d/f;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v1, :cond_2

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/g/k/g;->a(IJJ)V

    goto :goto_0

    :cond_2
    move-wide v3, p2

    move-wide v5, p4

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    invoke-interface {p1, v3, v4, v5, v6}, Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;->onVideoProgressUpdate(JJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 0

    .line 5
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 2
    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-virtual {p2, p1, v0, p3}, Lcom/ubix/ssp/ad/g/k/g;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    const v2, 0x1ed2a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->c(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/t/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->c(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/t/a/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    const v2, 0x30d53

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/d/f;->c(Lcom/ubix/ssp/ad/d/f;Z)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->c(I)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;->onVideoComplete()V

    :cond_4
    return-void
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPlayPause videoView.playable()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v1}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/d;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v1}, Lcom/ubix/ssp/ad/d/f;->g(Lcom/ubix/ssp/ad/d/f;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->g(Lcom/ubix/ssp/ad/d/f;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->g(I)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;->onVideoPause()V

    :cond_4
    :goto_0
    return-void
.end method

.method public h(I)V
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPlayStarted videoView.playable()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v1}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/d;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    iget-wide v1, v1, Lcom/ubix/ssp/ad/d/f;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    iget-wide v1, v0, Lcom/ubix/ssp/ad/d/f;->w:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->b(Lcom/ubix/ssp/ad/d/f;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->b(Lcom/ubix/ssp/ad/d/f;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->c(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/t/a/e;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->c(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/t/a/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    const v1, 0x1ed2a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v2}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v3}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_5
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v2}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_6

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v2}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->d(Lcom/ubix/ssp/ad/d/f;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->d(Lcom/ubix/ssp/ad/d/f;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->e(Lcom/ubix/ssp/ad/d/f;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;Z)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->f(Lcom/ubix/ssp/ad/d/f;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/d/f;->setVideoMute(Z)V

    :cond_8
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/d/f;->b(Lcom/ubix/ssp/ad/d/f;Z)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->h(I)V

    :cond_9
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;->onVideoStart()V

    :cond_a
    :goto_2
    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPlayResume videoView.playable()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v1}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/d;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";hasPlay.get()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->g(Lcom/ubix/ssp/ad/d/f;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/d/f;->a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->j(I)V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    iget-wide v2, v0, Lcom/ubix/ssp/ad/d/f;->w:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->j(I)V

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_7

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;->onVideoResume()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f$a;->d:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->h(I)V

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f$a;->e:Lcom/ubix/ssp/ad/d/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/d/f;->h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;->onVideoStart()V

    :cond_7
    :goto_1
    return-void
.end method
