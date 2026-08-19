.class public final Lcom/kuaishou/weapon/p0/dk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kuaishou/weapon/p0/dk$a;
    }
.end annotation


# static fields
.field private static a:Lcom/kuaishou/weapon/p0/dk$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kuaishou/weapon/p0/dk;->b(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "arm64-v8a"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "armeabi-v7a"

    .line 11
    .line 12
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/kuaishou/weapon/p0/dk;->c(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dk$a;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    sget-object v1, Lcom/kuaishou/weapon/p0/dk$a;->c:Lcom/kuaishou/weapon/p0/dk$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :catchall_0
    :cond_0
    return v0
.end method

.method private static c(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dk$a;
    .locals 0

    .line 1
    sget-object p0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    sget-object p0, Lcom/kuaishou/weapon/p0/dk$a;->c:Lcom/kuaishou/weapon/p0/dk$a;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-object p0, Lcom/kuaishou/weapon/p0/dk$a;->b:Lcom/kuaishou/weapon/p0/dk$a;

    .line 16
    .line 17
    :goto_0
    sput-object p0, Lcom/kuaishou/weapon/p0/dk;->a:Lcom/kuaishou/weapon/p0/dk$a;

    .line 18
    .line 19
    return-object p0
.end method
