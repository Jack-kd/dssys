.class Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/util/FLImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private isGif:Z

.field private isWebp:Z

.field private listener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

.field final synthetic this$0:Lcom/fl/saas/adx/util/FLImageLoader;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;ZLcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->isGif:Z

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".webp"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->isWebp:Z

    iput-object p4, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->listener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

    return-void
.end method

.method private safeCompressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "FLImageLoader"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x400

    if-gt v1, v3, :cond_1

    if-le v2, v3, :cond_3

    :cond_1
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v4, v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    return-object v1

    :goto_0
    :try_start_2
    const-string v2, "Out of memory compressing bitmap"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    return-object p1

    :goto_1
    const-string v2, "Error compressing bitmap"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private safeSaveBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "Error closing stream"

    const-string v1, "FLImageLoader"

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$100(Lcom/fl/saas/adx/util/FLImageLoader;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$200(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$1700(Lcom/fl/saas/adx/util/FLImageLoader;)V

    :try_start_0
    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v2, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->access$800(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_6

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v3}, Lcom/fl/saas/adx/util/FLImageLoader;->access$200(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, ".png"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, p1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p2, p1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    goto :goto_4

    :goto_2
    const/4 v3, 0x0

    :goto_3
    :try_start_3
    const-string p2, "Error saving bitmap to disk cache"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :goto_4
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_3
    move-exception p1

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p2

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_5
    throw p1

    :cond_5
    :goto_6
    return-void
.end method


# virtual methods
.method public addListener(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->listener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 7

    .line 2
    const-string p1, "FLImageLoader"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0"

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_11

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_3
    iget-boolean v3, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->isGif:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x1000

    new-array v3, v3, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v1}, Lcom/fl/saas/adx/util/FLImageLoader;->access$100(Lcom/fl/saas/adx/util/FLImageLoader;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v1}, Lcom/fl/saas/adx/util/FLImageLoader;->access$200(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->access$300(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;[B)V

    :cond_7
    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v1, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->access$400(Lcom/fl/saas/adx/util/FLImageLoader;[B)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$700(Lcom/fl/saas/adx/util/FLImageLoader;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$200(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v3, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->access$800(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v4}, Lcom/fl/saas/adx/util/FLImageLoader;->access$200(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v4, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->access$900(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;Ljava/io/File;)V

    :cond_8
    return-object v1

    :cond_9
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    return-object v0

    :cond_b
    if-eqz v3, :cond_10

    iget-boolean v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->isWebp:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$500(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_c
    invoke-direct {p0, v3}, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->safeCompressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    return-object v0

    :cond_e
    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$100(Lcom/fl/saas/adx/util/FLImageLoader;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$200(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->safeSaveBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_f
    return-object v1

    :cond_10
    return-object v3

    :cond_11
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for URL: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading bitmap: "

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of memory loading bitmap: "

    goto :goto_2

    :goto_4
    return-object v0
.end method

.method public onCancelled()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->access$1800(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "FLImageLoader"

    const-string v2, "Error removing bitmap task on cancellation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->access$1800(Lcom/fl/saas/adx/util/FLImageLoader;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->access$700(Lcom/fl/saas/adx/util/FLImageLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->isGif:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->access$1000(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->access$1500(Lcom/fl/saas/adx/util/FLImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->listener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->access$1900(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->listener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    const-string v2, "Bitmap is null or recycled"

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->listener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    const-string v2, "Load failed"

    :goto_1
    invoke-static {p1, v0, v1, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->access$2000(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    const-string v0, "FLImageLoader"

    const-string v1, "Error in BitmapLoadTask onPostExecute"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v1, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->listener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

    iget-object v2, p0, Lcom/fl/saas/adx/util/FLImageLoader$BitmapLoadTask;->imageUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->access$2000(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
