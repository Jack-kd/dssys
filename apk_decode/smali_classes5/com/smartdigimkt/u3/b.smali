.class public final Lcom/smartdigimkt/u3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/smartdigimkt/u3/b;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/smartdigimkt/u3/a;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/smartdigimkt/u3/a;-><init>(Lcom/smartdigimkt/u3/b;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x7

    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/smartdigimkt/b4/e;->a(Ljava/lang/Runnable;JI)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static a()Lcom/smartdigimkt/u3/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartdigimkt/u3/b;->b:Lcom/smartdigimkt/u3/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/smartdigimkt/f3/a0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartdigimkt/u3/b;->b:Lcom/smartdigimkt/u3/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/smartdigimkt/u3/b;

    invoke-direct {v1}, Lcom/smartdigimkt/u3/b;-><init>()V

    sput-object v1, Lcom/smartdigimkt/u3/b;->b:Lcom/smartdigimkt/u3/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_1
    :goto_2
    sget-object v0, Lcom/smartdigimkt/u3/b;->b:Lcom/smartdigimkt/u3/b;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/smartdigimkt/u3/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    const-string v0, "sdm_adx_rp_sdk"

    const-string v1, "app_default_h5_zip_url"

    invoke-static {p1, v0, v1}, Lcom/smartdigimkt/c5/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartdigimkt/u3/b;->a:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/smartdigimkt/u3/b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
