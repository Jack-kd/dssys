.class public final Lcom/ubix/ssp/ad/e/y/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->g:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->i:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->j:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->a:[B

    iput p2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->b:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    iput p2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    return-void
.end method

.method public static a(J)J
    .locals 4

    .line 2
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static a([BII)Lcom/ubix/ssp/ad/e/y/c/a;
    .locals 1

    .line 3
    new-instance v0, Lcom/ubix/ssp/ad/e/y/c/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ubix/ssp/ad/e/y/c/a;-><init>([BII)V

    return-object v0
.end method

.method public static b(I)I
    .locals 1

    .line 2
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private z()V
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->g:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    iput v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->d:I

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->f:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->a()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/f;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->h:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->i:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->d(I)I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->h:I

    invoke-virtual {p1, p0}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/a;->a(I)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->h:I

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->c(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->f()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->g:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->z()V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->g:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->g:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->z()V

    return v0

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->g()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->e()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Ljava/lang/Object;
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->x()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->e()[B

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->k()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->j()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->f()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public e()[B
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/y/c/a;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/y/c/h;->h:[B

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public f()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public f(I)[B
    .locals 4

    .line 2
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->g:I

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    new-array v1, p1, [B

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->g()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/e/y/c/a;->i(I)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->g()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->e()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1
.end method

.method public g()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->b:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->n()I

    move-result v0

    return v0
.end method

.method public h(I)Z
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/c/h;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->n()I

    return v1

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->c()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->A()V

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/c/h;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/ubix/ssp/ad/e/y/c/h;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/a;->a(I)V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/a;->i(I)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->o()J

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->k()I

    return v1
.end method

.method public i()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public i(I)V
    .locals 3

    .line 2
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->g:I

    if-gt v1, v2, :cond_1

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    sub-int/2addr v2, v0

    if-gt p1, v2, :cond_0

    iput v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    return-void

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->g()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/e/y/c/a;->i(I)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->g()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->e()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object p1

    throw p1
.end method

.method public j()F
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    return v0
.end method

.method public l()J
    .locals 2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()B
    .locals 3

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    aget-byte v0, v1, v0

    return v0

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->g()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object v0

    throw v0
.end method

.method public n()I
    .locals 4

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public o()J
    .locals 13

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v3

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v4

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v5

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v6

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public p()I
    .locals 3

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v2

    if-ltz v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->d()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public q()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->m()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->d()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object v0

    throw v0
.end method

.method public r()I
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->n()I

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public t()I
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/y/c/a;->b(I)I

    move-result v0

    return v0
.end method

.method public u()J
    .locals 2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/y/c/a;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/c/a;->c:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/y/c/a;->a:[B

    sget-object v4, Lcom/ubix/ssp/ad/e/y/c/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ubix/ssp/ad/e/y/c/a;->e:I

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->f(I)[B

    move-result-object v0

    sget-object v2, Lcom/ubix/ssp/ad/e/y/c/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public w()I
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->f:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/a;->f:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/y/c/d;->b()Lcom/ubix/ssp/ad/e/y/c/d;

    move-result-object v0

    throw v0
.end method

.method public x()I
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result v0

    return v0
.end method

.method public y()J
    .locals 2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->q()J

    move-result-wide v0

    return-wide v0
.end method
