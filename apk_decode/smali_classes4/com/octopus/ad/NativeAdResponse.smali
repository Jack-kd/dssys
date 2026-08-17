.class public interface abstract Lcom/octopus/ad/NativeAdResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/NativeAdResponse$b;,
        Lcom/octopus/ad/NativeAdResponse$a;
    }
.end annotation


# static fields
.field public static final INTERACTION_TYPE_DOWNLOAD:I = 0x2

.field public static final INTERACTION_TYPE_LANDING_PAGE:I = 0x4

.field public static final INTERACTION_TYPE_MINI_PROGRAMS:I = 0x6

.field public static final INTERACTION_TYPE_QUICK_APP:I = 0x3


# virtual methods
.method public abstract addShakeView(Landroid/view/ViewGroup;IF)V
.end method

.method public abstract bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/octopus/ad/internal/nativead/NativeAdEventListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
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
            "Lcom/octopus/ad/internal/nativead/NativeAdEventListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindView(Landroid/view/ViewGroup;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAdvertiser()Ljava/lang/String;
.end method

.method public abstract getBlurView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getButtonText()Ljava/lang/String;
.end method

.method public abstract getComplianceInfo()Lcom/octopus/ad/model/ComplianceInfo;
.end method

.method public abstract getComplianceView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getComplianceView(Landroid/content/Context;I)Landroid/view/View;
.end method

.method public abstract getCoveUrl()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getImageUrls()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getLandingPageUrl()Ljava/lang/String;
.end method

.method public abstract getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method public abstract getLogoInfo()Lcom/octopus/ad/model/AdLogoInfo;
.end method

.method public abstract getLogoUrl()Ljava/lang/String;
.end method

.method public abstract getMaterialType()I
.end method

.method public abstract getMediaExtraInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNativeAdType()Lcom/octopus/ad/NativeAdResponse$b;
.end method

.method public abstract getNativeElements()Ljava/util/HashMap;
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

.method public abstract getNativeInfoListView()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNativeView()Landroid/view/View;
.end method

.method public abstract getNetworkIdentifier()Lcom/octopus/ad/NativeAdResponse$a;
.end method

.method public abstract getPictureHeight()I
.end method

.method public abstract getPictureWidth()I
.end method

.method public abstract getPrice()I
.end method

.method public abstract getShakeValue()Lcom/octopus/ad/model/ShakeValue;
.end method

.method public abstract getStarRating()D
.end method

.method public abstract getStore()Ljava/lang/String;
.end method

.method public abstract getTextList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method public abstract getTextLogoInfo()Lcom/octopus/ad/model/AdLogoInfo;
.end method

.method public abstract getTextLogoUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoUrls()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract hasExpired()Z
.end method

.method public abstract isShakeAd()Z
.end method

.method public abstract isVideo()Z
.end method

.method public abstract isVideoMute()Z
.end method

.method public abstract setAdWidth(I)V
.end method

.method public abstract setAutoFitWidth(Z)V
.end method

.method public abstract setIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImage(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setIsVideoMute(Z)V
.end method

.method public abstract setNativeAdEventListener(Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
.end method

.method public abstract setNativeInfoListView(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnCpaListener(Lcom/octopus/ad/listener/OnCpaListener;)V
.end method

.method public abstract setOnSensorListener(Lcom/octopus/ad/OnSensorListener;)V
.end method

.method public abstract setVideoStateListener(Lcom/octopus/ad/internal/video/VideoStateListener;)V
.end method

.method public abstract showCloseButton(Z)V
.end method

.method public abstract toggleVideoMute()V
.end method

.method public abstract unregisterViews()V
.end method
