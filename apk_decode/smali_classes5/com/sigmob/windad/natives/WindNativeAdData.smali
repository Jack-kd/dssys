.class public interface abstract Lcom/sigmob/windad/natives/WindNativeAdData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;,
        Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;
    }
.end annotation


# virtual methods
.method public abstract bindImageViews(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract bindMediaView(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V
.end method

.method public abstract bindMediaViewWithoutAppInfo(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V
.end method

.method public abstract bindViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/sigmob/windad/natives/NativeADEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/sigmob/windad/natives/NativeADEventListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;
.end method

.method public abstract getAdLogo()Landroid/graphics/Bitmap;
.end method

.method public abstract getAdPatternType()I
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method public abstract getCTAText()Ljava/lang/String;
.end method

.method public abstract getCurrency()Ljava/lang/String;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getEcpm()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/SigImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getSaasOptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoCoverImageUrl()Ljava/lang/String;
.end method

.method public abstract getVideoCurrentPosition()I
.end method

.method public abstract getVideoDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoProgress()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getWindAdMetaData()Lcom/sigmob/sdk/base/models/WindAdMetaData;
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract resumeVideo()V
.end method

.method public abstract setDislikeInteractionCallback(Landroid/app/Activity;Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V
.end method

.method public abstract setVideoMute(Z)V
.end method

.method public abstract startVideo()V
.end method

.method public abstract stopVideo()V
.end method
