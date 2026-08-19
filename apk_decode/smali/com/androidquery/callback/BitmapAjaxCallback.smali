.class public Lcom/androidquery/callback/BitmapAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback<",
        "Landroid/graphics/Bitmap;",
        "Lcom/androidquery/callback/BitmapAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static BIG_MAX:I = 0x14

.field private static BIG_PIXELS:I = 0x27100

.field private static BIG_TPIXELS:I = 0xf4240

.field private static DELAY_WRITE:Z = false

.field private static final FADE_DUR:I = 0x12c

.field private static SMALL_MAX:I = 0x14

.field private static SMALL_PIXELS:I = 0x9c4

.field private static bigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dummy:Landroid/graphics/Bitmap;

.field private static empty:Landroid/graphics/Bitmap;

.field private static invalidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static queueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smallCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:F

.field private animation:I

.field private bm:Landroid/graphics/Bitmap;

.field private fallback:I

.field private imageFile:Ljava/io/File;

.field private invalid:Z

.field private preset:Landroid/graphics/Bitmap;

.field private ratio:F

.field private rotate:Z

.field private round:I

.field private targetDim:Z

.field private targetWidth:I

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 7
    .line 8
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sput-object v2, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    .line 6
    .line 7
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    iput v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 11
    .line 12
    const-class v1, Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache(Z)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/WeakHashMap;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object p2, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object p2, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p6

    .line 1
    iget-boolean v4, v0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    iget-boolean v5, v0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    iget v6, v0, Lcom/androidquery/callback/ImageOptions;->targetWidth:I

    iget v7, v0, Lcom/androidquery/callback/ImageOptions;->fallback:I

    iget-object v8, v0, Lcom/androidquery/callback/ImageOptions;->preset:Landroid/graphics/Bitmap;

    iget v9, v0, Lcom/androidquery/callback/ImageOptions;->animation:I

    iget v10, v0, Lcom/androidquery/callback/ImageOptions;->ratio:F

    iget v11, v0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    iget v14, v0, Lcom/androidquery/callback/ImageOptions;->policy:I

    iget v15, v0, Lcom/androidquery/callback/ImageOptions;->round:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-static/range {v0 .. v17}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 8

    move-object/from16 v5, p12

    move/from16 v6, p15

    if-eqz p4, :cond_0

    .line 2
    invoke-static {p3, p6, v6}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    const v0, 0x40ff0001

    .line 3
    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v5, p3, v0}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object v1, v7

    const/4 v7, 0x4

    move-object v0, p2

    move v3, p7

    move-object/from16 v2, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    .line 5
    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    return-void

    .line 6
    :cond_1
    new-instance v7, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v7}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 7
    invoke-virtual {v7, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, p5}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v4, p9

    invoke-virtual {v1, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v2, p10

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v2, p11

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move-object/from16 v2, p13

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v2, p14

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->policy(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, v6}, Lcom/androidquery/callback/BitmapAjaxCallback;->round(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v2, p17

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->networkUrl(Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p16, :cond_2

    .line 8
    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_2
    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {v7, p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/app/Activity;)V

    return-void

    .line 10
    :cond_3
    invoke-virtual {v7, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/content/Context;)V

    return-void
.end method

.method private bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    .line 2
    .line 3
    iget-boolean v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    .line 4
    .line 5
    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    .line 6
    .line 7
    iget-boolean v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate:Z

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v1, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const v0, 0x40ff0001

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 3
    .line 4
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 5
    .line 6
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public static clearTasks()V
    .locals 1

    .line 1
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    array-length v0, p1

    .line 12
    invoke-static {p1, p3, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_2

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    iget-boolean p2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    const-string p2, "decode image failed"

    .line 27
    .line 28
    invoke-static {p2, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-object p1
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 10
    .line 11
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    move-object v0, v1

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    move-exception p0

    .line 40
    move-object p1, v0

    .line 41
    move-object v0, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :catch_1
    move-exception p0

    .line 50
    move-object p1, v0

    .line 51
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :goto_2
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method private static fadeIn(II)Z
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_2

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    const/4 v0, -0x2

    .line 29
    if-ne p2, v0, :cond_2

    .line 30
    .line 31
    const/16 p2, 0x8

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_2
    const/4 v0, -0x1

    .line 38
    if-ne p2, v0, :cond_3

    .line 39
    .line 40
    const/4 p2, 0x4

    .line 41
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-object p1
.end method

.method private static getBCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    .line 6
    .line 7
    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 8
    .line 9
    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 10
    .line 11
    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 23
    .line 24
    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method private getFallback()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-object v0

    .line 39
    :cond_1
    return-object v2

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method

.method private static getICache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    .line 6
    .line 7
    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 8
    .line 9
    const v2, 0x3d090

    .line 10
    .line 11
    .line 12
    const/16 v3, 0x64

    .line 13
    .line 14
    invoke-direct {v0, v3, v1, v2}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 24
    .line 25
    return-object v0
.end method

.method private static getKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    if-lez p2, :cond_1

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    return-object p0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {v0, v1, v1, p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    :cond_0
    return-object p0

    :cond_1
    return-object v2
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-lez p2, :cond_2

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    invoke-static {p0, p1, v1, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 5
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez p3, :cond_1

    .line 6
    iget p3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7
    :cond_1
    invoke-static {v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->sampleSize(II)I

    move-result p2

    .line 8
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 9
    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_2
    move-object p3, v0

    .line 10
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p3, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 12
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :goto_1
    if-lez p4, :cond_3

    .line 13
    invoke-static {v0, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static getRotateMatrix(I)Landroid/graphics/Matrix;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x43340000    # 180.0f

    .line 7
    .line 8
    const/high16 v2, 0x42b40000    # 90.0f

    .line 9
    .line 10
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 11
    .line 12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/high16 v5, -0x40800000    # -1.0f

    .line 15
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_4
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_6
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Landroid/graphics/RectF;

    .line 40
    .line 41
    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    int-to-float p1, p1

    .line 45
    const/4 v5, 0x1

    .line 46
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 50
    .line 51
    .line 52
    const v5, -0xbdbdbe

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 62
    .line 63
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 64
    .line 65
    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method private static getSCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    .line 6
    .line 7
    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 8
    .line 9
    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 10
    .line 11
    const v3, 0x3d090

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 24
    .line 25
    return-object v0
.end method

.method public static isMemoryCached(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method private static makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p2, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/androidquery/util/RatioDrawable;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    move-object v4, p0

    .line 13
    move-object v3, p1

    .line 14
    move v5, p2

    .line 15
    move v6, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/androidquery/util/RatioDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    move-object v4, p0

    .line 21
    move-object v3, p1

    .line 22
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method private static memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object p1

    .line 7
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 8
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object p1

    .line 9
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :cond_0
    if-nez p1, :cond_2

    .line 10
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object p1

    .line 11
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    .line 12
    invoke-static {}, Lcom/androidquery/callback/AbstractAjaxCallback;->getLastStatus()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    const/4 p0, 0x0

    .line 13
    sput-object p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    :cond_1
    return-object p0

    :cond_2
    return-object p1
.end method

.method private static memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V
    .locals 2

    if-nez p3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    if-eqz p4, :cond_1

    .line 3
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object p4

    goto :goto_0

    .line 4
    :cond_1
    sget p4, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    if-gt v0, p4, :cond_2

    .line 5
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object p4

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object p4

    :goto_0
    if-gtz p1, :cond_4

    if-lez p2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {p4, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_4
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 11
    invoke-interface {p4, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    const v0, 0x40ff0001

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheAvailable(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private static rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 3
    const-string p0, "Orientation"

    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    :goto_0
    if-lez v1, :cond_2

    .line 5
    invoke-static {v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRotateMatrix(I)Landroid/graphics/Matrix;

    move-result-object v7

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "before"

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "after"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq v2, p0, :cond_1

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p1, p0

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    return-object p1
.end method

.method private static sampleSize(II)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/16 v2, 0xa

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    mul-int/lit8 v2, p1, 0x2

    .line 8
    .line 9
    if-ge p0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    div-int/lit8 p0, p0, 0x2

    .line 13
    .line 14
    mul-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    return v0
.end method

.method private setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 8

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p4, :cond_1

    .line 9
    .line 10
    iget p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    .line 11
    .line 12
    iget p4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 13
    .line 14
    invoke-static {p2, p3, p1, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    .line 29
    .line 30
    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    .line 31
    .line 32
    iget v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    .line 33
    .line 34
    iget v6, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    move-object v0, p2

    .line 41
    move-object v1, p3

    .line 42
    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method private static setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0, p1, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p4, p7}, Lcom/androidquery/callback/BitmapAjaxCallback;->fadeIn(II)Z

    .line 17
    .line 18
    .line 19
    move-result p7

    .line 20
    if-eqz p7, :cond_3

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    .line 25
    .line 26
    const/4 p4, 0x0

    .line 27
    const/high16 p5, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-direct {p2, p4, p5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    .line 33
    .line 34
    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 p4, 0x12c

    .line 41
    .line 42
    invoke-virtual {p2, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0, p2, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    filled-new-array {p2, p1}, [Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Landroid/graphics/drawable/TransitionDrawable;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 61
    .line 62
    .line 63
    const/16 p1, 0x12c

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 66
    .line 67
    .line 68
    move-object p1, p2

    .line 69
    :cond_2
    move-object p2, p3

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    if-lez p4, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p2, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide p3

    .line 90
    invoke-virtual {p2, p3, p4}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    invoke-virtual {p0, p3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static setCacheLimit(I)V
    .locals 0

    .line 1
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 2
    .line 3
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setDelayWrite(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setIconCacheLimit(I)V
    .locals 0

    .line 1
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 2
    .line 3
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .locals 0

    .line 1
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 2
    .line 3
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setPixelLimit(I)V
    .locals 0

    .line 1
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 2
    .line 3
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setSmallPixel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 2
    .line 3
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 2
    .line 3
    return-object p0
.end method

.method public animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    .line 2
    .line 3
    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .locals 3

    .line 11
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x40ff0001

    .line 16
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 18
    invoke-virtual {p0, p1, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void

    .line 19
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 20
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 3
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 9
    iput-object v6, p2, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    move-object v7, v3

    move-object v9, v5

    move-object v10, v6

    move-object v5, p0

    move-object v6, p2

    .line 10
    invoke-direct/range {v5 .. v10}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    move-object v5, v9

    move-object v6, v10

    goto :goto_2

    :cond_2
    return-void
.end method

.method public callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    const/4 p4, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    .line 2
    .line 3
    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method public fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-object p0
.end method

.method public isStreamingContent()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    invoke-static {p1, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 12
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    iget-boolean v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    invoke-static {p1, v0, v1, p2, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    .line 2
    .line 3
    return-object p0
.end method

.method public rotate(Z)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate:Z

    return-object p0
.end method

.method public round(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    .line 2
    .line 3
    return-object p0
.end method

.method public skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .line 2
    sget-object p2, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    .line 2
    .line 3
    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5

    .line 5
    iget p2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    if-lez p2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getFallback()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_1
    const/4 v0, -0x2

    if-eq p2, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    sget-object p1, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result p2

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_5

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    :cond_5
    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
