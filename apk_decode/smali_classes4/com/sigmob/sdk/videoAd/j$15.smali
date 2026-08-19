.class Lcom/sigmob/sdk/videoAd/j$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/j;->f(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->w(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "skip"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->v(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->D(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v4}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->e(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/d;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->f(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/m;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->f(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/m;->getFourElementsLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->f(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/m;->getFourElementsLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->v(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->E(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->F(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v2}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;I)V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->i()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->G(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/j;->d(Lcom/sigmob/sdk/videoAd/j;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->H(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    const-string v1, "show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->d()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->e(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/d;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->f(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->f(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/m;->getFourElementsLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$15;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->f(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/m;->getFourElementsLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method
