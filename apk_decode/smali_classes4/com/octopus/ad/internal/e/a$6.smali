.class Lcom/octopus/ad/internal/e/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(J)V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/e/a;I)I

    .line 3
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->n(Lcom/octopus/ad/internal/e/a;)I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->o(Lcom/octopus/ad/internal/e/a;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->o(Lcom/octopus/ad/internal/e/a;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "%s\u79d2"

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->n(Lcom/octopus/ad/internal/e/a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    const-string p2, "\u70b9\u51fb\u5e7f\u544a\u5e76\u6d4f\u89c8%s\u79d2\u53ef\u9886\u5956"

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->n(Lcom/octopus/ad/internal/e/a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->q(Lcom/octopus/ad/internal/e/a;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->q(Lcom/octopus/ad/internal/e/a;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u5173\u95ed\u5e7f\u544a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->r(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->s(Lcom/octopus/ad/internal/e/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->t(Lcom/octopus/ad/internal/e/a;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->p()V

    .line 13
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$6;->a:Lcom/octopus/ad/internal/e/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/e/a;->c(Lcom/octopus/ad/internal/e/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :goto_0
    const-string p2, "OctopusAd"

    const-string v0, "An Exception Caught"

    invoke-static {p2, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
