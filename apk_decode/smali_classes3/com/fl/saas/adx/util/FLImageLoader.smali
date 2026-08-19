.class public Lcom/fl/saas/adx/util/FLImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;,
        Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;,
        Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;,
        Lcom/fl/saas/adx/util/FLImageLoader$LastModifiedComparator;,
        Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadSuccessListener;,
        Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;,
        Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;,
        Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;,
        Lcom/fl/saas/adx/util/FLImageLoader$OnGifLoadListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE_RATIO:F = 0.005f

.field private static final CLEANUP_THRESHOLD_RATIO:F = 0.9f

.field private static final DEFAULT_CLEANUP_THRESHOLD:J = 0xb400000L

.field private static final DEFAULT_MAX_DISK_CACHE_SIZE:J = 0xc800000L

.field private static final TAG:Ljava/lang/String; = "FLImageLoader"

.field private static volatile instance:Lcom/fl/saas/adx/util/FLImageLoader;


# instance fields
.field private bitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapLoadTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDir:Ljava/io/File;

.field private cleanupThreshold:J

.field private defaultImageResId:I

.field private enableDiskCache:Z

.field private enableMemoryCache:Z

.field private errorImageResId:I

.field private forceArgb8888:Z

.field private gifFileCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private gifFirstFrameCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Landroid/os/Handler;

.field private maxDiskCacheSize:J

