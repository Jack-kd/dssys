.class public final Lcom/ubix/ssp/ad/e/y/a/b$a;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/y/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile b:[Lcom/ubix/ssp/ad/e/y/a/b$a;


# instance fields
.field public c:I

.field public d:[Lcom/ubix/ssp/ad/e/y/a/i;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/b$a;->e()Lcom/ubix/ssp/ad/e/y/a/b$a;

    return-void
.end method

.method public static f()[Lcom/ubix/ssp/ad/e/y/a/b$a;
    .locals 2

    sget-object v0, Lcom/ubix/ssp/ad/e/y/a/b$a;->b:[Lcom/ubix/ssp/ad/e/y/a/b$a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/y/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/y/a/b$a;->b:[Lcom/ubix/ssp/ad/e/y/a/b$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ubix/ssp/ad/e/y/a/b$a;

    sput-object v1, Lcom/ubix/ssp/ad/e/y/a/b$a;->b:[Lcom/ubix/ssp/ad/e/y/a/b$a;

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
    sget-object v0, Lcom/ubix/ssp/ad/e/y/a/b$a;->b:[Lcom/ubix/ssp/ad/e/y/a/b$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/b$a;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->i(II)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->d:[Lcom/ubix/ssp/ad/e/y/a/i;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->d:[Lcom/ubix/ssp/ad/e/y/a/i;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->d(ILcom/ubix/ssp/ad/e/y/c/f;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->e:I

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->i(II)V

    :cond_3
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->f:I

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->i(II)V

    :cond_4
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->c:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->d:[Lcom/ubix/ssp/ad/e/y/a/i;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->d:[Lcom/ubix/ssp/ad/e/y/a/i;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILcom/ubix/ssp/ad/e/y/c/f;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->e:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->f:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/b$a;
    .locals 5

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->k()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->f:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->k()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->e:I

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/e/y/c/h;->a(Lcom/ubix/ssp/ad/e/y/c/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->d:[Lcom/ubix/ssp/ad/e/y/a/i;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/ubix/ssp/ad/e/y/a/i;

    if-eqz v3, :cond_5

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6

    new-instance v1, Lcom/ubix/ssp/ad/e/y/a/i;

    invoke-direct {v1}, Lcom/ubix/ssp/ad/e/y/a/i;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/ubix/ssp/ad/e/y/c/a;->a(Lcom/ubix/ssp/ad/e/y/c/f;)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/i;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/i;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/a;->a(Lcom/ubix/ssp/ad/e/y/c/f;)V

    iput-object v4, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->d:[Lcom/ubix/ssp/ad/e/y/a/i;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->k()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->c:I

    goto :goto_0

    :cond_8
    :goto_3
    return-object p0
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/b$a;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->c:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/y/a/i;->f()[Lcom/ubix/ssp/ad/e/y/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->d:[Lcom/ubix/ssp/ad/e/y/a/i;

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->e:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/b$a;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
