.class Lcom/fl/saas/adx/base/widget/CountDownTextView$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/CountDownTextView;->lodTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/CountDownTextView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->access$100(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->access$100(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->access$006(Lcom/fl/saas/adx/base/widget/CountDownTextView;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->access$100(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->access$100(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->access$200(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->access$300(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Landroidx/arch/core/util/Function;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->access$300(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Landroidx/arch/core/util/Function;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;->this$0:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
