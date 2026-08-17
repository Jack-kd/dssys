.class public Lcom/alexmercerind/media_kit_video/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/reflect/Method;

.field public static final l:Ljava/lang/reflect/Method;

.field public static final m:Ljava/util/Set;

.field public static final n:Landroid/os/Handler;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public final e:Lcom/alexmercerind/media_kit_video/b;

.field public final f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

.field public final g:Landroid/view/Surface;

.field public final h:Ljava/lang/Object;

.field public volatile i:Z

.field public j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/alexmercerind/media_kit_video/e;->m:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/alexmercerind/media_kit_video/e;->n:Landroid/os/Handler;

    .line 22
    .line 23
    :try_start_0
    const-class v0, Lcom/alexmercerind/mediakitandroidhelper/MediaKitAndroidHelper;

    .line 24
    .line 25
    sget v1, Lcom/alexmercerind/mediakitandroidhelper/MediaKitAndroidHelper;->a:I

    .line 26
    .line 27
    const-string v1, "newGlobalObjectRef"

    .line 28
    .line 29
    const-class v2, Ljava/lang/Object;

    .line 30
    .line 31
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sput-object v1, Lcom/alexmercerind/media_kit_video/e;->k:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    const-string v2, "deleteGlobalObjectRef"

    .line 42
    .line 43
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/alexmercerind/media_kit_video/e;->l:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    const-string v2, "Failed to initialize com.alexmercerind.media_kit_video.VideoOutput."

    .line 67
    .line 68
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method public constructor <init>(Lio/flutter/view/TextureRegistry;Lcom/alexmercerind/media_kit_video/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/alexmercerind/media_kit_video/e;->a:I

    .line 6
    .line 7
    iput v0, p0, Lcom/alexmercerind/media_kit_video/e;->b:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/alexmercerind/media_kit_video/e;->c:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->h:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/alexmercerind/media_kit_video/e;->i:Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/alexmercerind/media_kit_video/e;->e:Lcom/alexmercerind/media_kit_video/b;

    .line 29
    .line 30
    invoke-interface {p1}, Lio/flutter/view/TextureRegistry;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/alexmercerind/media_kit_video/e;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 35
    .line 36
    new-instance p2, Landroid/view/Surface;

    .line 37
    .line 38
    invoke-interface {p1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/alexmercerind/media_kit_video/e;->g:Landroid/view/Surface;

    .line 46
    .line 47
    :try_start_0
    invoke-interface {p1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p2, p0, Lcom/alexmercerind/media_kit_video/e;->a:I

    .line 52
    .line 53
    iget v0, p0, Lcom/alexmercerind/media_kit_video/e;->b:I

    .line 54
    .line 55
    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    const-string p2, "VideoOutput"

    .line 61
    .line 62
    const-string v0, "init setDefaultBufferSize"

    .line 63
    .line 64
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/alexmercerind/media_kit_video/e;->e()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static synthetic a(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alexmercerind/media_kit_video/e;->b(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/alexmercerind/media_kit_video/e;->m:Ljava/util/Set;

    .line 9
    .line 10
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x3e8

    .line 26
    .line 27
    if-le v1, v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :try_start_0
    sget-object v0, Lcom/alexmercerind/media_kit_video/e;->l:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    const-string p1, "VideoOutput"

    .line 56
    .line 57
    const-string v0, "deleteGlobalObjectRef"

    .line 58
    .line 59
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static d(Ljava/lang/Object;)J
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/alexmercerind/media_kit_video/e;->k:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    check-cast p0, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-wide v0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    const-string v0, "VideoOutput"

    .line 24
    .line 25
    const-string v1, "newGlobalRef"

    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    return-wide v0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/alexmercerind/media_kit_video/e;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/alexmercerind/media_kit_video/e;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->h:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v2, Lcom/alexmercerind/media_kit_video/e;->n:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->g:Landroid/view/Surface;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_1
    move-exception v0

    .line 33
    const-string v1, "VideoOutput"

    .line 34
    .line 35
    const-string v2, "surface.release"

    .line 36
    .line 37
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 41
    .line 42
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$TextureEntry;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catchall_2
    move-exception v0

    .line 47
    const-string v1, "VideoOutput"

    .line 48
    .line 49
    const-string v2, "surfaceTextureEntry.release"

    .line 50
    .line 51
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void

    .line 55
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    throw v1
.end method

.method public e()V
    .locals 14

    .line 1
    iget-object v1, p0, Lcom/alexmercerind/media_kit_video/e;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/alexmercerind/media_kit_video/e;->i:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit v1

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iput-object v2, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v0, v2

    .line 21
    :goto_0
    iget-wide v2, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v6, v2, v4

    .line 26
    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    iput-wide v4, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move-wide v2, v4

    .line 33
    :goto_1
    iget-object v6, p0, Lcom/alexmercerind/media_kit_video/e;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 34
    .line 35
    invoke-interface {v6}, Lio/flutter/view/TextureRegistry$TextureEntry;->id()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    iput-wide v6, p0, Lcom/alexmercerind/media_kit_video/e;->c:J

    .line 40
    .line 41
    iget-object v6, p0, Lcom/alexmercerind/media_kit_video/e;->g:Landroid/view/Surface;

    .line 42
    .line 43
    invoke-static {v6}, Lcom/alexmercerind/media_kit_video/e;->d(Ljava/lang/Object;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    iput-wide v10, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 48
    .line 49
    iget-wide v8, p0, Lcom/alexmercerind/media_kit_video/e;->c:J

    .line 50
    .line 51
    iget v12, p0, Lcom/alexmercerind/media_kit_video/e;->a:I

    .line 52
    .line 53
    iget v13, p0, Lcom/alexmercerind/media_kit_video/e;->b:I

    .line 54
    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    sget-object v1, Lcom/alexmercerind/media_kit_video/e;->n:Landroid/os/Handler;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    cmp-long v0, v2, v4

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-static {v2, v3}, Lcom/alexmercerind/media_kit_video/e;->b(J)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/alexmercerind/media_kit_video/e;->e:Lcom/alexmercerind/media_kit_video/b;

    .line 71
    .line 72
    invoke-interface/range {v7 .. v13}, Lcom/alexmercerind/media_kit_video/b;->a(JJII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    const-string v1, "VideoOutput"

    .line 78
    .line 79
    const-string v2, "onTextureUpdate"

    .line 80
    .line 81
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw v0
.end method

.method public f()V
    .locals 11

    .line 1
    iget-object v1, p0, Lcom/alexmercerind/media_kit_video/e;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-wide v3, p0, Lcom/alexmercerind/media_kit_video/e;->c:J

    .line 5
    .line 6
    iget v7, p0, Lcom/alexmercerind/media_kit_video/e;->a:I

    .line 7
    .line 8
    iget v8, p0, Lcom/alexmercerind/media_kit_video/e;->b:I

    .line 9
    .line 10
    iget-wide v5, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 11
    .line 12
    const-wide/16 v9, 0x0

    .line 13
    .line 14
    cmp-long v0, v5, v9

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput-wide v9, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-wide v5, v9

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object v2, Lcom/alexmercerind/media_kit_video/e;->n:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 35
    .line 36
    :cond_1
    cmp-long v0, v5, v9

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/alexmercerind/media_kit_video/d;

    .line 41
    .line 42
    invoke-direct {v0, v5, v6}, Lcom/alexmercerind/media_kit_video/d;-><init>(J)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 46
    .line 47
    sget-object v2, Lcom/alexmercerind/media_kit_video/e;->n:Landroid/os/Handler;

    .line 48
    .line 49
    const-wide/16 v5, 0x1388

    .line 50
    .line 51
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object v2, p0, Lcom/alexmercerind/media_kit_video/e;->e:Lcom/alexmercerind/media_kit_video/b;

    .line 56
    .line 57
    const-wide/16 v5, 0x0

    .line 58
    .line 59
    invoke-interface/range {v2 .. v8}, Lcom/alexmercerind/media_kit_video/b;->a(JJII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    const-string v1, "VideoOutput"

    .line 65
    .line 66
    const-string v2, "onTextureUpdate(cleanup)"

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw v0
.end method

.method public g(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/alexmercerind/media_kit_video/e;->h(IIZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final h(IIZ)V
    .locals 11

    .line 1
    iget-object v1, p0, Lcom/alexmercerind/media_kit_video/e;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/alexmercerind/media_kit_video/e;->i:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    move-object p1, v0

    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    iget p3, p0, Lcom/alexmercerind/media_kit_video/e;->a:I

    .line 26
    .line 27
    if-ne p3, p1, :cond_1

    .line 28
    .line 29
    iget p3, p0, Lcom/alexmercerind/media_kit_video/e;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    if-ne p3, p2, :cond_1

    .line 32
    .line 33
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    return-void

    .line 35
    :catchall_1
    move-exception v0

    .line 36
    move-object p1, v0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :try_start_3
    iput p1, p0, Lcom/alexmercerind/media_kit_video/e;->a:I

    .line 39
    .line 40
    iput p2, p0, Lcom/alexmercerind/media_kit_video/e;->b:I

    .line 41
    .line 42
    iget-object p3, p0, Lcom/alexmercerind/media_kit_video/e;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 43
    .line 44
    invoke-interface {p3}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iput-object p2, p0, Lcom/alexmercerind/media_kit_video/e;->j:Ljava/lang/Runnable;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object p1, p2

    .line 60
    :goto_0
    iget-wide p2, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 61
    .line 62
    const-wide/16 v2, 0x0

    .line 63
    .line 64
    cmp-long v0, p2, v2

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iput-wide v2, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move-wide p2, v2

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 73
    .line 74
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$TextureEntry;->id()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    iput-wide v4, p0, Lcom/alexmercerind/media_kit_video/e;->c:J

    .line 79
    .line 80
    iget-object v0, p0, Lcom/alexmercerind/media_kit_video/e;->g:Landroid/view/Surface;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/alexmercerind/media_kit_video/e;->d(Ljava/lang/Object;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    iput-wide v7, p0, Lcom/alexmercerind/media_kit_video/e;->d:J

    .line 87
    .line 88
    iget-wide v5, p0, Lcom/alexmercerind/media_kit_video/e;->c:J

    .line 89
    .line 90
    iget v9, p0, Lcom/alexmercerind/media_kit_video/e;->a:I

    .line 91
    .line 92
    iget v10, p0, Lcom/alexmercerind/media_kit_video/e;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    sget-object v0, Lcom/alexmercerind/media_kit_video/e;->n:Landroid/os/Handler;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    cmp-long p1, p2, v2

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-static {p2, p3}, Lcom/alexmercerind/media_kit_video/e;->b(J)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/alexmercerind/media_kit_video/e;->e:Lcom/alexmercerind/media_kit_video/b;

    .line 110
    .line 111
    invoke-interface/range {v4 .. v10}, Lcom/alexmercerind/media_kit_video/b;->a(JJII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catchall_2
    move-exception v0

    .line 116
    move-object p1, v0

    .line 117
    const-string p2, "VideoOutput"

    .line 118
    .line 119
    const-string p3, "onTextureUpdate"

    .line 120
    .line 121
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :goto_2
    :try_start_6
    const-string p2, "VideoOutput"

    .line 126
    .line 127
    const-string p3, "setSurfaceSize"

    .line 128
    .line 129
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 134
    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 135
    throw p1
.end method
