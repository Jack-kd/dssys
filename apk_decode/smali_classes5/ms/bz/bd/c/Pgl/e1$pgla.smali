.class final Lms/bz/bd/c/Pgl/e1$pgla;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bz/bd/c/Pgl/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hp:Lms/bz/bd/c/Pgl/e1;


# direct methods
.method public constructor <init>(Lms/bz/bd/c/Pgl/e1;)V
    .locals 0

    iput-object p1, p0, Lms/bz/bd/c/Pgl/e1$pgla;->hp:Lms/bz/bd/c/Pgl/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lms/bz/bd/c/Pgl/e1$pgla;->hp:Lms/bz/bd/c/Pgl/e1;

    new-instance v0, Lms/bz/bd/c/Pgl/f1;

    invoke-direct {v0, p2}, Lms/bz/bd/c/Pgl/f1;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lms/bz/bd/c/Pgl/e1;->hp(Lms/bz/bd/c/Pgl/e1;Lms/bz/bd/c/Pgl/f1;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lms/bz/bd/c/Pgl/e1$pgla;->hp:Lms/bz/bd/c/Pgl/e1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lms/bz/bd/c/Pgl/e1;->hp(Lms/bz/bd/c/Pgl/e1;Lms/bz/bd/c/Pgl/f1;)V

    return-void
.end method
