.class Lcom/ubix/ssp/ad/e/z/g$c;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/z/g;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/z/g;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$c;->a:Lcom/ubix/ssp/ad/e/z/g;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$c;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$c;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$c;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$c;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$c;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$c;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_3
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, -0x777778

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    return-void
.end method
