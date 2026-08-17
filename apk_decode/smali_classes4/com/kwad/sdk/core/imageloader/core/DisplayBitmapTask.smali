.class final Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_BITMAP_RECYCLED:Ljava/lang/String; = "Display bitmap recycled by GC. Task is failed. [%s]"

.field private static final LOG_DISPLAY_IMAGE_IN_IMAGEAWARE:Ljava/lang/String; = "Display image in ImageAware (loaded from %1$s) [%2$s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED:Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_REUSED:Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"


# instance fields
.field private final decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

.field private final displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

.field private final engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

.field private final imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

.field private final imageUri:Ljava/lang/String;

.field private final listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

.field private final loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

.field private final memoryCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 5
    .line 6
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 13
    .line 14
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getDisplayer()Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    .line 25
    .line 26
    iget-object p1, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 31
    .line 32
    iput-object p4, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 33
    .line 34
    return-void
.end method

.method private canDisplayBitmap()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    return v1
.end method

.method private isViewWasReused()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->isCollected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->isViewWasReused()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 41
    .line 42
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 56
    .line 57
    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->canDisplayBitmap()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 72
    .line 73
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "Display bitmap recycled by GC. Task is failed. [%s]"

    .line 78
    .line 79
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 87
    .line 88
    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v3, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;

    .line 93
    .line 94
    sget-object v4, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    .line 95
    .line 96
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string v6, "Cannot create BitmapShader for recycled bitmap"

    .line 99
    .line 100
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v3, v4, v5}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;-><init>(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 113
    .line 114
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    .line 119
    .line 120
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 126
    .line 127
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 128
    .line 129
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    .line 130
    .line 131
    invoke-interface {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;->display(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    .line 146
    .line 147
    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->decodedResult:Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 152
    .line 153
    invoke-interface {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
