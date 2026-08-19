.class Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->access$100(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)F

    move-result v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    invoke-static {v2}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->access$000(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->access$000(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)F

    move-result p1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->access$002(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;F)F

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
