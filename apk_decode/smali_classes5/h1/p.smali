.class public interface abstract Lh1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;II)Lh1/p;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Lh1/t;

    .line 5
    .line 6
    invoke-direct {p1, p0, p2}, Lh1/t;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v0, Lh1/r;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2}, Lh1/r;-><init>(Ljava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public b(Lh1/k;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lh1/p$a;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lh1/p$a;-><init>(Lh1/p;Lh1/k;)V

    .line 8
    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :goto_0
    new-instance v0, Lh1/m;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lh1/m;-><init>(Lh1/l;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Lh1/p;->c(Lh1/m;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public abstract c(Lh1/m;)V
.end method

.method public abstract d()V
.end method

.method public abstract start()V
.end method
