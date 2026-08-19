.class public Lcom/ubix/ssp/ad/e/s/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/s/d;


# static fields
.field private static volatile a:Lcom/ubix/ssp/ad/e/s/d;

.field public static volatile b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ubix/ssp/ad/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ubix/ssp/ad/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ubix/ssp/ad/e/s/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ubix/ssp/ad/e/a0/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public h:Ljava/lang/String;

.field private i:Lcom/ubix/ssp/ad/e/s/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/s/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/s/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/s/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/s/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/s/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/s/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/s/b;->i:Lcom/ubix/ssp/ad/e/s/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/s/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;II)Lcom/ubix/ssp/ad/e/s/g/c;
    .locals 1

    .line 2
    new-instance v0, Lcom/ubix/ssp/ad/e/s/g/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/s/g/c;-><init>()V

    invoke-virtual {v0, p4}, Lcom/ubix/ssp/ad/e/s/g/c;->a(I)V

    invoke-virtual {v0, p5}, Lcom/ubix/ssp/ad/e/s/g/c;->b(I)V

    new-instance p5, Lcom/ubix/ssp/ad/e/s/g/a;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/e/s/g/a;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V

    invoke-virtual {v0, p5}, Lcom/ubix/ssp/ad/e/s/g/c;->a(Lcom/ubix/ssp/ad/e/s/g/a;)V

    return-object v0
.end method

