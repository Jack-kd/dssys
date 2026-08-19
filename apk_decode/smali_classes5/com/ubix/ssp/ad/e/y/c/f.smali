.class public abstract Lcom/ubix/ssp/ad/e/y/c/f;
.super Ljava/lang/Object;


# instance fields
.field protected volatile a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-void
.end method

.method public static final a(Lcom/ubix/ssp/ad/e/y/c/f;[B)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ubix/ssp/ad/e/y/c/f;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;[BII)Lcom/ubix/ssp/ad/e/y/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/ubix/ssp/ad/e/y/c/f;[BII)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ubix/ssp/ad/e/y/c/f;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ubix/ssp/ad/e/y/c/a;->a([BII)Lcom/ubix/ssp/ad/e/y/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/y/c/a;->a(I)V
    :try_end_0
    .catch Lcom/ubix/ssp/ad/e/y/c/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final a(Lcom/ubix/ssp/ad/e/y/c/f;)[B
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->d()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/f;->b(Lcom/ubix/ssp/ad/e/y/c/f;[BII)V

    return-object v1
.end method

.method public static final b(Lcom/ubix/ssp/ad/e/y/c/f;[BII)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ubix/ssp/ad/e/y/c/b;->a([BII)Lcom/ubix/ssp/ad/e/y/c/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/b;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/y/c/f;

    return-object v0
.end method

.method public abstract a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 0

    .line 4
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->d()I

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->a()Lcom/ubix/ssp/ad/e/y/c/f;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/y/c/g;->a(Lcom/ubix/ssp/ad/e/y/c/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
