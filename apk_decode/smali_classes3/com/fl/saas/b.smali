.class public abstract Lcom/fl/saas/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/fl/saas/j;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/fl/saas/j;->j2:D

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/fl/saas/f1;->a(D)Lcom/fl/saas/f1$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/fl/saas/f1$a;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/fl/saas/j;->r1:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fl/saas/f1$a;->a()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
