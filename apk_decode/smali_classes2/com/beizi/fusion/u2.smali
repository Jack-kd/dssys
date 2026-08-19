.class public Lcom/beizi/fusion/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/beizi/fusion/u2;

.field private static d:Ljava/util/List;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/beizi/fusion/u2;->d:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/u2;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/u2;->b:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/u2;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/beizi/fusion/u2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/beizi/fusion/u2;->b:Z

    return p1
.end method

.method public static declared-synchronized b()Lcom/beizi/fusion/u2;
    .locals 3

    const-class v0, Lcom/beizi/fusion/u2;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/beizi/fusion/u2;->c:Lcom/beizi/fusion/u2;

    if-nez v1, :cond_0

    .line 3
    const-class v1, Lcom/beizi/fusion/u2;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance v2, Lcom/beizi/fusion/u2;

    invoke-direct {v2}, Lcom/beizi/fusion/u2;-><init>()V

    sput-object v2, Lcom/beizi/fusion/u2;->c:Lcom/beizi/fusion/u2;

    .line 5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    sget-object v1, Lcom/beizi/fusion/u2;->c:Lcom/beizi/fusion/u2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static synthetic b(Lcom/beizi/fusion/u2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/beizi/fusion/u2;->a:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiInitCallBack;)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/beizi/fusion/u2;->a:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_2

    .line 4
    invoke-interface {p3}, Lcom/beizi/fusion/BeiZiInitCallBack;->success()V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    sget-object v0, Lcom/beizi/fusion/u2;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-boolean p3, p0, Lcom/beizi/fusion/u2;->b:Z

    if-eqz p3, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lcom/beizi/fusion/u2;->b:Z

    .line 8
    new-instance p3, Lcom/beizi/fusion/v$b;

    invoke-direct {p3, p2}, Lcom/beizi/fusion/v$b;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beizi/fusion/q1;->f()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/beizi/fusion/v$b;->a(Ljava/util/Map;)Lcom/beizi/fusion/v$b;

    .line 10
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getTransferProtocol()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/beizi/fusion/v$b;->a(Z)Lcom/beizi/fusion/v$b;

    .line 11
    new-instance p2, Lcom/beizi/fusion/u2$a;

    invoke-direct {p2, p0, p1}, Lcom/beizi/fusion/u2$a;-><init>(Lcom/beizi/fusion/u2;Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Lcom/beizi/fusion/v$b;->a(Lcom/beizi/fusion/r9;)Lcom/beizi/fusion/v$b;

    .line 12
    invoke-static {}, Lcom/beizi/fusion/c;->a()Lcom/beizi/fusion/c;

    move-result-object p2

    invoke-virtual {p3}, Lcom/beizi/fusion/v$b;->a()Lcom/beizi/fusion/v;

    move-result-object p3

    new-instance v0, Lcom/beizi/fusion/u2$b;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/u2$b;-><init>(Lcom/beizi/fusion/u2;)V

    invoke-virtual {p2, p1, p3, v0}, Lcom/beizi/fusion/c;->a(Landroid/content/Context;Lcom/beizi/fusion/v;Lcom/beizi/fusion/sc;)V

    return-void
.end method
