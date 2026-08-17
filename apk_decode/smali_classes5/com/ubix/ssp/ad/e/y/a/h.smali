.class public final Lcom/ubix/ssp/ad/e/y/a/h;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/y/a/h$a;,
        Lcom/ubix/ssp/ad/e/y/a/h$b;
    }
.end annotation


# instance fields
.field public b:Lcom/ubix/ssp/ad/e/y/a/h$b;

.field public c:Lcom/ubix/ssp/ad/e/y/a/h$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/h;->e()Lcom/ubix/ssp/ad/e/y/a/h;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->b:Lcom/ubix/ssp/ad/e/y/a/h$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->d(ILcom/ubix/ssp/ad/e/y/c/f;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->c:Lcom/ubix/ssp/ad/e/y/a/h$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->d(ILcom/ubix/ssp/ad/e/y/c/f;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/h;->b:Lcom/ubix/ssp/ad/e/y/a/h$b;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILcom/ubix/ssp/ad/e/y/c/f;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/h;->c:Lcom/ubix/ssp/ad/e/y/a/h$a;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILcom/ubix/ssp/ad/e/y/c/f;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/h;
    .locals 2

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->c:Lcom/ubix/ssp/ad/e/y/a/h$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/h$a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/h$a;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->c:Lcom/ubix/ssp/ad/e/y/a/h$a;

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->c:Lcom/ubix/ssp/ad/e/y/a/h$a;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->a(Lcom/ubix/ssp/ad/e/y/c/f;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->b:Lcom/ubix/ssp/ad/e/y/a/h$b;

    if-nez v0, :cond_4

    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/h$b;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/h$b;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->b:Lcom/ubix/ssp/ad/e/y/a/h$b;

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->b:Lcom/ubix/ssp/ad/e/y/a/h$b;

    goto :goto_1

    :cond_5
    :goto_2
    return-object p0
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/h;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->b:Lcom/ubix/ssp/ad/e/y/a/h$b;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/h;->c:Lcom/ubix/ssp/ad/e/y/a/h$a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
