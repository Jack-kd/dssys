.class Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->createBallPulseAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

.field final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$2;->this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$2;->this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->access$200(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)[F

    move-result-object v0

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$2;->this$0:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
