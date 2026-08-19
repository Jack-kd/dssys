.class public Lcom/ubix/ssp/ad/e/v/g/a;
.super Lcom/ubix/ssp/ad/e/v/e;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/a;


# instance fields
.field private d:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/ad/e/v/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/v/e;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->maxSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytesCache="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/2addr p1, v0

    int-to-float p1, p1

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    :goto_1
    mul-int p3, v1, v1

    int-to-float p3, p3

    div-float p3, p1, p3

    cmpl-float p3, p3, p2

    if-lez p3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method private a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file.exists()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/ubix/ssp/ad/e/v/g/a;->a([BZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p1
.end method

.method private a([BZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 3
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length p2, p1

    invoke-static {p1, v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float p2, p2

    int-to-float v2, v2

    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int p2, v3, p2

    invoke-direct {p0, v0, v3, p2}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length p2, p1

    invoke-static {p1, v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/e;->a(Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/e/v/e;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/v/g/a;->d:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a;->d:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/io/File;)[B
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->b(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 8

    .line 15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not load bytes,current length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";total length="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ";free length="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ";allow length="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/e;->a(Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/e/v/e;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/io/File;)[B
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/e;->a(Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/e;->a(Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Landroid/util/LruCache;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/k;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic f()Landroid/util/LruCache;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->A()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/v/g/a$c;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/v/g/a$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    return-object v0

    :catch_0
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-object v0
.end method

.method public static synthetic g()Landroid/util/LruCache;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic h()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic i()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic j()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic k()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic l()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic m()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic n()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method public static synthetic o()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/e$b;)V
    .locals 1

    .line 10
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 11
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_5

    instance-of v0, p2, Lcom/ubix/ssp/ad/e/t/a/e;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/ubix/ssp/ad/e/t/a/e;

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/t/a/e;->setRoundImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/ubix/ssp/ad/e/t/a/e;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/ubix/ssp/ad/e/t/a/e;->a(II)V

    sget-object p2, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/t/a/e;->setGifImage([B)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ubix/ssp/ad/e/v/g/a;->b(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v0, p2, Lcom/ubix/ssp/ad/e/t/a/e;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/ubix/ssp/ad/e/t/a/e;->a(II)V

    sget-object p2, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/t/a/e;->setGifImage([B)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    sget-object v1, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_2
    sget-object v2, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "resource not found form cache"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V
    .locals 7

    .line 12
    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->A()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v3, p4

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/v/g/a$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v3, p4

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/v/g/a$a;-><init>(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/ad/e/v/e$b;Ljava/lang/String;Landroid/widget/ImageView;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, p4

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v3, :cond_1

    const/16 p1, 0x9

    const-string p2, "\u5185\u5bb9\u52a0\u8f7d\u5931\u8d25"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/ubix/ssp/ad/e/v/e$b;->a(Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V
    .locals 2

    .line 13
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->A()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/v/g/a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/v/g/a$b;-><init>(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ubix/ssp/ad/e/v/g/a;->b(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new getMimeTyper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
