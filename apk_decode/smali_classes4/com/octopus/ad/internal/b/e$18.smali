.class Lcom/octopus/ad/internal/b/e$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$18;->b:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e$18;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$18;->b:Lcom/octopus/ad/internal/b/e;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;I)I

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$18;->b:Lcom/octopus/ad/internal/b/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->e(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$18;->b:Lcom/octopus/ad/internal/b/e;

    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->H(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/a/d;)V

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$18;->b:Lcom/octopus/ad/internal/b/e;

    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->L(Lcom/octopus/ad/internal/b/e;)V

    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p1, p1

    .line 2
    iget-object p2, p0, Lcom/octopus/ad/internal/b/e$18;->a:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d\u79d2\u540e\u81ea\u52a8\u8df3\u8f6c\u8be6\u60c5\u9875"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x3

    if-gt p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$18;->a:Landroid/widget/TextView;

    sget p2, Lcom/octopus/ad/R$drawable;->oct_bg_common_orange:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
