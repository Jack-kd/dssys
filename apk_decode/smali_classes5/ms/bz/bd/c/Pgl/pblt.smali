.class public final Lms/bz/bd/c/Pgl/pblt;
.super Ljava/lang/Object;


# instance fields
.field hp:Lms/bz/bd/c/Pgl/pblu;

.field private final jx:Landroid/content/Context;

.field l:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lms/bz/bd/c/Pgl/pblt$pgla;

    invoke-direct {v0, p0}, Lms/bz/bd/c/Pgl/pblt$pgla;-><init>(Lms/bz/bd/c/Pgl/pblt;)V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblt;->l:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pblt;->jx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final hp(Lms/bz/bd/c/Pgl/pblk$pblb;)V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x17

    new-array v7, v1, [B

    fill-array-data v7, :array_0

    const-wide/16 v4, 0x0

    const-string v6, "b59248"

    const v2, 0x1000001

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x27

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    const-wide/16 v5, 0x0

    const-string v7, "cd59bb"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lms/bz/bd/c/Pgl/pblt;->jx:Landroid/content/Context;

    iget-object v2, p0, Lms/bz/bd/c/Pgl/pblt;->l:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lms/bz/bd/c/Pgl/pblt;->hp:Lms/bz/bd/c/Pgl/pblu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lms/bz/bd/c/Pgl/pblu;->hp()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lms/bz/bd/c/Pgl/pblk$pblb;->hp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object p1, p0, Lms/bz/bd/c/Pgl/pblt;->jx:Landroid/content/Context;

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pblt;->l:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x70t
        0x38t
        0x47t
        0x8t
        0x11t
        0x3at
        0x68t
        0x5at
        0x6ct
        0x67t
        0x65t
        0x3et
        0x49t
        0x43t
        0x2t
        0x2bt
        0x72t
        0x11t
        0x7at
        0x74t
        0x7at
        0x34t
        0x4ft
    .end array-data

    :array_1
    .array-data 1
        0x71t
        0x69t
        0x4bt
        0x3t
        0x47t
        0x60t
        0x69t
        0xbt
        0x60t
        0x6ct
        0x64t
        0x6ft
        0x45t
        0x48t
        0x54t
        0x71t
        0x73t
        0x40t
        0x76t
        0x7ft
        0x7bt
        0x65t
        0x43t
        0x3t
        0x79t
        0x70t
        0x76t
        0x4ct
        0x67t
        0x6ct
        0x7bt
        0x62t
        0x75t
        0x48t
        0x4ft
        0x63t
        0x69t
        0x46t
        0x61t
    .end array-data
.end method
