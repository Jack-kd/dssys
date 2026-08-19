.class public final Lcom/ubix/ssp/ad/e/y/a/k;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# instance fields
.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/k;->e()Lcom/ubix/ssp/ad/e/y/a/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/k;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/y/a/k;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->e:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/y/a/k;->e:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->d:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->f:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_7

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    :goto_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->g:[Ljava/lang/String;

    array-length v1, v0

    if-ge v2, v1, :cond_9

    aget-object v0, v0, v2

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->h:I

    if-eqz v0, :cond_a

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->m(II)V

    :cond_a
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->i:I

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->m(II)V

    :cond_b
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v3

    move v4, v1

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/ubix/ssp/ad/e/y/a/k;->c:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_2

    aget-object v6, v6, v1

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/y/c/b;->a(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    add-int/2addr v0, v5

    :cond_3
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->e:[Ljava/lang/String;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v3

    move v4, v1

    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/ubix/ssp/ad/e/y/a/k;->e:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_5

    aget-object v6, v6, v1

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/y/c/b;->a(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v4

    add-int/2addr v0, v5

    :cond_6
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->d:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->f:[Ljava/lang/String;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lez v1, :cond_a

    move v1, v3

    move v2, v1

    move v4, v2

    :goto_2
    iget-object v5, p0, Lcom/ubix/ssp/ad/e/y/a/k;->f:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_9

    aget-object v5, v5, v1

    if-eqz v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/y/c/b;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v0, v2

    add-int/2addr v0, v4

    :cond_a
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_d

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v3

    move v2, v1

    :goto_3
    iget-object v4, p0, Lcom/ubix/ssp/ad/e/y/a/k;->g:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_c

    aget-object v4, v4, v3

    if-eqz v4, :cond_b

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/y/c/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    :cond_d
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->h:I

    if-eqz v1, :cond_e

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->i:I

    if-eqz v1, :cond_f

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/k;
    .locals 5

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_15

    const/16 v1, 0xa

    if-eq v0, v1, :cond_14

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x32

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x42

    if-eq v0, v1, :cond_3

    const/16 v1, 0x48

    if-eq v0, v1, :cond_2

    const/16 v1, 0x50

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->x()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->i:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->x()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->h:I

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/e/y/c/h;->a(Lcom/ubix/ssp/ad/e/y/c/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->g:[Ljava/lang/String;

    if-nez v1, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/y/a/k;->g:[Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/e/y/c/h;->a(Lcom/ubix/ssp/ad/e/y/c/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->f:[Ljava/lang/String;

    if-nez v1, :cond_8

    move v3, v2

    goto :goto_3

    :cond_8
    array-length v3, v1

    :goto_3
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_a

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/y/a/k;->f:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/e/y/c/h;->a(Lcom/ubix/ssp/ad/e/y/c/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->e:[Ljava/lang/String;

    if-nez v1, :cond_d

    move v3, v2

    goto :goto_5

    :cond_d
    array-length v3, v1

    :goto_5
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_f

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/y/a/k;->e:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/e/y/c/h;->a(Lcom/ubix/ssp/ad/e/y/c/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->c:[Ljava/lang/String;

    if-nez v1, :cond_11

    move v3, v2

    goto :goto_7

    :cond_11
    array-length v3, v1

    :goto_7
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_13

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/y/a/k;->c:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    :goto_9
    return-object p0
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/k;
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->b:Ljava/lang/String;

    sget-object v1, Lcom/ubix/ssp/ad/e/y/c/h;->f:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->e:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->f:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/k;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->h:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/k;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
