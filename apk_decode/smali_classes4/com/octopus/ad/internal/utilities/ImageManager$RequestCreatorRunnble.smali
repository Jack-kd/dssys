.class public Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/utilities/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestCreatorRunnble"
.end annotation


# instance fields
.field conn:Ljava/net/HttpURLConnection;

.field errorResId:I

.field holderResId:I

.field imageView:Landroid/widget/ImageView;

.field is:Ljava/io/InputStream;

.field os:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/ImageManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private getBitmapFile()Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 20
    .line 21
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/octopus/ad/d/b/c;->c(Landroid/content/Context;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/octopus/ad/internal/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    cmp-long v2, v2, v4

    .line 57
    .line 58
    if-lez v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :cond_1
    :goto_0
    return-object v1
.end method

.method private showError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$200(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$2;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$2;-><init>(Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public error(I)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->errorResId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 27
    .line 28
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/octopus/ad/d/b/c;->c(Landroid/content/Context;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/octopus/ad/internal/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    const-wide/16 v3, 0x0

    .line 62
    .line 63
    cmp-long v1, v1, v3

    .line 64
    .line 65
    if-lez v1, :cond_1

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "file://"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$100(Lcom/octopus/ad/internal/utilities/ImageManager;)Ljava/util/concurrent/ExecutorService;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_2
    :goto_0
    const-string v0, ""

    .line 102
    .line 103
    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->imageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$000(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroidx/collection/LruCache;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/graphics/Bitmap;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->getBitmapFile()Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$000(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroidx/collection/LruCache;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$100(Lcom/octopus/ad/internal/utilities/ImageManager;)Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public placeholder(I)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->holderResId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public run()V
    .locals 6

    .line 1
    const-string v0, "An Exception Caught"

    .line 2
    .line 3
    const-string v1, "OctopusAd"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    iput-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->conn:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    const-string v3, "GET"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->conn:Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    const/16 v3, 0x7d0

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->conn:Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/16 v3, 0xc8

    .line 39
    .line 40
    if-ne v2, v3, :cond_0

    .line 41
    .line 42
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->conn:Ljava/net/HttpURLConnection;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->is:Ljava/io/InputStream;

    .line 49
    .line 50
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$200(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroid/os/Handler;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-instance v4, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$1;

    .line 61
    .line 62
    invoke-direct {v4, p0, v2}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$1;-><init>(Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;Landroid/graphics/Bitmap;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 69
    .line 70
    invoke-static {v3}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$000(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroidx/collection/LruCache;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v4, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    new-instance v3, Ljava/io/File;

    .line 96
    .line 97
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v4}, Lcom/octopus/ad/d/b/c;->c(Landroid/content/Context;)Ljava/io/File;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget-object v5, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->url:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v5}, Lcom/octopus/ad/internal/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Ljava/io/FileOutputStream;

    .line 121
    .line 122
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    .line 124
    .line 125
    iput-object v4, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->os:Ljava/io/FileOutputStream;

    .line 126
    .line 127
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 128
    .line 129
    const/16 v5, 0x64

    .line 130
    .line 131
    invoke-virtual {v2, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v2

    .line 136
    goto :goto_5

    .line 137
    :catch_0
    move-exception v2

    .line 138
    goto :goto_3

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->showError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->is:Ljava/io/InputStream;

    .line 143
    .line 144
    if-eqz v2, :cond_2

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_1
    move-exception v2

    .line 151
    goto :goto_2

    .line 152
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->os:Ljava/io/FileOutputStream;

    .line 153
    .line 154
    if-eqz v2, :cond_3

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 157
    .line 158
    .line 159
    :cond_3
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->conn:Ljava/net/HttpURLConnection;

    .line 160
    .line 161
    if-eqz v2, :cond_6

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :goto_2
    invoke-static {v1, v0, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :goto_3
    :try_start_2
    invoke-static {v1, v0, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->showError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .line 176
    .line 177
    :try_start_3
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->is:Ljava/io/InputStream;

    .line 178
    .line 179
    if-eqz v2, :cond_4

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 182
    .line 183
    .line 184
    :cond_4
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->os:Ljava/io/FileOutputStream;

    .line 185
    .line 186
    if-eqz v2, :cond_5

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 189
    .line 190
    .line 191
    :cond_5
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->conn:Ljava/net/HttpURLConnection;

    .line 192
    .line 193
    if-eqz v2, :cond_6

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 196
    .line 197
    .line 198
    :cond_6
    :goto_4
    return-void

    .line 199
    :goto_5
    :try_start_4
    iget-object v3, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->is:Ljava/io/InputStream;

    .line 200
    .line 201
    if-eqz v3, :cond_7

    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :catch_2
    move-exception v3

    .line 208
    goto :goto_7

    .line 209
    :cond_7
    :goto_6
    iget-object v3, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->os:Ljava/io/FileOutputStream;

    .line 210
    .line 211
    if-eqz v3, :cond_8

    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 214
    .line 215
    .line 216
    :cond_8
    iget-object v3, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->conn:Ljava/net/HttpURLConnection;

    .line 217
    .line 218
    if-eqz v3, :cond_9

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 221
    .line 222
    .line 223
    goto :goto_8

    .line 224
    :goto_7
    invoke-static {v1, v0, v3}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    :goto_8
    throw v2
.end method