.method public static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 3
    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;Z)V
    .locals 4

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p2, Lcom/ubix/ssp/ad/d/a;->d:Ljava/lang/String;

    const-string v3, "EVENT_REQUEST_ID"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/ubix/ssp/ad/d/a;->g:Ljava/lang/String;

    const-string v2, "EVENT_SLOT_ID"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ubix_tx_type"

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "EVENT_ATTRS"

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, ""

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    if-eqz p4, :cond_0

    const-string p3, "04010"

    :goto_0
    invoke-interface {p1, v0, p3, p2}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p3, "04011"

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/c;II)V
    .locals 2

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ubix/ssp/open/comm/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "service_intent_notify_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "service_intent_unique_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p4, Lcom/ubix/ssp/ad/e/s/b$a;

    invoke-direct {p4, p0, p2, v0, p3}, Lcom/ubix/ssp/ad/e/s/b$a;-><init>(Lcom/ubix/ssp/ad/e/s/b;Lcom/ubix/ssp/ad/e/s/g/c;Landroid/content/Intent;I)V

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p4, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V
    .locals 7

    .line 9
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/s/g/c;

    sget-object v1, Lcom/ubix/ssp/ad/e/s/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->a()Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance p2, Landroid/content/Intent;

    const-class p4, Lcom/ubix/ssp/open/comm/DownloadService;

    invoke-direct {p2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "service_intent_notify_id"

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "service_intent_unique_id"

    invoke-virtual {p2, p4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "service_intent_fellow_notify_ids"

    invoke-virtual {p2, p4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p3

    const-wide/16 p4, 0x0

    invoke-virtual {p3, p4, p5}, Lcom/ubix/ssp/ad/e/s/g/b;->a(J)V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p3

    const/16 p4, 0x2f

    invoke-virtual {p3, p4}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result p3

    const/16 p4, 0x2e

    if-ne p3, p4, :cond_1

    const-string p3, "ACTION_COMPLETE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result p3

    const/16 p4, 0x2c

    if-eq p3, p4, :cond_2

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->a()Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->runTask(Landroid/content/Intent;)V

    :cond_2
    const-string p3, "ACTION_BIND"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Intent;)Z

    return-void

    :cond_3
    invoke-direct {p0, p1, v0, p5, v6}, Lcom/ubix/ssp/ad/e/s/b;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/c;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_4
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/s/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;II)Lcom/ubix/ssp/ad/e/s/g/c;

    move-result-object p2

    sget-object p3, Lcom/ubix/ssp/ad/e/s/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/ubix/ssp/ad/e/s/b;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/c;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/s/b;Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/e/s/b;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static c()Lcom/ubix/ssp/ad/e/s/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->a:Lcom/ubix/ssp/ad/e/s/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/ubix/ssp/ad/e/s/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/s/b;->a:Lcom/ubix/ssp/ad/e/s/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/s/b;

    invoke-direct {v1}, Lcom/ubix/ssp/ad/e/s/b;-><init>()V

    sput-object v1, Lcom/ubix/ssp/ad/e/s/b;->a:Lcom/ubix/ssp/ad/e/s/d;

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
    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->a:Lcom/ubix/ssp/ad/e/s/d;

    return-object v0
.end method

.method private d(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public static d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ubix/ssp/ad/d/a;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/ubix/ssp/ad/e/s/g/c;
    .locals 2

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/s/g/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .line 4
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/e/s/b;->d(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/e/s/b;->a(I)Lcom/ubix/ssp/ad/e/s/g/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->a()Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->pauseTask(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/b;II)V
    .locals 7

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealInstall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "file is not a valid apk"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    const-wide/16 p3, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/ubix/ssp/ad/e/s/g/b;->a(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/s/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 8
    const-string v0, "delay_dp_time"

    const-string v4, "delay_dp_enable"

    const/4 v5, 0x1

    if-eqz p3, :cond_1

    iget-object v6, p3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v6, v6, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v8, v7, Lcom/ubix/ssp/ad/e/y/a/a$b;->l:I

    if-ne v8, v5, :cond_0

    iget v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b;->d:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/s/b;->h:Ljava/lang/String;

    const-string v8, "__CLICK_ID__"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v7

    iget-object v8, p3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    const/16 v9, 0x130

    invoke-virtual {v7, v8, v6, v9}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    :cond_1
    if-eqz p3, :cond_8

    :try_start_0
    iget-object v6, p3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v6, :cond_8

    iget v7, p3, Lcom/ubix/ssp/ad/d/a;->e:I

    const/16 v8, 0x9

    if-eq v7, v8, :cond_8

    iget-object v6, v6, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v7, 0x14

    const/4 v8, 0x0

    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    iget-object v10, v6, Lcom/ubix/ssp/ad/e/y/a/a$c;->q:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9, v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v8

    :goto_0
    :try_start_2
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    if-eqz v4, :cond_8

    iget-object v0, p3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Lcom/ubix/ssp/ad/e/a0/f;

    new-instance v9, Lcom/ubix/ssp/ad/d/l;

    invoke-direct {v9}, Lcom/ubix/ssp/ad/d/l;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v4, v9, v10}, Lcom/ubix/ssp/ad/e/a0/f;-><init>(Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {v4, v9, v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/16 v4, 0x16

    if-ne v0, v4, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move v5, v8

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :goto_5
    invoke-direct {p0, v0, p3, p4, v5}, Lcom/ubix/ssp/ad/e/s/b;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CountDownTool isPositive "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-nez v5, :cond_7

    const-string v0, "CountDownTool Start time"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-lez v7, :cond_8

    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v8, Lcom/ubix/ssp/ad/e/a0/g;

    int-to-long v4, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    invoke-direct {v8, v4, v5}, Lcom/ubix/ssp/ad/e/a0/g;-><init>(J)V

    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ubix/ssp/ad/e/s/b$b;

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ubix/ssp/ad/e/s/b$b;-><init>(Lcom/ubix/ssp/ad/e/s/b;Ljava/lang/String;Lcom/ubix/ssp/ad/d/a;Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a$c;)V

    invoke-virtual {v8, v0}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g$b;)V

    invoke-virtual {v8}, Lcom/ubix/ssp/ad/e/a0/g;->e()V

    goto :goto_7

    :cond_7
    sget-object v0, Lcom/ubix/ssp/ad/e/s/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_7
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ubix.ssp.open.comm.AdActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "path"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isSimple"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "nid"

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ubix/ssp/ad/d/a;I)V
    .locals 7

    .line 11
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v5, p2

    :try_start_0
    iget-object p2, p4, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v0, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget p2, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->d:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iput-object v5, p0, Lcom/ubix/ssp/ad/e/s/b;->h:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/k;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p2, Lcom/ubix/ssp/ad/e/s/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/s/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(I)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/s/b;->c(I)Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/e/s/b;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/e/s/b;->a(I)Lcom/ubix/ssp/ad/e/s/g/c;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ubix/ssp/open/comm/DownloadService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "service_intent_notify_id"

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "service_intent_unique_id"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/g/c;->a()Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->runTask(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public c(I)Lcom/ubix/ssp/ad/e/s/g/a;
    .locals 2

    .line 2
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/s/b;->a(I)Lcom/ubix/ssp/ad/e/s/g/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v1
.end method
