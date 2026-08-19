.class Lcom/octopus/ad/internal/e/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->a(III)V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

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
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    iget-boolean v1, v0, Lcom/octopus/ad/internal/e/a;->q:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->p()V

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->o()V

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->v(Lcom/octopus/ad/internal/e/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->l(Lcom/octopus/ad/internal/e/a;)V

    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->D(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/d;

    move-result-object v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->s()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    iget-boolean v1, v0, Lcom/octopus/ad/internal/e/a;->q:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->x(Lcom/octopus/ad/internal/e/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p1, p1

    .line 4
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p2}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u5956\u52b1\u5c06\u4e8e %d \u79d2\u540e\u53d1\u653e"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p2}, Lcom/octopus/ad/internal/e/a;->A(Lcom/octopus/ad/internal/e/a;)I

    move-result p2

    if-gt p1, p2, :cond_2

    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p2}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 6
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p2}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p2}, Lcom/octopus/ad/internal/e/a;->n(Lcom/octopus/ad/internal/e/a;)I

    move-result p2

    sub-int/2addr p2, p1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->B(Lcom/octopus/ad/internal/e/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$13;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->C(Lcom/octopus/ad/internal/e/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
