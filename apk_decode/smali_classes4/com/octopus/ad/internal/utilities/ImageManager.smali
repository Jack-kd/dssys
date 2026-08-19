.class public Lcom/octopus/ad/internal/utilities/ImageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;,
        Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/octopus/ad/internal/utilities/ImageManager;

.field private static mContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final handler:Landroid/os/Handler;

.field private final imageCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/LruCache;

    .line 12
    .line 13
    const/high16 v1, 0x400000

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager;->imageCache:Landroidx/collection/LruCache;

    .line 19
    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager;->handler:Landroid/os/Handler;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic access$000(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroidx/collection/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/utilities/ImageManager;->imageCache:Landroidx/collection/LruCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/octopus/ad/internal/utilities/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/utilities/ImageManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/utilities/ImageManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/ref/SoftReference;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/utilities/ImageManager;->mContext:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    return-object v0
.end method

.method private static getInstance()Lcom/octopus/ad/internal/utilities/ImageManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/utilities/ImageManager;->instance:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/octopus/ad/internal/utilities/ImageManager;->instance:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/octopus/ad/internal/utilities/ImageManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/octopus/ad/internal/utilities/ImageManager;->instance:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/octopus/ad/internal/utilities/ImageManager;->instance:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 27
    .line 28
    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/ref/SoftReference;

    .line 10
    .line 11
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sput-object p0, Lcom/octopus/ad/internal/utilities/ImageManager;->mContext:Ljava/lang/ref/SoftReference;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/octopus/ad/internal/utilities/ImageManager;->mContext:Ljava/lang/ref/SoftReference;

    .line 29
    .line 30
    :goto_0
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->getInstance()Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/utilities/ImageManager;->mContext:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/utilities/ImageManager$1;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2}, Lcom/octopus/ad/internal/utilities/ImageManager$1;-><init>(Lcom/octopus/ad/internal/utilities/ImageManager;Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnThreadPool(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;-><init>(Lcom/octopus/ad/internal/utilities/ImageManager;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
