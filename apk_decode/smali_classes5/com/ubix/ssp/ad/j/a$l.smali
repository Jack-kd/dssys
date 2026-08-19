.class public Lcom/ubix/ssp/ad/j/a$l;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/ad/j/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const v1, 0x493e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/j/a;->h(Lcom/ubix/ssp/ad/j/a;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8df3\u8fc7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/j/a$l;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a$l;->c()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/k/a;->setMute(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const v1, 0x493ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const-string p1, "ubix/ic_volume_off.webp"

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "ubix/ic_volume_on.webp"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->B(Lcom/ubix/ssp/ad/j/a;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->i(Lcom/ubix/ssp/ad/j/a;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    :goto_0
    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->c()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const v1, 0x493e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/ubix/ssp/ad/e/g;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/g;->c()V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/a;->u()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/j/a;->a(Lcom/ubix/ssp/ad/j/a;I)I

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->m(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->n(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->i(Lcom/ubix/ssp/ad/j/a;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    :goto_0
    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->d()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const v1, 0x493e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/ubix/ssp/ad/e/g;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/g;->d()V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->a(Lcom/ubix/ssp/ad/j/a;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/a;->v()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/j/a;->a(Lcom/ubix/ssp/ad/j/a;I)I

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->l()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->o(Lcom/ubix/ssp/ad/j/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/ubix/ssp/ad/d/b;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->p(Lcom/ubix/ssp/ad/j/a;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const v1, 0xde315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/j/a;->setShakeSensor(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, "handleAdClose"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/j/a;->a(Lcom/ubix/ssp/ad/j/a;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->v(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->x(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->y(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->z(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/j/a;->A(Lcom/ubix/ssp/ad/j/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/b;->e(I)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/a;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "handleAdSkip"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/j/a;->a(Lcom/ubix/ssp/ad/j/a;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->q(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->r(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->s(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->t(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->a()V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/j/a;->u(Lcom/ubix/ssp/ad/j/a;)I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/j/a;->e(Lcom/ubix/ssp/ad/j/a;)I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/g/k/i;->a(IJ)Z

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/a;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/j/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz p1, :cond_0

    invoke-direct {p0, v3}, Lcom/ubix/ssp/ad/j/a$l;->a(Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/j/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz p1, :cond_0

    invoke-direct {p0, v4}, Lcom/ubix/ssp/ad/j/a$l;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_2
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/j/a$l;->a()V

    return-void

    :pswitch_3
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/j/a$l;->b()V

    return-void

    :pswitch_4
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "msg already exist"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a$l;->e()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {p1, v4}, Lcom/ubix/ssp/ad/j/a;->k(I)V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a$l;->d()V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->i(Lcom/ubix/ssp/ad/j/a;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$l;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/j/a$l;->a(I)V

    return-void

    :pswitch_7
    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a$l;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
