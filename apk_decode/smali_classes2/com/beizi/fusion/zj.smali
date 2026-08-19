.class public Lcom/beizi/fusion/zj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/zj$d;,
        Lcom/beizi/fusion/zj$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private volatile c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/beizi/fusion/zj;->c:Z

    .line 4
    invoke-static {}, Lcom/beizi/fusion/zj$c;->a()Lcom/beizi/fusion/zj;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Singleton ..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/zj$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/zj;-><init>()V

    return-void
.end method

.method public static a()Lcom/beizi/fusion/zj;
    .locals 1

    .line 4
    invoke-static {}, Lcom/beizi/fusion/zj$c;->a()Lcom/beizi/fusion/zj;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/beizi/fusion/zj$d;)V
    .locals 1

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/beizi/fusion/v6;->a(Landroid/app/Application;)V

    .line 6
    invoke-static {p1}, Lcom/beizi/fusion/t6;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/beizi/fusion/zj$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/beizi/fusion/zj$b;-><init>(Lcom/beizi/fusion/zj;Landroid/content/Context;Lcom/beizi/fusion/zj$d;)V

    invoke-static {p1, v0}, Lcom/beizi/fusion/t6;->a(Landroid/content/Context;Lcom/beizi/fusion/mc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/beizi/fusion/rm;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58Honor OAID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAIDHelper"

    invoke-static {v1, v0}, Lcom/beizi/fusion/rm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p2, p0, Lcom/beizi/fusion/zj;->b:Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/beizi/fusion/g3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {}, Lcom/beizi/fusion/t5;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HONOR_OAID_CIP"

    invoke-static {p1, v0, v1, p2}, Lcom/beizi/fusion/t5;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u4fdd\u5b58 OAID: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "OAIDHelper"

    invoke-static {v0, p3}, Lcom/beizi/fusion/rm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/beizi/fusion/zj;->a:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/beizi/fusion/g3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {}, Lcom/beizi/fusion/t5;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "OAID_CIP"

    invoke-static {p1, p3, v0, p2}, Lcom/beizi/fusion/t5;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/zj;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/zj;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/zj;Landroid/content/Context;Lcom/beizi/fusion/zj$d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/zj;->a(Landroid/content/Context;Lcom/beizi/fusion/zj$d;)V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/zj;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/fusion/zj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "HONOR"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "oaid_limit_state"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "oaid"

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/zj;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/zj;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/beizi/fusion/t5;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HONOR_OAID_CIP"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/beizi/fusion/t5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/beizi/fusion/g3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/zj;->b:Ljava/lang/String;

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/zj;->b:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/zj;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/beizi/fusion/t5;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "OAID_CIP"

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-static {p1, v0, v1, v2}, Lcom/beizi/fusion/t5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/beizi/fusion/g3;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/beizi/fusion/zj;->a:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/zj;->a:Ljava/lang/String;

    .line 28
    .line 29
    return-object p1
.end method

.method public declared-synchronized d(Landroid/content/Context;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/zj;->c:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/zj;->c:Z

    .line 8
    .line 9
    invoke-static {}, Lcom/beizi/fusion/fn;->a()Lcom/beizi/fusion/fn;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/x9;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/beizi/fusion/hb;

    .line 18
    .line 19
    new-instance v1, Lcom/beizi/fusion/zj$a;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/zj$a;-><init>(Lcom/beizi/fusion/zj;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/beizi/fusion/hb;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method
