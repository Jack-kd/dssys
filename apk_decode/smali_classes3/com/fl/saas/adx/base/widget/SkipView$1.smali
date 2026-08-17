.class Lcom/fl/saas/adx/base/widget/SkipView$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/SkipView;->lodTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/SkipView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/SkipView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->access$100(Lcom/fl/saas/adx/base/widget/SkipView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->access$100(Lcom/fl/saas/adx/base/widget/SkipView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->access$006(Lcom/fl/saas/adx/base/widget/SkipView;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/SkipView;->access$100(Lcom/fl/saas/adx/base/widget/SkipView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/SkipView;->access$100(Lcom/fl/saas/adx/base/widget/SkipView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/SkipView;->access$200(Lcom/fl/saas/adx/base/widget/SkipView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->access$300(Lcom/fl/saas/adx/base/widget/SkipView;)Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->access$400(Lcom/fl/saas/adx/base/widget/SkipView;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-double p1, v0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->access$400(Lcom/fl/saas/adx/base/widget/SkipView;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    div-double/2addr p1, v0

    double-to-int p1, p1

    iget-object p2, p0, Lcom/fl/saas/adx/base/widget/SkipView$1;->this$0:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/widget/SkipView;->access$300(Lcom/fl/saas/adx/base/widget/SkipView;)Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->setProgress(F)V

    :cond_1
    return-void
.end method
