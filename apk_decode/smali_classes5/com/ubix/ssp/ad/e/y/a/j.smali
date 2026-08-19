.class public final Lcom/ubix/ssp/ad/e/y/a/j;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# static fields
.field private static volatile b:[Lcom/ubix/ssp/ad/e/y/a/j;


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/j;->e()Lcom/ubix/ssp/ad/e/y/a/j;

    return-void
.end method

.method public static f()[Lcom/ubix/ssp/ad/e/y/a/j;
    .locals 2

    sget-object v0, Lcom/ubix/ssp/ad/e/y/a/j;->b:[Lcom/ubix/ssp/ad/e/y/a/j;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/y/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/y/a/j;->b:[Lcom/ubix/ssp/ad/e/y/a/j;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ubix/ssp/ad/e/y/a/j;

    sput-object v1, Lcom/ubix/ssp/ad/e/y/a/j;->b:[Lcom/ubix/ssp/ad/e/y/a/j;

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
    sget-object v0, Lcom/ubix/ssp/ad/e/y/a/j;->b:[Lcom/ubix/ssp/ad/e/y/a/j;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/j;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->i(II)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->d:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->j(IJ)V

    :cond_2
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/j;->c:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/j;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/j;->d:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/y/a/j;->e:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/ubix/ssp/ad/e/y/c/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/j;
    .locals 2

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->y()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->e:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->k()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->c:I

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/j;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/j;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
