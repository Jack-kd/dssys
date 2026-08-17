.class Lcom/octopus/ad/internal/e/a$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$27;->b:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a$27;->a:Landroid/widget/TextView;

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
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$27;->b:Lcom/octopus/ad/internal/e/a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/e/a;->b(Lcom/octopus/ad/internal/e/a;I)I

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$27;->b:Lcom/octopus/ad/internal/e/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/e/a;->h(Lcom/octopus/ad/internal/e/a;Z)Z

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$27;->b:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->Y(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$27;->b:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->Y(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$27;->b:Lcom/octopus/ad/internal/e/a;

    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->Z(Lcom/octopus/ad/internal/e/a;)I

    move-result v1

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a$27;->b:Lcom/octopus/ad/internal/e/a;

    invoke-static {v2}, Lcom/octopus/ad/internal/e/a;->m(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/a/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/e/b;->a(ILcom/octopus/ad/a/d;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$27;->b:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->aa(Lcom/octopus/ad/internal/e/a;)V

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
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$27;->a:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$27;->a:Landroid/widget/TextView;

    sget p2, Lcom/octopus/ad/R$drawable;->oct_bg_common_orange:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
