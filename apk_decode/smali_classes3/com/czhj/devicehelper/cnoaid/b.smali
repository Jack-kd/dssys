.class public final Lcom/czhj/devicehelper/cnoaid/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z = false

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static volatile h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/czhj/devicehelper/cnoaid/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/czhj/devicehelper/cnoaid/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/czhj/devicehelper/cnoaid/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->c:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->c:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 2

    .line 4
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/czhj/devicehelper/cnoaid/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/a;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/a;->b()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->b:Ljava/lang/String;

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->b:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->b:Ljava/lang/String;

    :cond_3
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/czhj/devicehelper/cnoaid/b;->a(Landroid/app/Application;Lcom/czhj/devicehelper/cnoaid/e;)V

    return-void
.end method

.method public static a(Landroid/app/Application;Lcom/czhj/devicehelper/cnoaid/e;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/czhj/devicehelper/cnoaid/b;->a(Landroid/app/Application;ZLcom/czhj/devicehelper/cnoaid/e;)V

    return-void
.end method

.method public static a(Landroid/app/Application;Z)V
    .locals 1

    .line 7
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/czhj/devicehelper/cnoaid/b;->a(Landroid/app/Application;ZLcom/czhj/devicehelper/cnoaid/e;)V

    return-void
.end method

.method public static a(Landroid/app/Application;ZLcom/czhj/devicehelper/cnoaid/e;)V
    .locals 2

    .line 8
    sget-boolean v0, Lcom/czhj/devicehelper/cnoaid/b;->a:Z

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const-class v0, Lcom/czhj/devicehelper/cnoaid/b;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/czhj/devicehelper/cnoaid/b;->a:Z

    if-nez v1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/czhj/devicehelper/cnoaid/a;->a(Landroid/app/Application;ZLcom/czhj/devicehelper/cnoaid/e;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/czhj/devicehelper/cnoaid/b;->a:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/czhj/devicehelper/cnoaid/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/a;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/czhj/devicehelper/cnoaid/b;->f:Ljava/lang/String;

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
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/czhj/devicehelper/cnoaid/b;->f:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/czhj/devicehelper/cnoaid/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/a;->d()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/czhj/devicehelper/cnoaid/b$1;

    invoke-direct {v1}, Lcom/czhj/devicehelper/cnoaid/b$1;-><init>()V

    invoke-static {p0, v1}, Lcom/czhj/devicehelper/cnoaid/a;->a(Landroid/content/Context;Lcom/czhj/devicehelper/cnoaid/c;)V

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    :cond_3
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/czhj/devicehelper/cnoaid/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/a;->f()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/czhj/devicehelper/cnoaid/b;->g:Ljava/lang/String;

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
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/czhj/devicehelper/cnoaid/b;->g:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/czhj/devicehelper/cnoaid/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/czhj/devicehelper/cnoaid/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->e:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->e:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->e:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/czhj/devicehelper/cnoaid/b;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/czhj/devicehelper/cnoaid/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/devicehelper/cnoaid/b;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/czhj/devicehelper/cnoaid/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->h:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->h:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/b;->h:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/czhj/devicehelper/cnoaid/b;->h:Ljava/lang/String;

    return-object p0
.end method
