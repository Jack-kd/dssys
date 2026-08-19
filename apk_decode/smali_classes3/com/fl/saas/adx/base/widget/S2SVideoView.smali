.class public Lcom/fl/saas/adx/base/widget/S2SVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;
    }
.end annotation


# static fields
.field public static final MSG_AD_VISIBLE_CHECK:I = 0x2af8


# instance fields
.field private currentTime:I

.field private endFrameView:Landroid/widget/RelativeLayout;

.field private firstFrameView:Landroid/widget/ImageView;

.field private hasChangeTextureViewSize:Z

.field private isDestroyed:Z

.field private isPlayError:Z

.field private mAdxInfo:Lcom/fl/saas/j;

.field private final mContext:Landroid/content/Context;

.field private final mDurationCountdownHandler:Landroid/os/Handler;

.field private mHandler:Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

.field private mIs25Preent:Z

.field private mIs50Preent:Z

.field private mIs75Preent:Z

.field private mIsCallPlay:Z

.field private mIsFirstCreateTextureView:Z

.field private mIsSoundEnable:Z

.field private mIsTextureViewAvailable:Z

.field private mIsVideoCompleted:Z

.field private mIsVideoPrepared:Z

.field private mPlayListener:Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private progressBar:Landroid/widget/ProgressBar;

.field private soundBottom:I

.field private soundControlImageView:Landroid/widget/ImageView;

.field private soundHeight:I

.field private soundImageGone:Z

.field private soundLeft:I

.field private soundRight:I

.field private soundTop:I

.field private soundWidth:I

.field private systemMute:Z

.field private textView:Landroid/widget/TextView;

.field private textureView:Landroid/view/TextureView;

.field private tvBtn:Landroid/widget/TextView;

.field private viewStateChangeListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;

