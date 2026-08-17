.class public final Lcom/smartdigimkt/r2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:J

.field public k:I

.field public l:I

.field public m:I

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/smartdigimkt/r2/o;->n:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/smartdigimkt/r2/o;->o:J

    .line 9
    .line 10
    return-void
.end method

.method public static b(II)I
    .locals 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x12

    const/4 v1, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0xf

    if-eq p1, p0, :cond_0

    const/16 p0, 0x10

    if-eq p1, p0, :cond_0

    const/16 p0, 0x15

    if-eq p1, p0, :cond_0

    const/16 p0, 0x30

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2d

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2e

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    :pswitch_1
    return v1

    :cond_3
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(II)Lcom/smartdigimkt/i0/a;
    .locals 7

    .line 14
    new-instance v0, Lcom/smartdigimkt/i0/a;

    invoke-direct {v0}, Lcom/smartdigimkt/i0/a;-><init>()V

    .line 15
    iget v1, p0, Lcom/smartdigimkt/r2/o;->a:I

    iput v1, v0, Lcom/smartdigimkt/i0/a;->a:I

    .line 16
    iget v1, p0, Lcom/smartdigimkt/r2/o;->b:I

    iput v1, v0, Lcom/smartdigimkt/i0/a;->b:I

    .line 17
    iget v1, p0, Lcom/smartdigimkt/r2/o;->c:I

    iput v1, v0, Lcom/smartdigimkt/i0/a;->c:I

    .line 18
    iget v2, p0, Lcom/smartdigimkt/r2/o;->d:I

    iput v2, v0, Lcom/smartdigimkt/i0/a;->d:I

    .line 19
    iget v3, p0, Lcom/smartdigimkt/r2/o;->e:I

    iput v3, v0, Lcom/smartdigimkt/i0/a;->e:I

    .line 20
    iget v3, p0, Lcom/smartdigimkt/r2/o;->f:I

    iput v3, v0, Lcom/smartdigimkt/i0/a;->f:I

    .line 21
    iget v3, p0, Lcom/smartdigimkt/r2/o;->g:I

    iput v3, v0, Lcom/smartdigimkt/i0/a;->g:I

    .line 22
    iget v4, p0, Lcom/smartdigimkt/r2/o;->h:I

    iput v4, v0, Lcom/smartdigimkt/i0/a;->h:I

    .line 23
    iget-wide v5, p0, Lcom/smartdigimkt/r2/o;->i:J

    iput-wide v5, v0, Lcom/smartdigimkt/i0/a;->k:J

    .line 24
    iget-wide v5, p0, Lcom/smartdigimkt/r2/o;->j:J

    iput-wide v5, v0, Lcom/smartdigimkt/i0/a;->l:J

    .line 25
    iput p1, v0, Lcom/smartdigimkt/i0/a;->s:I

    .line 26
    iput p2, v0, Lcom/smartdigimkt/i0/a;->t:I

    if-nez p1, :cond_0

    .line 27
    iput v1, v0, Lcom/smartdigimkt/i0/a;->a:I

    .line 28
    iput v2, v0, Lcom/smartdigimkt/i0/a;->b:I

    .line 29
    iput v3, v0, Lcom/smartdigimkt/i0/a;->e:I

    .line 30
    iput v4, v0, Lcom/smartdigimkt/i0/a;->f:I

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 31
    invoke-static {}, Lcom/smartdigimkt/e1/a;->a()Lcom/smartdigimkt/e1/a;

    move-result-object p2

    monitor-enter p2

    .line 32
    :try_start_0
    iget-object v1, p2, Lcom/smartdigimkt/e1/a;->c:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 33
    iput-object v1, v0, Lcom/smartdigimkt/i0/a;->m:[F

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_1
    :goto_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 34
    iget-wide p1, p0, Lcom/smartdigimkt/r2/o;->n:J

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    .line 35
    iget v1, p0, Lcom/smartdigimkt/r2/o;->k:I

    iput v1, v0, Lcom/smartdigimkt/i0/a;->n:I

    .line 36
    iget v1, p0, Lcom/smartdigimkt/r2/o;->l:I

    iput v1, v0, Lcom/smartdigimkt/i0/a;->o:I

    .line 37
    iget v1, p0, Lcom/smartdigimkt/r2/o;->m:I

    iput v1, v0, Lcom/smartdigimkt/i0/a;->p:I

    .line 38
    iput-wide p1, v0, Lcom/smartdigimkt/i0/a;->q:J

    .line 39
    iget-wide p1, p0, Lcom/smartdigimkt/r2/o;->o:J

    iput-wide p1, v0, Lcom/smartdigimkt/i0/a;->r:J

    :cond_2
    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/view/View;III)Lcom/smartdigimkt/i0/a;
    .locals 2

    .line 40
    invoke-static {p3, p4}, Lcom/smartdigimkt/r2/o;->b(II)I

    move-result v0

    const/4 v1, 0x5

    if-eq p3, v1, :cond_0

    const/4 v1, 0x6

    if-eq p3, v1, :cond_0

    const/4 v1, 0x7

    if-ne p3, v1, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0, p1, p2, p5}, Lcom/smartdigimkt/r2/o;->a(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 42
    :cond_1
    invoke-virtual {p0, v0, p4}, Lcom/smartdigimkt/r2/o;->a(II)Lcom/smartdigimkt/i0/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(IIII)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/smartdigimkt/r2/o;->a:I

    .line 2
    iput p2, p0, Lcom/smartdigimkt/r2/o;->b:I

    .line 3
    iput p3, p0, Lcom/smartdigimkt/r2/o;->e:I

    .line 4
    iput p4, p0, Lcom/smartdigimkt/r2/o;->f:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartdigimkt/r2/o;->i:J

    .line 6
    iget v0, p0, Lcom/smartdigimkt/r2/o;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartdigimkt/r2/o;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartdigimkt/r2/o;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartdigimkt/r2/o;->h:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/smartdigimkt/r2/o;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 7
    iput p1, p0, Lcom/smartdigimkt/r2/o;->c:I

    .line 8
    iput p2, p0, Lcom/smartdigimkt/r2/o;->d:I

    .line 9
    iput p3, p0, Lcom/smartdigimkt/r2/o;->g:I

    .line 10
    iput p4, p0, Lcom/smartdigimkt/r2/o;->h:I

    .line 11
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0xa

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/smartdigimkt/r2/o;->j:J

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;I)V
    .locals 11

    const/4 v0, 0x2

    .line 43
    new-array v1, v0, [I

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 45
    aget v3, v1, v2

    const/4 v4, 0x1

    .line 46
    aget v1, v1, v4

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v5, :cond_0

    .line 49
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/smartdigimkt/c5/h;->j(Landroid/content/Context;)I

    move-result v5

    move v3, v2

    :cond_0
    if-nez v6, :cond_1

    .line 50
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartdigimkt/c5/h;->i(Landroid/content/Context;)I

    move-result v6

    move v1, v2

    :cond_1
    const/4 v7, 0x3

    if-eq p3, v7, :cond_3

    const/4 v7, 0x4

    if-eq p3, v7, :cond_2

    const p3, 0x3f666666    # 0.9f

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3f19999a    # 0.6f

    move v9, p3

    goto :goto_0

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v9, p3

    move v8, v7

    goto :goto_0

    :cond_3
    const v7, 0x3da3d70a    # 0.08f

    const p3, 0x3f6b851f    # 0.92f

    const/high16 v8, 0x3e800000    # 0.25f

    const/high16 v9, 0x3f400000    # 0.75f

    .line 51
    :goto_0
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    if-lez v5, :cond_5

    int-to-float v5, v5

    mul-float/2addr v7, v5

    float-to-int v7, v7

    mul-float/2addr v5, p3

    float-to-int p3, v5

    if-gt p3, v7, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr p3, v7

    add-int/2addr p3, v4

    .line 52
    invoke-virtual {v10, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    add-int/2addr v7, p3

    goto :goto_1

    :cond_5
    move v7, v2

    .line 53
    :goto_1
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    if-lez v6, :cond_7

    int-to-float v5, v6

    mul-float/2addr v8, v5

    float-to-int v6, v8

    mul-float/2addr v5, v9

    float-to-int v5, v5

    if-gt v5, v6, :cond_6

    goto :goto_2

    :cond_6
    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    .line 54
    invoke-virtual {p3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    add-int/2addr v6, p3

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_2
    add-int/2addr v3, v7

    add-int/2addr v1, v6

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    move-object p2, p1

    :goto_3
    if-ne p2, p1, :cond_9

    goto :goto_4

    .line 55
    :cond_9
    new-array p1, v0, [I

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 57
    aget p2, p1, v2

    sub-int v7, v3, p2

    .line 58
    aget p1, p1, v4

    sub-int v6, v1, p1

    .line 59
    :goto_4
    invoke-virtual {p0, v3, v1, v7, v6}, Lcom/smartdigimkt/r2/o;->a(IIII)V

    .line 60
    iput v3, p0, Lcom/smartdigimkt/r2/o;->c:I

    .line 61
    iput v1, p0, Lcom/smartdigimkt/r2/o;->d:I

    .line 62
    iput v7, p0, Lcom/smartdigimkt/r2/o;->g:I

    .line 63
    iput v6, p0, Lcom/smartdigimkt/r2/o;->h:I

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/smartdigimkt/r2/o;->j:J

    return-void
.end method
