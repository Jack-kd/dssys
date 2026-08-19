.class Lcom/sigmob/sdk/videoAd/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/j;->h(Landroid/content/Context;I)V
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

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->J(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->K(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/z;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->K(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/z;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->L(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->K(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/z;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/videoAd/j;->e(Lcom/sigmob/sdk/videoAd/j;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/videoAd/j;->f(Lcom/sigmob/sdk/videoAd/j;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->v(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->M(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$3;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->N(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->a()V

    :cond_1
    :goto_0
    return p2
.end method