.field private volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->hasChangeTextureViewSize:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->currentTime:I

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsCallPlay:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoPrepared:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoCompleted:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsTextureViewAvailable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsFirstCreateTextureView:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundImageGone:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs25Preent:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs50Preent:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs75Preent:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isPlayError:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->systemMute:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundWidth:I

    iput v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundHeight:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundTop:I

    iput v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundLeft:I

    iput v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundRight:I

    iput v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundBottom:I

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mHandler:Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mDurationCountdownHandler:Landroid/os/Handler;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->hasChangeTextureViewSize:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->currentTime:I

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsCallPlay:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoPrepared:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoCompleted:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsTextureViewAvailable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsFirstCreateTextureView:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundImageGone:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs25Preent:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs50Preent:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs75Preent:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isPlayError:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->systemMute:Z

    const/16 p2, 0x1e

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundWidth:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundHeight:I

    const/4 p2, 0x5

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundTop:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundLeft:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundRight:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundBottom:I

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mHandler:Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mDurationCountdownHandler:Landroid/os/Handler;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->hasChangeTextureViewSize:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->currentTime:I

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsCallPlay:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoPrepared:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoCompleted:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsTextureViewAvailable:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsFirstCreateTextureView:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundImageGone:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs25Preent:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs50Preent:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs75Preent:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isPlayError:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->systemMute:Z

    const/16 p2, 0x1e

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundWidth:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundHeight:I

    const/4 p2, 0x5

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundTop:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundLeft:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundRight:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundBottom:I

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mHandler:Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mDurationCountdownHandler:Landroid/os/Handler;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/widget/S2SVideoView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->systemMute:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    .line 6
    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->setSoundEnable(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->checkViewVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1002(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoPrepared:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsCallPlay:Z

    return p0
.end method

.method public static synthetic access$1300(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->changeTextureViewSize(Z)V

    return-void
.end method

.method public static synthetic access$1402(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsTextureViewAvailable:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->createMediaView()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsFirstCreateTextureView:Z

    return p0
.end method

.method public static synthetic access$1702(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsFirstCreateTextureView:Z

    return p1
.end method

.method public static synthetic access$1800(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->resumeVideo()V

    return-void
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->pauseVideo()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->endFrameView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundImageGone:Z

    return p0
.end method

.method public static synthetic access$2400(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->viewStateChangeListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mDurationCountdownHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs25Preent:Z

    return p0
.end method

.method public static synthetic access$2602(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs25Preent:Z

    return p1
.end method

.method public static synthetic access$2700(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs50Preent:Z

    return p0
.end method

.method public static synthetic access$2702(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs50Preent:Z

    return p1
.end method

.method public static synthetic access$2800(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs75Preent:Z

    return p0
.end method

.method public static synthetic access$2802(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIs75Preent:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->startVideo(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoCompleted:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoCompleted:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->showEndFrame()V

    return-void
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mPlayListener:Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->releaseSource()V

    return-void
.end method

.method public static synthetic access$800(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isPlayError:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isPlayError:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/widget/S2SVideoView;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/fl/saas/adx/base/widget/i;

    .line 5
    .line 6
    invoke-direct {p1, p0, p2}, Lcom/fl/saas/adx/base/widget/i;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/fl/saas/adx/util/DeviceUtil;->postUI(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private changeTextureViewSize(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textureView:Landroid/view/TextureView;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->hasChangeTextureViewSize:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const-string v3, "FLSDK-S2SVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeSize----width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "viewWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "viewHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_3

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    if-lez v2, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->hasChangeTextureViewSize:Z

    iget-object v3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    mul-int v4, p1, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_2

    div-int/2addr v5, p1

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    div-int/2addr v4, v0

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkAreaEffective(Landroid/graphics/Rect;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v3, p1

    int-to-double v3, v3

    mul-int/2addr v1, v2

    int-to-double v1, v1

    const-wide v5, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v5

    cmpl-double p1, v3, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method private checkViewVisible()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->checkAreaEffective(Landroid/graphics/Rect;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    return v0

    :goto_0
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return v0
.end method

.method private createMediaView()V
    .locals 3

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoCompleted:Z

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/fl/saas/adx/base/widget/S2SVideoView$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$1;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/fl/saas/adx/base/widget/S2SVideoView$4;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$4;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    sget v0, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lcom/fl/saas/g1;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v1, v1, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    const v2, 0x19000

    invoke-direct {v0, v2, v1}, Lcom/fl/saas/g1;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/fl/saas/h1;->a()Lcom/fl/saas/h1;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/fl/saas/h1;->a(Landroid/content/Context;Lcom/fl/saas/g1;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Ljava/lang/ref/WeakReference;Lcom/fl/saas/j;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/fl/saas/adx/base/widget/S2SVideoView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    :try_start_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    new-instance v0, Lcom/fl/saas/adx/base/widget/l;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/widget/l;-><init>(Ljava/lang/ref/WeakReference;Landroid/graphics/Bitmap;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUI(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fl/saas/j;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->startVideo(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public static synthetic f(Ljava/lang/ref/WeakReference;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public static synthetic g(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->viewStateChangeListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;->changeSystemSound(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->systemMute:Z

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    sget v0, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/fl/saas/x;->k(Lcom/fl/saas/j;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->systemMute:Z

    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    sget p1, Lcom/fl/saas/R$drawable;->fl_adx_volume_on:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method private static getAppContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/fl/saas/adx/base/widget/S2SVideoView;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    iput v1, v0, Lcom/fl/saas/j;->e2:I

    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->startVideo(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private pauseVideo()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->currentTime:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v0, v1}, Lcom/fl/saas/x;->l(Lcom/fl/saas/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private registerSound()V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    new-instance v1, Lcom/fl/saas/adx/base/widget/h;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/h;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->start(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$VolumeChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private releaseMedia()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_1
    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    :cond_2
    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mPlayListener:Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->viewStateChangeListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private releaseSource()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mDurationCountdownHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mHandler:Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private resumeVideo()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    iget v0, v0, Lcom/fl/saas/j;->K0:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "1"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoCompleted:Z

    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsCallPlay:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoPrepared:Z

    if-eqz v2, :cond_2

    new-instance v0, Lcom/fl/saas/adx/base/widget/m;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/m;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoPrepared:Z

    if-eqz v3, :cond_7

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void

    :cond_3
    iget v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->currentTime:I

    if-lez v0, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_4

    int-to-long v3, v0

    invoke-static {v2, v3, v4, v1}, Lcom/beizi/ad/v2/activity/a;->a(Landroid/media/MediaPlayer;JI)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->registerSound()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    iput v1, v0, Lcom/fl/saas/j;->d2:I

    :cond_6
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v0, v1}, Lcom/fl/saas/x;->h(Lcom/fl/saas/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private setTextureView()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textureView:Landroid/view/TextureView;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textureView:Landroid/view/TextureView;

    new-instance v2, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showEndFrame()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->endFrameView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->tvBtn:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->tvBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->viewStateChangeListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;->changeViewVisible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->endFrameView:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->endFrameView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private startVideo(Z)V
    .locals 6

    const-string v0, "FLSDK-S2SVideoView"

    :try_start_0
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "startPlayVideo"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->checkViewVisible()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsTextureViewAvailable:Z

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->changeTextureViewSize(Z)V

    const/16 v2, 0x11

    const/4 v3, 0x3

    const/4 v4, -0x2

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    iget p1, p1, Lcom/fl/saas/j;->K0:I

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "1"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    if-nez p1, :cond_9

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    const-string v0, "\u64ad\u653e"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v5

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v0

    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v3

    invoke-virtual {p1, v1, v5, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    sget v1, Lcom/fl/saas/R$drawable;->fl_adx_reward_video_adinfo_btn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    new-instance v0, Lcom/fl/saas/adx/base/widget/j;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/j;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_4
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->progressBar:Landroid/widget/ProgressBar;

    if-nez p1, :cond_5

    new-instance p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->progressBar:Landroid/widget/ProgressBar;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsCallPlay:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoPrepared:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoCompleted:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsCallPlay:Z

    const-string p1, "playVideo"

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/x;->d(Lcom/fl/saas/j;I)V

    iget p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->currentTime:I

    if-lez p1, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/beizi/ad/v2/activity/a;->a(Landroid/media/MediaPlayer;JI)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->registerSound()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mPlayListener:Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;->onVideoPlayStart()V

    :cond_8
    new-instance p1, Lcom/fl/saas/adx/base/widget/k;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/widget/k;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mDurationCountdownHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mDurationCountdownHandler:Landroid/os/Handler;

    new-instance v0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_2
    return-void

    :goto_3
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public changeSoundEnable(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->setSoundEnable(Z)V

    return-void
.end method

.method public getProgress()J
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSoundEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->releaseSource()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->releaseMedia()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->stop()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textureView:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->endFrameView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->endFrameView:Landroid/widget/RelativeLayout;

    :cond_4
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    :cond_5
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->textView:Landroid/widget/TextView;

    :cond_6
    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mPlayListener:Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    invoke-static {p0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->releaseSource()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->changeTextureViewSize(Z)V

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsVideoPrepared:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->resumeVideo()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->pauseVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setSoundControlViewStateChangeListener(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundImageGone:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->viewStateChangeListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;

    return-void
.end method

.method public setSoundEnable(Z)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :try_start_1
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    sget v0, Lcom/fl/saas/R$drawable;->fl_adx_volume_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    sget v0, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {p1, v0}, Lcom/fl/saas/x;->k(Lcom/fl/saas/j;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->systemMute:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    sget v0, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setSoundSize(IIIIII)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundWidth:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundHeight:I

    iput p4, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundTop:I

    iput p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundLeft:I

    iput p5, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundRight:I

    iput p6, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundBottom:I

    return-void
.end method

.method public setVideo(Lcom/fl/saas/j;)V
    .locals 7

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->isDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x11

    .line 14
    .line 15
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    .line 17
    iget v1, p1, Lcom/fl/saas/j;->O0:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    iput-boolean v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mIsSoundEnable:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mAdxInfo:Lcom/fl/saas/j;

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->setTextureView()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundLeft:I

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v4, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundTop:I

    .line 50
    .line 51
    int-to-float v4, v4

    .line 52
    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget v5, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundRight:I

    .line 57
    .line 58
    int-to-float v5, v5

    .line 59
    invoke-static {v5}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iget v6, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundBottom:I

    .line 64
    .line 65
    int-to-float v6, v6

    .line 66
    invoke-static {v6}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .line 75
    iget v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundWidth:I

    .line 76
    .line 77
    int-to-float v2, v2

    .line 78
    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget v4, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundHeight:I

    .line 83
    .line 84
    int-to-float v4, v4

    .line 85
    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    .line 93
    .line 94
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundImageGone:Z

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    .line 102
    .line 103
    const/16 v2, 0x8

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->soundControlImageView:Landroid/widget/ImageView;

    .line 113
    .line 114
    new-instance v2, Lcom/fl/saas/adx/base/widget/f;

    .line 115
    .line 116
    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/widget/f;-><init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->registerSound()V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 126
    .line 127
    const/16 v2, 0x2af8

    .line 128
    .line 129
    if-nez v1, :cond_9

    .line 130
    .line 131
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->createMediaView()V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    .line 135
    .line 136
    if-nez v1, :cond_3

    .line 137
    .line 138
    new-instance v1, Landroid/widget/ImageView;

    .line 139
    .line 140
    iget-object v4, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    .line 146
    .line 147
    const/high16 v4, -0x1000000

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    .line 153
    .line 154
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    iget-object v0, p1, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_4

    .line 171
    .line 172
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->firstFrameView:Landroid/widget/ImageView;

    .line 187
    .line 188
    iget-object v3, p1, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0, v1, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 195
    .line 196
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/fl/saas/d1;->a()Lcom/fl/saas/d1;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    new-instance v3, Lcom/fl/saas/adx/base/widget/g;

    .line 204
    .line 205
    invoke-direct {v3, v0, p1}, Lcom/fl/saas/adx/base/widget/g;-><init>(Ljava/lang/ref/WeakReference;Lcom/fl/saas/j;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v3}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    :goto_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mHandler:Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    .line 212
    .line 213
    if-eqz v0, :cond_5

    .line 214
    .line 215
    const-wide/16 v3, 0x1f4

    .line 216
    .line 217
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    .line 219
    .line 220
    :cond_5
    const-string v0, ""

    .line 221
    .line 222
    iget-object v1, p1, Lcom/fl/saas/j;->x1:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_6

    .line 229
    .line 230
    iget-object v0, p1, Lcom/fl/saas/j;->x1:Ljava/lang/String;

    .line 231
    .line 232
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_7

    .line 237
    .line 238
    iget-object v1, p1, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_7

    .line 245
    .line 246
    iget-object v0, p1, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 247
    .line 248
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_8

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_8
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sget v0, Lcom/fl/saas/R$layout;->fl_adx_video_view_end_frame:I

    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 269
    .line 270
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->endFrameView:Landroid/widget/RelativeLayout;

    .line 271
    .line 272
    sget v0, Lcom/fl/saas/R$id;->s2s_video_view_finish_button:I

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Landroid/widget/TextView;

    .line 279
    .line 280
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->tvBtn:Landroid/widget/TextView;

    .line 281
    .line 282
    const-string v0, "\u91cd\u64ad"

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_9
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mHandler:Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;

    .line 289
    .line 290
    if-eqz p1, :cond_a

    .line 291
    .line 292
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .line 294
    .line 295
    :cond_a
    :goto_3
    return-void

    .line 296
    :goto_4
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method public setVideoPlayListener(Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView;->mPlayListener:Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    return-void
.end method
