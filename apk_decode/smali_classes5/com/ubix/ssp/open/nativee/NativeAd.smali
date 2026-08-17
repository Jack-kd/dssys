.class public interface abstract Lcom/ubix/ssp/open/nativee/NativeAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;,
        Lcom/ubix/ssp/open/nativee/NativeAd$ExtraConstant;,
        Lcom/ubix/ssp/open/nativee/NativeAd$CustomReporter;,
        Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getActionButtonText()Ljava/lang/String;
.end method

.method public abstract getAdLogo()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getAdSource()Ljava/lang/String;
.end method

.method public abstract getAppDownloadSize()J
.end method

.method public abstract getAppICPNumber()Ljava/lang/String;
.end method

.method public abstract getAppIcon()Ljava/lang/String;
.end method

.method public abstract getAppIntroduceLink()Ljava/lang/String;
.end method

.method public abstract getAppLCPNumber()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAppPackageName()Ljava/lang/String;
.end method

.method public abstract getAppPermissionLink()Ljava/lang/String;
.end method

.method public abstract getAppPrivacyLink()Ljava/lang/String;
.end method

.method public abstract getAppPublisher()Ljava/lang/String;
.end method

.method public abstract getAppSuitableAge()Ljava/lang/String;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getCreativeId()Ljava/lang/String;
.end method

.method public abstract getCreativeType()I
.end method

.method public abstract getCustomReporter()Lcom/ubix/ssp/open/nativee/NativeAd$CustomReporter;
.end method

.method public abstract getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;
.end method

.method public abstract getDeeplinkUrl()Ljava/lang/String;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getDownloadAppStatus()I
.end method

.method public abstract getDownloadProgress()I
.end method

.method public abstract getDownloadUrl()Ljava/lang/String;
.end method

.method public abstract getExtraInfo()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/open/nativee/UBiXImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getLandingPageUrl()Ljava/lang/String;
.end method

.method public abstract getMediaView()Landroid/view/View;
.end method

.method public abstract getPrice()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoDuration()J
.end method

.method public abstract isDownloadAd()Z
.end method

.method public abstract isShakeAd()Z
.end method

.method public abstract isSupportCustomShake()Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract isVideoAd()Z
.end method

.method public abstract lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract registerViews(Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerViews(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAutoPlay(Z)V
.end method

.method public abstract setCustomDownloadConfirmListener(Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;)V
.end method

.method public abstract setDownloadListener(Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;)V
.end method

.method public abstract setVideoListener(Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;)V
.end method

.method public abstract setVideoMute(Z)V
.end method

.method public abstract shakeOff()V
.end method

.method public abstract shakeOn()V
.end method

.method public abstract startVideo()V
.end method

.method public abstract winNotice(J)V
.end method
