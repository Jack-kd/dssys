.class public final Lcom/ubix/ssp/ad/e/y/a/c;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/y/a/c$a;
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/ubix/ssp/ad/e/y/a/c$a;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:[Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/c;->e()Lcom/ubix/ssp/ad/e/y/a/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/c;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->e:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->f:Lcom/ubix/ssp/ad/e/y/a/c$a;

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->d(ILcom/ubix/ssp/ad/e/y/c/f;)V

    :cond_4
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->g:Z

    if-eqz v0, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->h:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->i:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/y/a/c;->i:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->j:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->k:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_b
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->d:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->e:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->f:Lcom/ubix/ssp/ad/e/y/a/c$a;

    if-eqz v1, :cond_4

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILcom/ubix/ssp/ad/e/y/c/f;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->g:Z

    if-eqz v1, :cond_5

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->h:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->i:[Ljava/lang/String;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/ubix/ssp/ad/e/y/a/c;->i:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_8

    aget-object v5, v5, v1

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/y/c/b;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    :cond_9
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->j:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->k:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->l:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/c;
    .locals 5

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->l:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->k:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->j:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->a(Lcom/ubix/ssp/ad/e/y/c/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->i:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/y/a/c;->i:[Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->h:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->g:Z

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->f:Lcom/ubix/ssp/ad/e/y/a/c$a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/c$a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/c$a;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->f:Lcom/ubix/ssp/ad/e/y/a/c$a;

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->f:Lcom/ubix/ssp/ad/e/y/a/c$a;

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->a(Lcom/ubix/ssp/ad/e/y/c/f;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->c:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->b:Ljava/lang/String;

    goto/16 :goto_0

    :goto_3
    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x2a -> :sswitch_6
        0x30 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/c;
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->f:Lcom/ubix/ssp/ad/e/y/a/c$a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->g:Z

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->h:Ljava/lang/String;

    sget-object v1, Lcom/ubix/ssp/ad/e/y/c/h;->f:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c;->i:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c;->l:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
