.class public abstract Lz0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "init"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "e8adfe58aa99c43090f84819012c2a45"

    .line 4
    .line 5
    invoke-static {p0, p1, v1}, Lh/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 p0, 0x3e8

    .line 9
    .line 10
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 11
    .line 12
    .line 13
    const-string p0, "onSuccess"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "init onFail:"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, LE0/a;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "onError"

    .line 45
    .line 46
    invoke-static {v0, p0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
