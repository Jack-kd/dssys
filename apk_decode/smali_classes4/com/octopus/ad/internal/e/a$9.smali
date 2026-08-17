.class Lcom/octopus/ad/internal/e/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->a(I)V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

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
    .locals 3

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const-string v1, "\u8df3\u8fc7 0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    iget-object v0, v0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a$a;->a(Z)V

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    iget-object v0, v0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    iget-object v0, v0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a$a;->c()Lcom/octopus/ad/internal/e/a$a$a;

    move-result-object v0

    sget-object v2, Lcom/octopus/ad/internal/e/a$a$a;->a:Lcom/octopus/ad/internal/e/a$a$a;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    iget-object v0, v0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a$a;->c()Lcom/octopus/ad/internal/e/a$a$a;

    move-result-object v0

    sget-object v2, Lcom/octopus/ad/internal/e/a$a$a;->b:Lcom/octopus/ad/internal/e/a$a$a;

    if-ne v0, v2, :cond_2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/e/a;->d(Lcom/octopus/ad/internal/e/a;Z)Z

    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/octopus/ad/internal/b;->a(J)V

    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p1, p1

    .line 4
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$9;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p2}, Lcom/octopus/ad/internal/e/a;->p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\u8df3\u8fc7 %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