.field private taskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->defaultImageResId:I

    iput v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->errorImageResId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableDiskCache:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableMemoryCache:Z

    iput-boolean v1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->forceArgb8888:Z

    const-wide/32 v0, 0xc800000

    iput-wide v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->maxDiskCacheSize:J

    const-wide/32 v0, 0xb400000

    iput-wide v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupThreshold:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->initMemoryCache()V

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->initDiskCache(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->calculateCacheSizeLimits()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;->onBitmapLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const-string p1, "FLImageLoader"

    .line 7
    .line 8
    const-string p2, "Error in onBitmapLoaded callback"

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/util/FLImageLoader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableDiskCache:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->addGifFirstFrameToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDisplayGif(Landroid/widget/ImageView;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetErrorImage(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnSuccess(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnError(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDisplayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/fl/saas/adx/util/FLImageLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->checkAndCleanupDiskCacheIfNeeded()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoaded(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoadFailed(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->saveToDiskCache(Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/util/FLImageLoader;[B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->decodeGifFirstFrame([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->checkAndFixBitmapConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/fl/saas/adx/util/FLImageLoader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableMemoryCache:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->addGifToMemoryCache(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p2, "FLImageLoader"

    const-string v0, "Error adding bitmap to memory cache"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private addGifFirstFrameToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFirstFrameCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFirstFrameCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p2, "FLImageLoader"

    const-string v0, "Error adding GIF first frame to memory cache"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private addGifToMemoryCache(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFileCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFileCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p2, "FLImageLoader"

    const-string v0, "Error adding GIF to memory cache"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget p0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->defaultImageResId:I

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    const-string p1, "FLImageLoader"

    .line 12
    .line 13
    const-string v0, "Error setting default image"

    .line 14
    .line 15
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :goto_0
    const-string p3, "FLImageLoader"

    .line 32
    .line 33
    const-string v0, "Error displaying bitmap"

    .line 34
    .line 35
    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetErrorImage(Landroid/widget/ImageView;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private calculateCacheSizeLimits()V
    .locals 10

    const-wide/32 v0, 0xb400000

    const-wide/32 v2, 0xc800000

    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/util/FLImageLoader;->getAvailableStorageSpace()J

    move-result-wide v4

    invoke-static {}, Lcom/fl/saas/adx/util/FLImageLoader;->getTotalStorageSpace()J

    move-result-wide v6

    invoke-direct {p0, v4, v5}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;

    cmp-long v8, v4, v2

    if-gez v8, :cond_0

    long-to-float v6, v6

    const v7, 0x3ba3d70a    # 0.005f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    const-wide/16 v8, 0x5

    mul-long/2addr v4, v8

    const-wide/16 v8, 0xa

    div-long/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fl/saas/adx/util/FLImageLoader;->maxDiskCacheSize:J

    long-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v4, v5

    float-to-long v4, v4

    iput-wide v4, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupThreshold:J

    iget-wide v4, p0, Lcom/fl/saas/adx/util/FLImageLoader;->maxDiskCacheSize:J

    invoke-direct {p0, v4, v5}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;

    iget-wide v4, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupThreshold:J

    invoke-direct {p0, v4, v5}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v4

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->maxDiskCacheSize:J

    iput-wide v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupThreshold:J

    iget-wide v4, p0, Lcom/fl/saas/adx/util/FLImageLoader;->maxDiskCacheSize:J

    invoke-direct {p0, v4, v5}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;

    iget-wide v4, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupThreshold:J

    invoke-direct {p0, v4, v5}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v5, "FLImageLoader"

    const-string v6, "Error calculating cache size limits, using defaults"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-wide v2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->maxDiskCacheSize:J

    iput-wide v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupThreshold:J

    return-void
.end method

.method private calculateCurrentCacheSize()J
    .locals 7

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v1, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v1
.end method

.method private declared-synchronized checkAndCleanupDiskCacheIfNeeded()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->calculateCurrentCacheSize()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getCurrentCleanupThreshold()J

    move-result-wide v2

    invoke-direct {p0, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupDiskCache(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "FLImageLoader"

    const-string v2, "Error checking disk cache size"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private checkAndFixBitmapConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".webp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->forceArgb8888:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p2, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->fixWebpTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eq p2, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    return-object p1

    :goto_1
    const-string v0, "FLImageLoader"

    const-string v1, "Error checking and fixing bitmap config"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-object p1
.end method

.method private declared-synchronized cleanupDiskCache(J)V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v7, v4

    :goto_0
    if-ge v7, v3, :cond_3

    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v10, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-direct/range {v10 .. v15}, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v5, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/fl/saas/adx/util/FLImageLoader$LastModifiedComparator;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/fl/saas/adx/util/FLImageLoader$LastModifiedComparator;-><init>(Lcom/fl/saas/adx/util/FLImageLoader$1;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_4
    :goto_2
    if-ge v4, v0, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;

    cmp-long v7, v5, p1

    if-gtz v7, :cond_5

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_4

    sub-long/2addr v5, v8

    invoke-virtual {v3}, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;->getFileName()Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;

    goto :goto_2

    :cond_6
    :goto_3
    invoke-direct {v1, v5, v6}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_2
    const-string v2, "FLImageLoader"

    const-string v3, "Error cleaning up disk cache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static synthetic d(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;->onBitmapLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const-string p1, "FLImageLoader"

    .line 7
    .line 8
    const-string p2, "Error in onBitmapLoadFailed callback"

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private decodeGifFirstFrame(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const-string v0, "FLImageLoader"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :goto_0
    const-string v2, "Error decoding GIF first frame"

    :goto_1
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :goto_2
    const-string v3, "Out of memory decoding GIF first frame"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    const-string v2, "Error decoding GIF first frame with sample size 2"

    goto :goto_1

    :cond_1
    :goto_3
    return-object v1
.end method

.method private decodeGifFirstFrame([B)Landroid/graphics/Bitmap;
    .locals 5

    .line 2
    const-string v0, "FLImageLoader"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v4, p1

    invoke-static {p1, v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :goto_0
    const-string v2, "Error decoding GIF first frame from byte array"

    :goto_1
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :goto_2
    const-string v4, "Out of memory decoding GIF first frame from byte array"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x2

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v4, p1

    invoke-static {p1, v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    const-string v2, "Error decoding GIF first frame with sample size 2"

    goto :goto_1

    :cond_1
    :goto_3
    return-object v1
.end method

.method public static synthetic e(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget p0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->errorImageResId:I

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    const-string p1, "FLImageLoader"

    .line 12
    .line 13
    const-string v0, "Error setting error image"

    .line 14
    .line 15
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const-string p1, "FLImageLoader"

    .line 7
    .line 8
    const-string p2, "Error in onError callback"

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private fixWebpTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "FLImageLoader"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :goto_0
    const-string v2, "Error fixing WebP transparency"

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :goto_2
    const-string v2, "Out of memory fixing WebP transparency"

    goto :goto_1

    :cond_2
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    long-to-double p1, p1

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1fKB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    long-to-double p1, p1

    if-gez v0, :cond_2

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1fMB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1fGB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic g(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const-string p1, "FLImageLoader"

    .line 7
    .line 8
    const-string p2, "Error in onSuccess callback"

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static getAvailableStorageSpace()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long/2addr v3, v1

    return-wide v3

    :catchall_0
    move-exception v0

    const-string v1, "FLImageLoader"

    const-string v2, "Error getting available storage space"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDeleteFile(Ljava/io/File;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_0
    const-string v0, "FLImageLoader"

    const-string v2, "Error getting bitmap from disk cache"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v1
.end method

.method private getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "FLImageLoader"

    const-string v1, "Error getting bitmap from memory cache"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCacheFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, ".bmp"

    const-string v1, ".gif"

    const-string v2, ".webp"

    const-string v3, ".png"

    const-string v4, "FLImageLoader"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/16 v10, 0x30

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, ".jpg"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v0, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    move-object v7, v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_3
    const-string v0, "Error generating cache filename"

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "error.cache"

    return-object p1

    :goto_4
    const-string v1, "MD5 algorithm not available"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cache"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    const-string v0, "Error generating fallback filename"

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "unknown.cache"

    return-object p1

    :cond_7
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCurrentCleanupThreshold()J
    .locals 4

    invoke-static {}, Lcom/fl/saas/adx/util/FLImageLoader;->getAvailableStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0xc800000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupThreshold:J

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xb400000

    return-wide v0
.end method

.method private getGifFirstFrameFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFirstFrameCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "FLImageLoader"

    const-string v1, "Error getting GIF first frame from memory cache"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGifFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDeleteFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    return-object v0

    :goto_0
    const-string v0, "FLImageLoader"

    const-string v2, "Error getting GIF from disk cache"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v1
.end method

.method private getGifFromMemoryCache(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFileCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "FLImageLoader"

    const-string v1, "Error getting GIF from memory cache"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/util/FLImageLoader;->instance:Lcom/fl/saas/adx/util/FLImageLoader;

    if-nez v0, :cond_3

    const-class v0, Lcom/fl/saas/adx/util/FLImageLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/util/FLImageLoader;->instance:Lcom/fl/saas/adx/util/FLImageLoader;

    if-nez v1, :cond_2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_1
    new-instance v1, Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/util/FLImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fl/saas/adx/util/FLImageLoader;->instance:Lcom/fl/saas/adx/util/FLImageLoader;

    :cond_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    sget-object p0, Lcom/fl/saas/adx/util/FLImageLoader;->instance:Lcom/fl/saas/adx/util/FLImageLoader;

    return-object p0
.end method

.method public static getTotalStorageSpace()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long/2addr v3, v1

    return-wide v3

    :catchall_0
    move-exception v0

    const-string v1, "FLImageLoader"

    const-string v2, "Error getting total storage space"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static synthetic h(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "FLImageLoader"

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_4

    .line 17
    .line 18
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    goto :goto_4

    .line 27
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    const/16 v1, 0x1c

    .line 30
    .line 31
    if-lt p2, v1, :cond_2

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Lx/a;->a(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lx/b;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p2}, Lx/e;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_0
    :try_start_2
    const-string v1, "Error loading GIF on Android P+"

    .line 65
    .line 66
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->decodeGifFirstFrame(Ljava/io/File;)Landroid/graphics/Bitmap;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_1
    move-exception p2

    .line 80
    goto :goto_3

    .line 81
    :cond_2
    invoke-direct {p0, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->decodeGifFirstFrame(Ljava/io/File;)Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_2
    const/4 p2, 0x0

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_3
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetErrorImage(Landroid/widget/ImageView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :goto_3
    const-string p3, "Error displaying GIF"

    .line 98
    .line 99
    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetErrorImage(Landroid/widget/ImageView;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_4
    return-void
.end method

.method private initDiskCache(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "image_cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string v0, "FLImageLoader"

    const-string v1, "Error initializing disk cache"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    return-void
.end method

.method private initMemoryCache()V
    .locals 7

    const/16 v0, 0x100

    const/16 v1, 0x200

    const/16 v2, 0x400

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    long-to-int v3, v3

    div-int/lit8 v4, v3, 0x8

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v5, v3, 0x10

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v3, v3, 0x20

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v6, Lcom/fl/saas/adx/util/FLImageLoader$1;

    invoke-direct {v6, p0, v4}, Lcom/fl/saas/adx/util/FLImageLoader$1;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;I)V

    iput-object v6, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapCache:Landroid/util/LruCache;

    new-instance v4, Lcom/fl/saas/adx/util/FLImageLoader$2;

    invoke-direct {v4, p0, v5}, Lcom/fl/saas/adx/util/FLImageLoader$2;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;I)V

    iput-object v4, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFileCache:Landroid/util/LruCache;

    new-instance v4, Lcom/fl/saas/adx/util/FLImageLoader$3;

    invoke-direct {v4, p0, v3}, Lcom/fl/saas/adx/util/FLImageLoader$3;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;I)V

    iput-object v4, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFirstFrameCache:Landroid/util/LruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    const-string v4, "FLImageLoader"

    const-string v5, "Error initializing memory cache"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/util/LruCache;

    invoke-direct {v3, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v3, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapCache:Landroid/util/LruCache;

    new-instance v2, Landroid/util/LruCache;

    invoke-direct {v2, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFileCache:Landroid/util/LruCache;

    new-instance v1, Landroid/util/LruCache;

    invoke-direct {v1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFirstFrameCache:Landroid/util/LruCache;

    return-void
.end method

.method private loadBitmapFromNetwork(Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->addListener(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    iget-object p2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v0, "FLImageLoader"

    const-string v1, "Error starting bitmap network load"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error starting load: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoadFailed(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadBitmapImageInternal(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableMemoryCache:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDisplayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {p0, p3, p2, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnSuccess(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/FLImageLoader$6;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/util/FLImageLoader$6;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;)V

    :goto_0
    invoke-virtual {v0, p2, v1}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Lcom/fl/saas/S;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableDiskCache:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDisplayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p3, p2, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnSuccess(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/FLImageLoader$7;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/util/FLImageLoader$7;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadFromNetwork(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v1, "FLImageLoader"

    const-string v2, "Error in loadBitmapImageInternal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetErrorImage(Landroid/widget/ImageView;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading bitmap: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnError(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadBitmapOnlyInternal(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableMemoryCache:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoaded(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/FLImageLoader$10;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/util/FLImageLoader$10;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;)V

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Lcom/fl/saas/S;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableDiskCache:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoaded(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/FLImageLoader$11;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/util/FLImageLoader$11;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmapFromNetwork(Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v1, "FLImageLoader"

    const-string v2, "Error in loadBitmapOnlyInternal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading bitmap only: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoadFailed(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadFromNetwork(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    :try_start_1
    iget-object p3, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p3, p4}, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;->addListener(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p3, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :try_start_2
    new-instance v0, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V

    iget-object p1, v1, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    :goto_0
    move-object p3, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    goto :goto_0

    :goto_1
    const-string p1, "FLImageLoader"

    const-string p2, "Error starting network load"

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetErrorImage(Landroid/widget/ImageView;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error starting load: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v5, v3, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnError(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadGifBitmapInternal(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableMemoryCache:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFirstFrameFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoaded(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/FLImageLoader$12;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/util/FLImageLoader$12;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;)V

    invoke-virtual {v0, p1, v1}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Lcom/fl/saas/S;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableDiskCache:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->decodeGifFirstFrame(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->addGifFirstFrameToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoaded(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v2, Lcom/fl/saas/adx/util/FLImageLoader$13;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/util/FLImageLoader$13;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;)V

    invoke-virtual {v0, p1, v2}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Lcom/fl/saas/S;)V

    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmapFromNetwork(Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v1, "FLImageLoader"

    const-string v2, "Error in loadGifBitmapInternal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading GIF bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoadFailed(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadGifImageInternal(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableMemoryCache:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFirstFrameFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFromMemoryCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v2, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDisplayGif(Landroid/widget/ImageView;Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p3, p2, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnSuccess(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/FLImageLoader$8;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/util/FLImageLoader$8;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;)V

    :goto_0
    invoke-virtual {v0, p2, v1}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Lcom/fl/saas/S;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableDiskCache:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->decodeGifFirstFrame(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDisplayGif(Landroid/widget/ImageView;Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->addGifToMemoryCache(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p2, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->addGifFirstFrameToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p3, p2, v2, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnSuccess(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/util/FLImageLoader$9;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/util/FLImageLoader$9;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadFromNetwork(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v1, "FLImageLoader"

    const-string v2, "Error in loadGifImageInternal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetErrorImage(Landroid/widget/ImageView;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading GIF: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnError(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private safeCallBitmapLoadFailed(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/util/p;

    invoke-direct {v1, p1, p2, p3}, Lcom/fl/saas/adx/util/p;-><init>(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "FLImageLoader"

    const-string p3, "Error posting onBitmapLoadFailed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private safeCallBitmapLoaded(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/util/q;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/fl/saas/adx/util/q;-><init>(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "FLImageLoader"

    const-string p3, "Error posting onBitmapLoaded"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private safeCallOnError(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/util/o;

    invoke-direct {v1, p1, p2, p3}, Lcom/fl/saas/adx/util/o;-><init>(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "FLImageLoader"

    const-string p3, "Error posting onError"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private safeCallOnSuccess(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/util/r;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/fl/saas/adx/util/r;-><init>(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "FLImageLoader"

    const-string p3, "Error posting onSuccess"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private safeDeleteFile(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "FLImageLoader"

    const-string v1, "Error deleting file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private safeDisplayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/util/n;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/fl/saas/adx/util/n;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "FLImageLoader"

    const-string p3, "Error posting display bitmap"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private safeDisplayGif(Landroid/widget/ImageView;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/util/k;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/fl/saas/adx/util/k;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "FLImageLoader"

    const-string p3, "Error posting display GIF"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private safeSetDefaultImage(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->defaultImageResId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/util/l;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/util/l;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "FLImageLoader"

    const-string v1, "Error posting set default image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private safeSetErrorImage(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->errorImageResId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/util/m;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/util/m;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "FLImageLoader"

    const-string v1, "Error posting set error image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private saveToDiskCache(Ljava/lang/String;[B)V
    .locals 5

    const-string v0, "Error closing stream"

    const-string v1, "FLImageLoader"

    iget-boolean v2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableDiskCache:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    array-length v2, p2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    if-nez v2, :cond_0

    goto :goto_5

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->checkAndCleanupDiskCacheIfNeeded()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_5

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    array-length p2, p2

    int-to-long v2, p2

    invoke-direct {p0, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->formatSize(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p2

    goto :goto_2

    :goto_1
    const/4 p2, 0x0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_2
    :try_start_3
    const-string v2, "Error saving to disk cache"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :goto_3
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catchall_3
    move-exception p2

    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    throw p2

    :cond_4
    :goto_5
    return-void
.end method


# virtual methods
.method public cancelAllLoads()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    const-string v1, "FLImageLoader"

    const-string v2, "Error canceling all loads"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public cancelLoad(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapLoadTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    const-string v0, "FLImageLoader"

    const-string v1, "Error canceling load"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public cleanupDiskCacheToSize(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupDiskCache(J)V

    return-void
.end method

.method public clearAllCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->clearMemoryCache()V

    invoke-virtual {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->clearDiskCache()V

    return-void
.end method

.method public clearDiskCache()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDeleteFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    const-string v1, "FLImageLoader"

    const-string v2, "Error clearing disk cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public clearMemoryCache()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFileCache:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFirstFrameCache:Landroid/util/LruCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_1
    const-string v1, "FLImageLoader"

    const-string v2, "Error clearing memory cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public forceCleanupDiskCache()V
    .locals 2

    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getCurrentCleanupThreshold()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->cleanupDiskCache(J)V

    return-void
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFirstFrameFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->decodeGifFirstFrame(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_0
    const-string v1, "FLImageLoader"

    const-string v2, "Error getting cached bitmap"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v0
.end method

.method public getCachedGifFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFromMemoryCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getGifFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v1, "FLImageLoader"

    const-string v2, "Error getting cached GIF file"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getCleanupThreshold()J
    .locals 2

    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getCurrentCleanupThreshold()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDiskCacheSize()J
    .locals 2

    invoke-direct {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->calculateCurrentCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDiskCacheSize()J
    .locals 2

    iget-wide v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->maxDiskCacheSize:J

    return-wide v0
.end method

.method public loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadGifBitmapInternal(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmapOnlyInternal(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "Invalid URL"

    invoke-direct {p0, p2, p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoadFailed(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v1, "FLImageLoader"

    const-string v2, "Error in loadBitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallBitmapLoadFailed(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/fl/saas/adx/util/FLImageLoader$5;

    invoke-direct {v0, p0, p2}, Lcom/fl/saas/adx/util/FLImageLoader$5;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V
    .locals 4

    .line 2
    const-string v0, "FLImageLoader"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetDefaultImage(Landroid/widget/ImageView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "Error setting tag"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v1, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadGifImageInternal(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, v1, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmapImageInternal(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V

    goto :goto_3

    :cond_2
    :goto_1
    const-string v1, "Invalid parameters"

    invoke-direct {p0, p3, p2, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnError(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_2
    const-string v2, "Error in loadImage"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeSetErrorImage(Landroid/widget/ImageView;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->safeCallOnError(Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadSuccessListener;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/fl/saas/adx/util/FLImageLoader$4;

    invoke-direct {v0, p0, p3}, Lcom/fl/saas/adx/util/FLImageLoader$4;-><init>(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadSuccessListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V

    return-void
.end method

.method public removeFromCache(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->bitmapCache:Landroid/util/LruCache;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFileCache:Landroid/util/LruCache;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->gifFirstFrameCache:Landroid/util/LruCache;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->safeDeleteFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    const-string v0, "FLImageLoader"

    const-string v1, "Error removing from cache"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setDefaultImage(I)Lcom/fl/saas/adx/util/FLImageLoader;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->defaultImageResId:I

    return-object p0
.end method

.method public setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->enableDiskCache:Z

    return-object p0
.end method

.method public setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;
    .locals 0

    return-object p0
.end method

.method public setErrorImage(I)Lcom/fl/saas/adx/util/FLImageLoader;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->errorImageResId:I

    return-object p0
.end method

.method public setForceArgb8888(Z)Lcom/fl/saas/adx/util/FLImageLoader;
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/util/FLImageLoader;->forceArgb8888:Z

    return-object p0
.end method
