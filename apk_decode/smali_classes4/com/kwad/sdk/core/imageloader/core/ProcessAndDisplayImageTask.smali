.class final Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_POSTPROCESS_IMAGE:Ljava/lang/String; = "PostProcess image before displaying [%s]"


# instance fields
.field private final decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

.field private final engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field private final imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    .line 4
    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "PostProcess image before displaying [%s]"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-interface {v0, v2}, Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, v1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 39
    .line 40
    sget-object v4, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 41
    .line 42
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;-><init>(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isSyncLoading()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 56
    .line 57
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
