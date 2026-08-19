.class Lcom/fl/saas/adx/base/inner/ClickSpannable$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/ClickSpannable;->setTextClick(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/fl/saas/adx/base/inner/ClickSpannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/ClickSpannable;

.field final synthetic val$clickable:Ljava/lang/Runnable;

.field final synthetic val$underline:Z


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/ClickSpannable;Ljava/lang/Runnable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable$1;->this$0:Lcom/fl/saas/adx/base/inner/ClickSpannable;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable$1;->val$clickable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable$1;->val$underline:Z

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable$1;->val$clickable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable$1;->val$underline:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable$1;->this$0:Lcom/fl/saas/adx/base/inner/ClickSpannable;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->access$000(Lcom/fl/saas/adx/base/inner/ClickSpannable;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
