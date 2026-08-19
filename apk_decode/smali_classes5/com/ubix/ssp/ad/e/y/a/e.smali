.class public final Lcom/ubix/ssp/ad/e/y/a/e;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# instance fields
.field public b:Ljava/lang/String;

.field public c:[Lcom/ubix/ssp/ad/e/y/a/a;

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/e;->e()Lcom/ubix/ssp/ad/e/y/a/e;

    return-void
.end method

.method public static a([B)Lcom/ubix/ssp/ad/e/y/a/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/e;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/e;-><init>()V

    invoke-static {v0, p0}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;[B)Lcom/ubix/ssp/ad/e/y/c/f;

    move-result-object p0

    check-cast p0, Lcom/ubix/ssp/ad/e/y/a/e;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/e;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/ubix/ssp/ad/e/y/c/b;->d(ILcom/ubix/ssp/ad/e/y/c/f;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/y/a/e;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->g(IJ)V

    :cond_3
    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/y/a/e;->e:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->g(IJ)V

    :cond_4
    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/y/a/e;->f:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->g(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILcom/ubix/ssp/ad/e/y/c/f;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Lcom/ubix/ssp/ad/e/y/a/e;->d:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1, v3, v4}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v3, p0, Lcom/ubix/ssp/ad/e/y/a/e;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v1, v3, v4}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v3, p0, Lcom/ubix/ssp/ad/e/y/a/e;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-static {v1, v3, v4}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->g:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/e;
    .locals 5

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->g:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->f:J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->e:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->d:J

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/e/y/c/h;->a(Lcom/ubix/ssp/ad/e/y/c/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v3, :cond_7

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_8

    new-instance v1, Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-direct {v1}, Lcom/ubix/ssp/ad/e/y/a/a;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/ubix/ssp/ad/e/y/c/a;->a(Lcom/ubix/ssp/ad/e/y/c/f;)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/a;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->a(Lcom/ubix/ssp/ad/e/y/c/f;)V

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->b:Ljava/lang/String;

    goto :goto_0

    :cond_a
    :goto_3
    return-object p0
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/e;
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->b:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/y/a/a;->f()[Lcom/ubix/ssp/ad/e/y/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->d:J

    iput-wide v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->e:J

    iput-wide v1, p0, Lcom/ubix/ssp/ad/e/y/a/e;->f:J

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/e;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
