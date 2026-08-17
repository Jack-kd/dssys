.class public final Lms/bz/bd/c/Pgl/u1;
.super Ljava/lang/Object;


# static fields
.field private static volatile hp:Lms/bz/bd/c/Pgl/u1;


# instance fields
.field private l:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lms/bz/bd/c/Pgl/u1;->l:Ljava/lang/Throwable;

    return-void
.end method

.method public static hp()Lms/bz/bd/c/Pgl/u1;
    .locals 2

    sget-object v0, Lms/bz/bd/c/Pgl/u1;->hp:Lms/bz/bd/c/Pgl/u1;

    if-nez v0, :cond_1

    const-class v0, Lms/bz/bd/c/Pgl/u1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms/bz/bd/c/Pgl/u1;->hp:Lms/bz/bd/c/Pgl/u1;

    if-nez v1, :cond_0

    new-instance v1, Lms/bz/bd/c/Pgl/u1;

    invoke-direct {v1}, Lms/bz/bd/c/Pgl/u1;-><init>()V

    sput-object v1, Lms/bz/bd/c/Pgl/u1;->hp:Lms/bz/bd/c/Pgl/u1;

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
    sget-object v0, Lms/bz/bd/c/Pgl/u1;->hp:Lms/bz/bd/c/Pgl/u1;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized l()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms/bz/bd/c/Pgl/u1;->l:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
