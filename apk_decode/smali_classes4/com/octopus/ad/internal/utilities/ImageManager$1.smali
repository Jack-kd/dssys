.class Lcom/octopus/ad/internal/utilities/ImageManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/utilities/ImageManager;->getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

.field final synthetic val$imgUrl:Ljava/lang/String;

.field final synthetic val$listener:Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/ImageManager;Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$imgUrl:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$listener:Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$000(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroidx/collection/LruCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$imgUrl:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/Bitmap;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$listener:Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 24
    .line 25
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/octopus/ad/d/b/c;->c(Landroid/content/Context;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$imgUrl:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/octopus/ad/internal/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .line 60
    cmp-long v1, v1, v3

    .line 61
    .line 62
    if-lez v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_0
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$000(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroidx/collection/LruCache;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$imgUrl:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$listener:Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;

    .line 88
    .line 89
    invoke-interface {v1, v0}, Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$100(Lcom/octopus/ad/internal/utilities/ImageManager;)Ljava/util/concurrent/ExecutorService;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;-><init>(Lcom/octopus/ad/internal/utilities/ImageManager$1;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 105
    .line 106
    .line 107
    return-void
.end method
