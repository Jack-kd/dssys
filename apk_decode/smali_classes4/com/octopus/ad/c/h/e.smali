.class public Lcom/octopus/ad/c/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/c/h/a$a;->a:Lcom/octopus/ad/c/h/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/octopus/ad/c/h/a;->a(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/octopus/ad/c/h/b;->b:Z

    const/4 p0, 0x1

    .line 2
    sput-boolean p0, Lcom/octopus/ad/c/h/b;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/octopus/ad/c/h/b;->a:Z

    if-eqz v0, :cond_0

    .line 4
    sget-boolean v0, Lcom/octopus/ad/c/h/b;->b:Z

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/octopus/ad/c/h/b;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/octopus/ad/c/h/a$a;->a:Lcom/octopus/ad/c/h/a;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "OUID"

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Lcom/octopus/ad/c/h/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v0, "SDK Need Init First!"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method
