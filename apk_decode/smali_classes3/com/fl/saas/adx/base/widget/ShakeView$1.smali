.class Lcom/fl/saas/adx/base/widget/ShakeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/ShakeView;->createAnimatorSet(Landroid/view/View;JF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/ShakeView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/ShakeView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView$1;->this$0:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView$1;->this$0:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/ShakeView;->access$000(Lcom/fl/saas/adx/base/widget/ShakeView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/ShakeView$1;->this$0:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/ShakeView;->access$000(Lcom/fl/saas/adx/base/widget/ShakeView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/ShakeView$1;->this$0:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/ShakeView;->access$100(Lcom/fl/saas/adx/base/widget/ShakeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
