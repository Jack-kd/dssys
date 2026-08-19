.class Lcom/sigmob/sdk/nativead/z$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/z;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/z;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/z;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    invoke-static {}, Lcom/sigmob/sdk/nativead/z;->q()Lcom/sigmob/sdk/nativead/r;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-static {}, Lcom/sigmob/sdk/nativead/z;->q()Lcom/sigmob/sdk/nativead/r;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/nativead/j;->b:Lcom/sigmob/sdk/nativead/j;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/nativead/r;->setUIStyle(Lcom/sigmob/sdk/nativead/j;)V

    invoke-static {}, Lcom/sigmob/sdk/nativead/z;->q()Lcom/sigmob/sdk/nativead/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/r;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    new-instance v2, Lcom/sigmob/sdk/nativead/ae;

    invoke-direct {v2}, Lcom/sigmob/sdk/nativead/ae;-><init>()V

    invoke-static {v0, v2}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;Lcom/sigmob/sdk/nativead/ae;)Lcom/sigmob/sdk/nativead/ae;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/z;->b(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object v2

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/nativead/ae;->a(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/z;->b(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/nativead/ae;->b(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->b(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/nativead/ae;->c(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->b(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/nativead/ae;->d(I)V

    new-instance v3, Lcom/sigmob/sdk/nativead/af;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->c(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object v5

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->b(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-direct/range {v3 .. v8}, Lcom/sigmob/sdk/nativead/af;-><init>(Landroid/view/ViewGroup;Lcom/sigmob/sdk/nativead/ae;Lcom/sigmob/sdk/nativead/ae;J)V

    invoke-virtual {v3}, Lcom/sigmob/sdk/nativead/af;->a()V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->c(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/z;->c(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/nativead/ae;->b()I

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/nativead/ae;->b(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->d(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z$1;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->d(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method
