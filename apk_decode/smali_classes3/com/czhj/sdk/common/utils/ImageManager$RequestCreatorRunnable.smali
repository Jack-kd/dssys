.class public Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/utils/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestCreatorRunnable"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/czhj/sdk/common/utils/ImageManager;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/utils/ImageManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/czhj/volley/toolbox/StringUtil;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/Md5Util;->getMd5FilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/ImageManager;->a(Lcom/czhj/sdk/common/utils/ImageManager;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->b(Lcom/czhj/sdk/common/utils/ImageManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$2;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$2;-><init>(Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public error(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;
    .locals 0

    iput p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->c:I

    return-object p0
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 2

    iput-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->d:Landroid/widget/ImageView;

    iget v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->b:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->c(Lcom/czhj/sdk/common/utils/ImageManager;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->c(Lcom/czhj/sdk/common/utils/ImageManager;)Landroid/util/LruCache;

    move-result-object p1

    iget-object v1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->d(Lcom/czhj/sdk/common/utils/ImageManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public placeholder(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;
    .locals 0

    iput p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->b:I

    return-object p0
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/ImageManager;->b(Lcom/czhj/sdk/common/utils/ImageManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$1;

    invoke-direct {v3, p0, v0}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$1;-><init>(Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/ImageManager;->c(Lcom/czhj/sdk/common/utils/ImageManager;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/Md5Util;->getMd5FilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->e:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {v4}, Lcom/czhj/sdk/common/utils/ImageManager;->a(Lcom/czhj/sdk/common/utils/ImageManager;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->b()V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_3
    return-void
.end method
