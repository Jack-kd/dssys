.class public final Lcom/ubix/ssp/ad/e/y/a/a;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/y/a/a$a;,
        Lcom/ubix/ssp/ad/e/y/a/a$c;,
        Lcom/ubix/ssp/ad/e/y/a/a$b;
    }
.end annotation


# static fields
.field private static volatile b:[Lcom/ubix/ssp/ad/e/y/a/a;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lcom/ubix/ssp/ad/e/y/a/a$b;

.field public e:J

.field public f:Lcom/ubix/ssp/ad/e/y/a/a$c;

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Z

.field public l:Lcom/ubix/ssp/ad/e/y/a/a$a;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/a;->e()Lcom/ubix/ssp/ad/e/y/a/a;

    return-void
.end method

.method public static a([B)Lcom/ubix/ssp/ad/e/y/a/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/a;-><init>()V

    invoke-static {v0, p0}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;[B)Lcom/ubix/ssp/ad/e/y/c/f;

    move-result-object p0

    check-cast p0, Lcom/ubix/ssp/ad/e/y/a/a;

    return-object p0
.end method

.method public static f()[Lcom/ubix/ssp/ad/e/y/a/a;
    .locals 2

    sget-object v0, Lcom/ubix/ssp/ad/e/y/a/a;->b:[Lcom/ubix/ssp/ad/e/y/a/a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/y/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/y/a/a;->b:[Lcom/ubix/ssp/ad/e/y/a/a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ubix/ssp/ad/e/y/a/a;

    sput-object v1, Lcom/ubix/ssp/ad/e/y/a/a;->b:[Lcom/ubix/ssp/ad/e/y/a/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/ubix/ssp/ad/e/y/a/a;->b:[Lcom/ubix/ssp/ad/e/y/a/a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/a;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->d(ILcom/ubix/ssp/ad/e/y/c/f;)V

    :cond_1
    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/y/a/a;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->j(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->d(ILcom/ubix/ssp/ad/e/y/c/f;)V

    :cond_3
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->g:I

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->i(II)V

    :cond_4
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->h:I

    if-eqz v0, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->i(II)V

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->i:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_6
    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/y/a/a;->j:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->g(IJ)V

    :cond_7
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->k:Z

    if-eqz v0, :cond_8

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IZ)V

    :cond_8
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->l:Lcom/ubix/ssp/ad/e/y/a/a$a;

    if-eqz v0, :cond_9

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->d(ILcom/ubix/ssp/ad/e/y/c/f;)V

    :cond_9
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->m:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_a
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILcom/ubix/ssp/ad/e/y/c/f;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v3, p0, Lcom/ubix/ssp/ad/e/y/a/a;->e:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v1, v3, v4}, Lcom/ubix/ssp/ad/e/y/c/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILcom/ubix/ssp/ad/e/y/c/f;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->g:I

    if-eqz v1, :cond_4

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->h:I

    if-eqz v1, :cond_5

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->i:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v3, p0, Lcom/ubix/ssp/ad/e/y/a/a;->j:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    invoke-static {v1, v3, v4}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->k:Z

    if-eqz v1, :cond_8

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->l:Lcom/ubix/ssp/ad/e/y/a/a$a;

    if-eqz v1, :cond_9

    const/16 v3, 0xa

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILcom/ubix/ssp/ad/e/y/c/f;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->m:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/a;
    .locals 2

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->m:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->l:Lcom/ubix/ssp/ad/e/y/a/a$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/a$a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/a$a;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->l:Lcom/ubix/ssp/ad/e/y/a/a$a;

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->l:Lcom/ubix/ssp/ad/e/y/a/a$a;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->a(Lcom/ubix/ssp/ad/e/y/c/f;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->k:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->j:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->i:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->k()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->h:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->k()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->g:I

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/a$c;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    goto :goto_1

    :sswitch_8
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->y()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->e:J

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/a$b;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/a$b;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    goto :goto_1

    :sswitch_a
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->c:Ljava/lang/String;

    goto :goto_0

    :goto_2
    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x18 -> :sswitch_8
        0x22 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x3a -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/a;
    .locals 5

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/y/a/a;->e:J

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    const/4 v4, 0x0

    iput v4, p0, Lcom/ubix/ssp/ad/e/y/a/a;->g:I

    iput v4, p0, Lcom/ubix/ssp/ad/e/y/a/a;->h:I

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->i:Ljava/lang/String;

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/y/a/a;->j:J

    iput-boolean v4, p0, Lcom/ubix/ssp/ad/e/y/a/a;->k:Z

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->l:Lcom/ubix/ssp/ad/e/y/a/a$a;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a;->m:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
