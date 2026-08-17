.class Lcom/ubix/ssp/ad/e/z/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/z/g;->setData(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/g;->b(Lcom/ubix/ssp/ad/e/z/g;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/g;->b(Lcom/ubix/ssp/ad/e/z/g;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    const-string v2, "\u7ee7\u7eed\u770b\u5e7f\u544a"

    invoke-static {v1, v2, v2}, Lcom/ubix/ssp/ad/e/z/g;->a(Lcom/ubix/ssp/ad/e/z/g;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_4
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 2
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/z/g;->b(Lcom/ubix/ssp/ad/e/z/g;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/z/g;->b(Lcom/ubix/ssp/ad/e/z/g;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%s\u79d2\u540e\u81ea\u52a8\u653e\u5f03\u7ee7\u7eed\u770b\u5e7f\u544a"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u7ee7\u7eed\u770b\u5e7f\u544a"

    invoke-static {v0, p1, v1}, Lcom/ubix/ssp/ad/e/z/g;->a(Lcom/ubix/ssp/ad/e/z/g;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/g;->b(Lcom/ubix/ssp/ad/e/z/g;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/g;->b(Lcom/ubix/ssp/ad/e/z/g;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/g$b;->a:Lcom/ubix/ssp/ad/e/z/g;

    const-string v2, "\u7ee7\u7eed\u770b\u5e7f\u544a"

    invoke-static {v1, v2, v2}, Lcom/ubix/ssp/ad/e/z/g;->a(Lcom/ubix/ssp/ad/e/z/g;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
