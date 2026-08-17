.class final Lms/bz/bd/c/Pgl/pblt$pgla;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bz/bd/c/Pgl/pblt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hp:Lms/bz/bd/c/Pgl/pblt;


# direct methods
.method public constructor <init>(Lms/bz/bd/c/Pgl/pblt;)V
    .locals 0

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pblt$pgla;->hp:Lms/bz/bd/c/Pgl/pblt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lms/bz/bd/c/Pgl/pblt$pgla;->hp:Lms/bz/bd/c/Pgl/pblt;

    new-instance v0, Lms/bz/bd/c/Pgl/pblu;

    invoke-direct {v0, p2}, Lms/bz/bd/c/Pgl/pblu;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lms/bz/bd/c/Pgl/pblt;->hp:Lms/bz/bd/c/Pgl/pblu;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
