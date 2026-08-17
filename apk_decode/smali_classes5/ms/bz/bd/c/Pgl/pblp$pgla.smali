.class final Lms/bz/bd/c/Pgl/pblp$pgla;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bz/bd/c/Pgl/pblp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hp:Lms/bz/bd/c/Pgl/pblp;


# direct methods
.method public constructor <init>(Lms/bz/bd/c/Pgl/pblp;)V
    .locals 0

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pblp$pgla;->hp:Lms/bz/bd/c/Pgl/pblp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lms/bz/bd/c/Pgl/pblp$pgla;->hp:Lms/bz/bd/c/Pgl/pblp;

    iget-object p1, p1, Lms/bz/bd/c/Pgl/pblp;->hp:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
