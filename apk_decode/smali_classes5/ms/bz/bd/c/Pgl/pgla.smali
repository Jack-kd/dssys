.class public final Lms/bz/bd/c/Pgl/pgla;
.super Ljava/lang/Object;


# instance fields
.field public final hp:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final jx:Landroid/content/Context;

.field l:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pgla;->hp:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lms/bz/bd/c/Pgl/pgla$pgla;

    invoke-direct {v0, p0}, Lms/bz/bd/c/Pgl/pgla$pgla;-><init>(Lms/bz/bd/c/Pgl/pgla;)V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pgla;->l:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pgla;->jx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final hp(Lms/bz/bd/c/Pgl/pblk$pblb;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lms/bz/bd/c/Pgl/pgla;->jx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "718285"

    const/16 v1, 0x1d

    new-array v6, v1, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x1e

    new-array v7, v1, [B

    fill-array-data v7, :array_1

    const-wide/16 v4, 0x0

    const-string v6, "680053"

    const v2, 0x1000001

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const/16 v2, 0x1d

    new-array v8, v2, [B

    fill-array-data v8, :array_2

    const-wide/16 v5, 0x0

    const-string v7, "eaf91d"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x35

    new-array v9, v3, [B

    fill-array-data v9, :array_3

    const-wide/16 v6, 0x0

    const-string v8, "020696"

    const v4, 0x1000001

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lms/bz/bd/c/Pgl/pgla;->jx:Landroid/content/Context;

    iget-object v2, p0, Lms/bz/bd/c/Pgl/pgla;->l:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/pgla;->hp:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v1, Lms/bz/bd/c/Pgl/pblb;

    invoke-direct {v1, v0}, Lms/bz/bd/c/Pgl/pblb;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1}, Lms/bz/bd/c/Pgl/pblb;->hp()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lms/bz/bd/c/Pgl/pblk$pblb;->hp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pgla;->jx:Landroid/content/Context;

    iget-object v1, p0, Lms/bz/bd/c/Pgl/pgla;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw p1

    :catch_1
    :cond_0
    :goto_0
    iget-object p1, p0, Lms/bz/bd/c/Pgl/pgla;->jx:Landroid/content/Context;

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pgla;->l:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x25t
        0x3ct
        0x46t
        0x8t
        0x6t
        0x31t
        0x21t
        0x3t
        0x27t
        0x6ft
        0x35t
        0x32t
        0x5t
        0x75t
        0x12t
        0x32t
        0x24t
        0x1ct
        0x6ct
        0x6ft
        0x23t
        0x3dt
        0x5ft
        0x47t
        0x15t
        0x3bt
        0x10t
        0x39t
        0x4dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x24t
        0x35t
        0x4et
        0xat
        0xbt
        0x37t
        0x20t
        0xat
        0x2ft
        0x6dt
        0x34t
        0x3bt
        0xdt
        0x45t
        0x9t
        0x30t
        0x3ct
        0x16t
        0x6ft
        0x2et
        0x6t
        0x19t
        0x60t
        0x61t
        0x39t
        0x17t
        0xat
        0x3dt
        0x48t
        0x44t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x6ct
        0x18t
        0x3t
        0xft
        0x60t
        0x73t
        0x53t
        0x79t
        0x64t
        0x67t
        0x62t
        0x5bt
        0x7et
        0x1bt
        0x63t
        0x76t
        0x4ct
        0x32t
        0x64t
        0x71t
        0x6dt
        0x1t
        0x4ct
        0x1ct
        0x6at
        0x42t
        0x69t
        0x13t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x22t
        0x3ft
        0x4et
        0xct
        0x7t
        0x32t
        0x26t
        0x0t
        0x2ft
        0x6bt
        0x32t
        0x31t
        0xdt
        0x71t
        0x13t
        0x31t
        0x23t
        0x1ft
        0x64t
        0x6bt
        0x24t
        0x3et
        0x57t
        0x43t
        0x14t
        0x38t
        0x17t
        0x3at
        0x45t
        0x28t
        0x12t
        0x25t
        0x53t
        0x52t
        0xat
        0x24t
        0x3et
        0x16t
        0x6ft
        0x72t
        0x20t
        0x22t
        0x5at
        0x66t
        0x2ft
        0x5t
        0x0t
        0x16t
        0x73t
        0x70t
        0x28t
        0x33t
        0x46t
    .end array-data
.end method
