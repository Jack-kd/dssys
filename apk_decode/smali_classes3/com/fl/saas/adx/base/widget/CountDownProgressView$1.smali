.class Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/CountDownProgressView;->lodTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/CountDownProgressView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$100(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$006(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$100(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)V

    goto :goto_1

    :cond_0
    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$200(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Landroidx/arch/core/util/Function;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$300(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$200(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Landroidx/arch/core/util/Function;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v1}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$300(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$400(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Lcom/fl/saas/adx/base/widget/RoundProgressView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$400(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Lcom/fl/saas/adx/base/widget/RoundProgressView;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-static {v1}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->access$500(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    sub-long/2addr v1, p1

    long-to-float p1, v1

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/widget/RoundProgressView;->setProgress(F)V

    :cond_3
    return-void
.end method
