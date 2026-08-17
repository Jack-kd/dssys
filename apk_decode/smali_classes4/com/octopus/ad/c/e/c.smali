.class public Lcom/octopus/ad/c/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 7
    invoke-static {}, Lcom/octopus/ad/c/e/d;->a()Lcom/octopus/ad/c/e/d;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object v1, v0, Lcom/octopus/ad/c/e/d;->b:Lcom/octopus/ad/c/e/b;

    invoke-virtual {v0, p0, v1}, Lcom/octopus/ad/c/e/d;->a(Landroid/content/Context;Lcom/octopus/ad/c/e/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/octopus/ad/c/e/c;->a:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 2
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    sput-object v1, Lcom/octopus/ad/c/e/c;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    :cond_0
    sget-object v1, Lcom/octopus/ad/c/e/c;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-static {}, Lcom/octopus/ad/c/e/d;->a()Lcom/octopus/ad/c/e/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/octopus/ad/c/e/d;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method
