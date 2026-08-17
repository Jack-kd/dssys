.class Lcom/octopus/ad/internal/e/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->a(IILandroid/view/View;)V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

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

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->v(Lcom/octopus/ad/internal/e/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->l(Lcom/octopus/ad/internal/e/a;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 2
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p1, p1

    .line 3
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$8;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p2}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
