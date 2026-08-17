.class public Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static currentTime:I = -0x1

.field private static manager:Lcom/fl/saas/N0;


# instance fields
.field private autoClickStartTime:I

.field private autoClickTime:D

.field private canAutoClick:Z

.field private canClickReward:Z

.field private complete_progressBar:Landroid/widget/ProgressBar;

.field private curPosition:I

.field private fC0:Z

.field private fE0:Z

.field private fP0:Z

.field private fl_media_view:Landroid/widget/FrameLayout;

.field private getRewardTime:I

.field private hasCallBackError:Z

.field private hasClick:Z

.field private hasJump:Z

.field private hasRefuseJump:Z

.field private hasReward:Z

.field private hasRewardEnd:Z

.field private isPlaying:Z

.field private isPreviewMode:Z

.field private isVideo:Z

.field private isWatchMode:Z

.field private ll_countdown:Landroid/widget/LinearLayout;

.field private ll_shake:Landroid/widget/LinearLayout;

.field private ll_watch_tips:Landroid/widget/LinearLayout;

.field private logoImageView:Landroid/widget/ImageView;

.field private mADImgContainerRelativeLayout:Landroid/widget/RelativeLayout;

.field private mAdxInfo:Lcom/fl/saas/j;

.field private mAutoClickCloseView:Landroid/widget/TextView;

.field private mAutoClickTimeView:Landroid/widget/TextView;

.field private mAutoClickView:Landroid/view/ViewGroup;

.field private mCanScroll:Z

.field private mCloseImageView:Landroid/widget/ImageView;

.field private mDurationCountdownHandler:Landroid/os/Handler;

.field private mDurationCountdownTextView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mIs25Preent:Z

.field private mIs50Preent:Z

.field private mIs75Preent:Z

.field private mIsCurrentPage:Z

.field private mIsFirstCreateSurfaceView:Z

.field private mIsSoundEnable:Z

.field private mIsVideoCompleted:Z

.field private mIsVideoPrepared:Z

.field private mR0:Ljava/lang/Runnable;

.field private mRewardTipsView:Landroid/widget/LinearLayout;

.field private mSkipTextView:Landroid/widget/TextView;

.field private mSoundImageView:Landroid/widget/ImageView;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSx:Lcom/fl/saas/c1;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private previewCanContinue:Z

.field private progressDialog:Landroid/widget/ProgressBar;

.field private rl_progress:Landroid/widget/RelativeLayout;

.field private signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

.field private skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

.field private skipDialogIsShow:Z

.field private skipPosition:I

.field private systemMute:Z

.field private tE1:J

.field private tS1:J

.field private tT0:J

.field private tv_has_reward:Landroid/widget/TextView;

.field private tv_progress_tips:Landroid/widget/TextView;

.field private tv_watch_tips:Landroid/widget/TextView;

.field private videoDuration:I

.field private volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

.field private watchTime:I

.field private yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCanScroll:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->previewCanContinue:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoCompleted:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsCurrentPage:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs25Preent:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs50Preent:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs75Preent:Z

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsSoundEnable:Z

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isVideo:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoPrepared:Z

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsFirstCreateSurfaceView:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasCallBackError:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialogIsShow:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->systemMute:Z

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPlaying:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasRewardEnd:Z

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->systemMute:Z

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsSoundEnable:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/fl/saas/x;->k(Lcom/fl/saas/j;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    .line 24
    .line 25
    sget p1, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->systemMute:Z

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsSoundEnable:Z

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    sget p1, Lcom/fl/saas/R$drawable;->fl_adx_volume_on:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isVideo:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCanScroll:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasReward:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_progress_tips:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->progressDialog:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1500()Lcom/fl/saas/N0;
    .locals 1

    .line 1
    sget-object v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsFirstCreateSurfaceView:Z

    return p0
.end method

.method public static synthetic access$1702(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsFirstCreateSurfaceView:Z

    return p1
.end method

.method public static synthetic access$1800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->resumeVideo()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pauseVideo()V

    return-void
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->getRewardTime:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->logoImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->getRewardTime:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoCompleted:Z

    return p0
.end method

.method public static synthetic access$2200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsCurrentPage:Z

    return p0
.end method

.method public static synthetic access$2300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    return p0
.end method

.method public static synthetic access$2500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canAutoClick:Z

    return p0
.end method

.method public static synthetic access$2502(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canAutoClick:Z

    return p1
.end method

.method public static synthetic access$2600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialogIsShow:Z

    return p0
.end method

.method public static synthetic access$2602(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialogIsShow:Z

    return p1
.end method

.method public static synthetic access$2700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasRefuseJump:Z

    return p0
.end method

.method public static synthetic access$2800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->curPosition:I

    return p0
.end method

.method public static synthetic access$2802(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->curPosition:I

    return p1
.end method

.method public static synthetic access$2812(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->curPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->curPosition:I

    return v0
.end method

.method public static synthetic access$2900(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickStartTime:I

    return p0
.end method

.method public static synthetic access$2902(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickStartTime:I

    return p1
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)D
    .locals 2

    iget-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickTime:D

    return-wide v0
.end method

.method public static synthetic access$3002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;D)D
    .locals 0

    iput-wide p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickTime:D

    return-wide p1
.end method

.method public static synthetic access$3100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->jump()V

    return-void
.end method

.method public static synthetic access$3400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$3600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->videoDuration:I

    return p0
.end method

.method public static synthetic access$3602(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->videoDuration:I

    return p1
.end method

.method public static synthetic access$3700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs25Preent:Z

    return p0
.end method

.method public static synthetic access$3702(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs25Preent:Z

    return p1
.end method

.method public static synthetic access$3800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs50Preent:Z

    return p0
.end method

.method public static synthetic access$3802(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs50Preent:Z

    return p1
.end method

.method public static synthetic access$3900(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs75Preent:Z

    return p0
.end method

.method public static synthetic access$3902(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIs75Preent:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->previewCanContinue:Z

    return p0
.end method

.method public static synthetic access$4000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipPosition:I

    return p0
.end method

.method public static synthetic access$4002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipPosition:I

    return p1
.end method

.method public static synthetic access$4012(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipPosition:I

    return v0
.end method

.method public static synthetic access$402(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->previewCanContinue:Z

    return p1
.end method

.method public static synthetic access$4100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->setDurationCountdown(J)V

    return-void
.end method

.method public static synthetic access$4200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canClickReward:Z

    return p0
.end method

.method public static synthetic access$4202(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canClickReward:Z

    return p1
.end method

.method public static synthetic access$4300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mRewardTipsView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$4400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasRewardEnd:Z

    return p0
.end method

.method public static synthetic access$4402(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasRewardEnd:Z

    return p1
.end method

.method public static synthetic access$4500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->playEnd(I)V

    return-void
.end method

.method public static synthetic access$4600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->checkReward()V

    return-void
.end method

.method public static synthetic access$4700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pAcRs()V

    return-void
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fl_media_view:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->rl_progress:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_countdown:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->changeSurfaceViewSize()V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->progressDialog:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasCallBackError:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasCallBackError:Z

    .line 20
    .line 21
    sget v0, Lcom/fl/saas/R$string;->fl_adx_video_play_failed:I

    .line 22
    .line 23
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p0, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/fl/saas/N0;->a(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return p1
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;III)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialogIsShow:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "vibrator"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/Vibrator;

    .line 16
    .line 17
    const-wide/16 v1, 0x1f4

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iput p1, v0, Lcom/fl/saas/j;->M1:I

    .line 27
    .line 28
    iput p2, v0, Lcom/fl/saas/j;->N1:I

    .line 29
    .line 30
    iput p3, v0, Lcom/fl/saas/j;->O1:I

    .line 31
    .line 32
    sget-object p1, Lcom/fl/saas/j$b;->b:Lcom/fl/saas/j$b;

    .line 33
    .line 34
    iput-object p1, v0, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_shake:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const/16 p2, 0x8

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->jump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private changeSurfaceViewSize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fl_media_view:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fl/saas/adx/base/activity/i;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/activity/i;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkReward()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasReward:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasReward:Z

    invoke-virtual {v0}, Lcom/fl/saas/N0;->h()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_progress_tips:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$string;->fl_adx_task_complete_multiline:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_has_reward:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mRewardTipsView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->getRewardTime:I

    iget v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->curPosition:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->setDurationCountdown(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkShakeView()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/j;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v0}, Lcom/fl/saas/j;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_shake:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v0}, Lcom/fl/saas/j;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_shake:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/ShakeView;->setNeedVibrator(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v1}, Lcom/fl/saas/j;->k()I

    move-result v1

    new-instance v2, Lcom/fl/saas/adx/base/activity/c;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/activity/c;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/base/widget/ShakeView;->setShakeListener(ILcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_shake:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/fl/saas/adx/base/activity/j;

    .line 5
    .line 6
    invoke-direct {p1, p0, p2}, Lcom/fl/saas/adx/base/activity/j;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    float-to-int v4, v4

    .line 22
    iput v4, v0, Lcom/fl/saas/j;->E1:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    float-to-int v4, v4

    .line 31
    iput v4, v0, Lcom/fl/saas/j;->F1:I

    .line 32
    .line 33
    new-array v0, v1, [I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 39
    .line 40
    iget v5, v4, Lcom/fl/saas/j;->E1:I

    .line 41
    .line 42
    aget v6, v0, v3

    .line 43
    .line 44
    add-int/2addr v5, v6

    .line 45
    iput v5, v4, Lcom/fl/saas/j;->I1:I

    .line 46
    .line 47
    iget v5, v4, Lcom/fl/saas/j;->F1:I

    .line 48
    .line 49
    aget v0, v0, v2

    .line 50
    .line 51
    add-int/2addr v5, v0

    .line 52
    iput v5, v4, Lcom/fl/saas/j;->J1:I

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    iput-wide v5, v4, Lcom/fl/saas/j;->R1:J

    .line 59
    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ne v0, v2, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    float-to-int v4, v4

    .line 75
    iput v4, v0, Lcom/fl/saas/j;->G1:I

    .line 76
    .line 77
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    float-to-int p2, p2

    .line 84
    iput p2, v0, Lcom/fl/saas/j;->H1:I

    .line 85
    .line 86
    new-array p2, v1, [I

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 92
    .line 93
    iget p1, p0, Lcom/fl/saas/j;->G1:I

    .line 94
    .line 95
    aget v0, p2, v3

    .line 96
    .line 97
    add-int/2addr p1, v0

    .line 98
    iput p1, p0, Lcom/fl/saas/j;->K1:I

    .line 99
    .line 100
    iget p1, p0, Lcom/fl/saas/j;->H1:I

    .line 101
    .line 102
    aget p2, p2, v2

    .line 103
    .line 104
    add-int/2addr p1, p2

    .line 105
    iput p1, p0, Lcom/fl/saas/j;->L1:I

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    iput-wide p1, p0, Lcom/fl/saas/j;->S1:J

    .line 112
    .line 113
    :cond_1
    return v3
.end method

.method private eAcT()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fC0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fE0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fE0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mR0:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->eSx()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pJ0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private eSx()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->d()V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    :try_start_0
    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoPrepared:Z

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsSoundEnable:Z

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->setSoundEnable(Z)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoCompleted:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    sget p1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->currentTime:I

    .line 17
    .line 18
    if-gtz p1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->startVideo()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-virtual {p1, v0, p0}, Lcom/fl/saas/x;->d(Lcom/fl/saas/j;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private finishDelayed()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$6;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$6;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic g(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fl_media_view:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fl_media_view:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fl_media_view:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    if-lez v1, :cond_2

    .line 42
    .line 43
    if-lez v2, :cond_2

    .line 44
    .line 45
    if-lez v3, :cond_2

    .line 46
    .line 47
    iget-object v4, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    .line 55
    mul-int v5, v0, v3

    .line 56
    .line 57
    mul-int v6, v1, v2

    .line 58
    .line 59
    if-le v5, v6, :cond_1

    .line 60
    .line 61
    div-int/2addr v6, v0

    .line 62
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 63
    .line 64
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    div-int/2addr v5, v1

    .line 68
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 69
    .line 70
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 71
    .line 72
    :goto_0
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 73
    .line 74
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_1
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private gSx()Lcom/fl/saas/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/fl/saas/c1;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/fl/saas/c1;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    .line 13
    .line 14
    return-object v0
.end method

.method private gVx()F
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->e()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private gVy()F
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->f()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private gVz()F
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->g()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic h(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoPrepared:Z

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    :goto_0
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->playEnd(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    .line 22
    .line 23
    const/16 p1, 0x8

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic i(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->eAcT()V

    return-void
.end method

.method private initDatas()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->finishDelayed()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Lcom/fl/saas/N0;->b()Lcom/fl/saas/j;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/fl/saas/j;->m2:J

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->P1:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->Q1:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v1, v0, Lcom/fl/saas/j;->R:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->w0:Ljava/lang/String;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->B1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v1, v0, Lcom/fl/saas/j;->W:I

    iput v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->watchTime:I

    iget-object v0, v0, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v1, v0, Lcom/fl/saas/j;->q2:I

    if-ne v1, v4, :cond_5

    iput-boolean v4, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    iget v0, v0, Lcom/fl/saas/j;->W:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->getRewardTime:I

    :cond_5
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_countdown:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->rl_progress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v2, v0, Lcom/fl/saas/j;->V:I

    if-ne v2, v4, :cond_8

    iget v2, v0, Lcom/fl/saas/j;->W:I

    if-lez v2, :cond_8

    const-string v2, "A"

    iget-object v0, v0, Lcom/fl/saas/j;->X:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v4, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canAutoClick:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v0, v0, Lcom/fl/saas/j;->W:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_7

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    iput-wide v5, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickTime:D

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickStartTime:I

    goto :goto_2

    :cond_7
    int-to-double v5, v0

    iput-wide v5, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickTime:D

    iput v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickStartTime:I

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v2, v0, Lcom/fl/saas/j;->V:I

    if-ne v2, v4, :cond_9

    iget v0, v0, Lcom/fl/saas/j;->W:I

    if-lez v0, :cond_9

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->getRewardTime:I

    :cond_9
    sget-object v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    invoke-virtual {v0}, Lcom/fl/saas/N0;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->initVideoView()V

    new-instance v0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    new-instance v2, Lcom/fl/saas/adx/base/activity/l;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/activity/l;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v0, v2}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->start(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$VolumeChangeListener;)V

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    sget v2, Lcom/fl/saas/R$string;->fl_adx_video_not_ready:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/fl/saas/N0;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->finishDelayed()V

    :goto_3
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->rl_progress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_countdown:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_watch_tips:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_watch_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    sget v1, Lcom/fl/saas/R$string;->fl_adx_tap_to_browse_full:I

    iget v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->watchTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    return-void

    :goto_4
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->finishDelayed()V

    return-void
.end method

.method private initVideoView()V
    .locals 11

    sget-object v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    if-nez v0, :cond_1

    :cond_0
    move-object v6, p0

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mADImgContainerRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->checkShakeView()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v3, v3, Lcom/fl/saas/j;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->enableQuickApp(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->setEnableQuickApp(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    new-instance v2, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v0, v2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->setStatusListener(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v0, v0, Lcom/fl/saas/j;->O0:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsSoundEnable:Z

    const/4 v0, -0x1

    sput v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->currentTime:I

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    sget-object v4, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    invoke-virtual {v4}, Lcom/fl/saas/N0;->c()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/fl/saas/x;->a(Lcom/fl/saas/j;Z)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pS0()V

    new-instance v5, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;

    const-wide/16 v7, 0x7d0

    const-wide/16 v9, 0x7d0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;JJ)V

    iput-object v5, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_5

    iget-boolean v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fl_media_view:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    iget-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v4, v4, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    iput-boolean v3, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isVideo:Z

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    new-instance v0, Lcom/fl/saas/g1;

    iget-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v4, v4, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    const v5, 0x19000

    invoke-direct {v0, v5, v4}, Lcom/fl/saas/g1;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/fl/saas/h1;->a()Lcom/fl/saas/h1;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/fl/saas/h1;->a(Landroid/content/Context;Lcom/fl/saas/g1;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_4

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/fl/saas/adx/base/activity/f;

    invoke-direct {v5, p0}, Lcom/fl/saas/adx/base/activity/f;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/fl/saas/adx/base/activity/g;

    invoke-direct {v5, p0}, Lcom/fl/saas/adx/base/activity/g;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/fl/saas/adx/base/activity/h;

    invoke-direct {v5, p0}, Lcom/fl/saas/adx/base/activity/h;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_4
    iget-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v1, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v4, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->progressDialog:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-boolean v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fl_media_view:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    iget-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v4, v4, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7
    iput-boolean v1, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isVideo:Z

    iget-boolean v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    if-nez v0, :cond_8

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v0, v0, Lcom/fl/saas/j;->S:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->getRewardTime:I

    :cond_8
    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->X:Ljava/lang/String;

    const-string v4, "A"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v3, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canAutoClick:Z

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v0, v0, Lcom/fl/saas/j;->S:I

    const/4 v4, 0x5

    if-le v0, v4, :cond_9

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    iput-wide v7, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickTime:D

    sub-int/2addr v0, v4

    iput v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickStartTime:I

    goto :goto_1

    :cond_9
    int-to-double v4, v0

    iput-wide v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickTime:D

    iput v1, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->autoClickStartTime:I

    :cond_a
    :goto_1
    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    iget-object v4, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v5, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v5, v5, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->startDurationCountdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    if-eqz v0, :cond_c

    sget v4, Lcom/fl/saas/R$string;->fl_adx_video_address_empty:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/fl/saas/N0;->a(ILjava/lang/String;)V

    :cond_c
    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    :goto_2
    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_adinfo_logo_imageview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->logoImageView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_adinfo_title_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->fl_activity_reward_video_adinfo_desc_textview:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v4, Lcom/fl/saas/R$id;->fl_activity_reward_video_adinfo_button:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v5, v5, Lcom/fl/saas/j;->x1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v5, v5, Lcom/fl/saas/j;->x1:Ljava/lang/String;

    goto :goto_3

    :cond_e
    iget-object v5, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v5, v5, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v5, v5, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    goto :goto_3

    :cond_f
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    iget-object v3, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->logoImageView:Landroid/widget/ImageView;

    new-instance v7, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$4;

    invoke-direct {v7, p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$4;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v2, v3, v5, v7}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;)V

    goto :goto_4

    :cond_10
    iget-object v3, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->logoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v2, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v2, v2, Lcom/fl/saas/j;->o0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->s1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    iget-object v0, v0, Lcom/fl/saas/j$c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget v0, Lcom/fl/saas/R$string;->fl_adx_learn_more:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_11
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :goto_5
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->finishDelayed()V

    return-void
.end method

.method private initViews()V
    .locals 2

    :try_start_0
    sget v0, Lcom/fl/saas/R$id;->tv_has_reward:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_has_reward:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->s2s_activity_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->progressDialog:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_surfaceview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    sget v0, Lcom/fl/saas/R$id;->fl_media_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fl_media_view:Landroid/widget/FrameLayout;

    sget v0, Lcom/fl/saas/R$id;->fl_webview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    sget v0, Lcom/fl/saas/R$id;->rl_progress:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->rl_progress:Landroid/widget/RelativeLayout;

    sget v0, Lcom/fl/saas/R$id;->complete_progressBar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->complete_progressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/fl/saas/R$id;->tv_progress_tips:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_progress_tips:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->ll_countdown:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_countdown:Landroid/widget/LinearLayout;

    sget v0, Lcom/fl/saas/R$id;->ll_watch_tips:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_watch_tips:Landroid/widget/LinearLayout;

    sget v0, Lcom/fl/saas/R$id;->tv_watch_tips:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_watch_tips:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_imageview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mImageView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_reward_tips:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mRewardTipsView:Landroid/widget/LinearLayout;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_auto_click:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickView:Landroid/view/ViewGroup;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_auto_click_time:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickTimeView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_auto_click_close:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickCloseView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_close_imageview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_skip_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_duration_countdown_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_sound:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_adinfo_container_relativelayout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mADImgContainerRelativeLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/fl/saas/R$id;->ll_shake:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_shake:Landroid/widget/LinearLayout;

    sget v0, Lcom/fl/saas/R$id;->yd_shake_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/widget/ShakeView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickCloseView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mADImgContainerRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->setClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mRewardTipsView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->setClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_shake:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->setClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic j(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialogIsShow:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isVideo:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    .line 45
    .line 46
    iget v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->videoDuration:I

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/x;->c(Lcom/fl/saas/j;I)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/fl/saas/N0;->f()V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private jump()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fC0:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pC0()V

    sget-object v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasClick:Z

    invoke-static {}, Lcom/fl/saas/J;->b()Lcom/fl/saas/J;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fl/saas/J;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasJump:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canAutoClick:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasRefuseJump:Z

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-static {v1}, Lcom/fl/saas/b;->a(Lcom/fl/saas/j;)I

    move-result v2

    iput v2, v1, Lcom/fl/saas/j;->q1:I

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v1, v2}, Lcom/fl/saas/x;->c(Lcom/fl/saas/j;)V

    invoke-static {}, Lcom/fl/saas/v;->b()Lcom/fl/saas/v;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v1, p0, v2}, Lcom/fl/saas/v;->b(Landroid/content/Context;Lcom/fl/saas/j;)V

    sget-object v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    invoke-virtual {v1}, Lcom/fl/saas/N0;->e()V

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canClickReward:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->checkReward()V

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mRewardTipsView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->ll_shake:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->yd_shake_view:Lcom/fl/saas/adx/base/widget/ShakeView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private pAcD()V
    .locals 5

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fC0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fE0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fP0:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mR0:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tT0:J

    iget-wide v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tE1:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->eAcT()V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mR0:Ljava/lang/Runnable;

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private pAcP()V
    .locals 6

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fC0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fE0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fP0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mR0:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fP0:Z

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tE1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tS1:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tE1:J

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->eSx()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pAcRs()V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fC0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fE0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mR0:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fP0:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fP0:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tS1:J

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->sSx()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pAcD()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pC0()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tT0:J

    iput-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tE1:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fP0:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mR0:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mR0:Ljava/lang/Runnable;

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->eSx()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/c1;->c()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSx:Lcom/fl/saas/c1;

    :cond_1
    return-void
.end method

.method private pJ0()V
    .locals 3

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->gVx()F

    move-result v0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->gVy()F

    move-result v1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->gVz()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pJ01(FFF)V

    return-void
.end method

.method private pJ01(FFF)V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/16 v3, -0x3e7

    if-eqz v2, :cond_1

    cmpl-float v2, p2, v1

    if-eqz v2, :cond_1

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1

    iput v3, v0, Lcom/fl/saas/j;->E1:I

    iput v3, v0, Lcom/fl/saas/j;->F1:I

    iput v3, v0, Lcom/fl/saas/j;->I1:I

    iput v3, v0, Lcom/fl/saas/j;->J1:I

    iput v3, v0, Lcom/fl/saas/j;->G1:I

    iput v3, v0, Lcom/fl/saas/j;->H1:I

    iput v3, v0, Lcom/fl/saas/j;->K1:I

    iput v3, v0, Lcom/fl/saas/j;->L1:I

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/fl/saas/j;->M1:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lcom/fl/saas/j;->N1:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    mul-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lcom/fl/saas/j;->O1:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    sget-object p2, Lcom/fl/saas/j$b;->b:Lcom/fl/saas/j$b;

    iput-object p2, p1, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    goto :goto_0

    :cond_1
    iput v3, v0, Lcom/fl/saas/j;->M1:I

    iput v3, v0, Lcom/fl/saas/j;->N1:I

    iput v3, v0, Lcom/fl/saas/j;->O1:I

    iget p1, v0, Lcom/fl/saas/j;->C2:I

    iput p1, v0, Lcom/fl/saas/j;->E1:I

    iget p1, v0, Lcom/fl/saas/j;->D2:I

    iput p1, v0, Lcom/fl/saas/j;->F1:I

    iget p1, v0, Lcom/fl/saas/j;->E2:I

    iput p1, v0, Lcom/fl/saas/j;->G1:I

    iget p1, v0, Lcom/fl/saas/j;->F2:I

    iput p1, v0, Lcom/fl/saas/j;->H1:I

    iget p1, v0, Lcom/fl/saas/j;->G2:I

    iput p1, v0, Lcom/fl/saas/j;->I1:I

    iget p1, v0, Lcom/fl/saas/j;->H2:I

    iput p1, v0, Lcom/fl/saas/j;->J1:I

    iget p1, v0, Lcom/fl/saas/j;->I2:I

    iput p1, v0, Lcom/fl/saas/j;->K1:I

    iget p1, v0, Lcom/fl/saas/j;->J2:I

    iput p1, v0, Lcom/fl/saas/j;->L1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iput-wide p1, p3, Lcom/fl/saas/j;->S1:J

    iget v0, p3, Lcom/fl/saas/j;->K2:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    iput-wide p1, p3, Lcom/fl/saas/j;->R1:J

    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    const/4 p2, 0x1

    iput p2, p1, Lcom/fl/saas/j;->L2:I

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->jump()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    const/4 p2, 0x0

    iput p2, p1, Lcom/fl/saas/j;->L2:I

    :cond_2
    :goto_1
    return-void
.end method

.method private pS0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fl/saas/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fC0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fE0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pC0()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->sSx()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v0, v0, Lcom/fl/saas/j;->B2:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tT0:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tE1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tS1:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fP0:Z

    new-instance v0, Lcom/fl/saas/adx/base/activity/e;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/activity/e;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mR0:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsCurrentPage:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->fP0:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->eSx()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pAcD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private pauseDurationCountdown()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private pauseVideo()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->currentTime:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPlaying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPlaying:Z

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

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

.method private playEnd(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoCompleted:Z

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->checkReward()V

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->videoDuration:I

    div-int/lit16 v2, v2, 0x3e8

    iput v2, v1, Lcom/fl/saas/j;->X1:I

    iget v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->curPosition:I

    div-int/lit16 v2, v2, 0x3e8

    iput v2, v1, Lcom/fl/saas/j;->Z1:I

    const/4 v2, 0x2

    iput v2, v1, Lcom/fl/saas/j;->c2:I

    iput p1, v1, Lcom/fl/saas/j;->b2:I

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v1, v2}, Lcom/fl/saas/x;->j(Lcom/fl/saas/j;)V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->videoDuration:I

    invoke-virtual {v1, v2, v3}, Lcom/fl/saas/x;->b(Lcom/fl/saas/j;I)V

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasJump:Z

    if-nez v1, :cond_2

    if-ne p1, v0, :cond_2

    const-string p1, "A"

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasRefuseJump:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->jump()V

    :cond_2
    sget-object p1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/fl/saas/N0;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private resumeVideo()V
    .locals 4

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoPrepared:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoPrepared:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoCompleted:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialogIsShow:Z

    if-nez v1, :cond_4

    sget v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->currentTime:I

    if-lez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    sget v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->currentTime:I

    int-to-long v1, v1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/beizi/ad/v2/activity/a;->a(Landroid/media/MediaPlayer;JI)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->currentTime:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->changeSurfaceViewSize()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    iput v1, v0, Lcom/fl/saas/j;->d2:I

    :cond_3
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPlaying:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPlaying:Z

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v0, v1}, Lcom/fl/saas/x;->h(Lcom/fl/saas/j;)V

    return-void

    :cond_4
    sget v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->currentTime:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_5
    return-void
.end method

.method private sSx()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/j;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->gSx()Lcom/fl/saas/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->b()V

    :cond_0
    return-void
.end method

.method public static setAdInfo(Lcom/fl/saas/N0;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    .line 2
    .line 3
    return-void
.end method

.method private setClickListener(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lcom/fl/saas/adx/util/ViewHelper;->onSingleClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/fl/saas/adx/base/activity/d;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/activity/d;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private setDurationCountdown(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasReward:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->checkReward()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    sget v4, Lcom/fl/saas/R$string;->fl_adx_reward_claimed:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget v4, Lcom/fl/saas/R$string;->fl_adx_your_reward_unlocks_in:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_progress_tips:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasReward:Z

    const/16 v4, 0x64

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->complete_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_progress_tips:Landroid/widget/TextView;

    sget p2, Lcom/fl/saas/R$string;->fl_adx_task_complete_multiline:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_has_reward:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mRewardTipsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->complete_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->complete_progressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->getRewardTime:I

    if-lez v1, :cond_6

    const-wide/16 v5, 0x64

    mul-long/2addr p1, v5

    int-to-long v5, v1

    div-long/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    sub-int/2addr v4, p1

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->complete_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_6
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_progress_tips:Landroid/widget/TextView;

    sget p2, Lcom/fl/saas/R$string;->fl_adx_swipe_and_explore_for:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    iget-boolean p2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isVideo:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsVideoCompleted:Z

    if-nez p2, :cond_8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isPreviewMode:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCanScroll:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->canScroll()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCanScroll:Z

    iput-boolean v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->previewCanContinue:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_progress_tips:Landroid/widget/TextView;

    sget p2, Lcom/fl/saas/R$string;->fl_adx_continue_scrolling_to_get:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :goto_3
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private startDurationCountdown()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startVideo()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->changeSurfaceViewSize()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->progressDialog:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->startDurationCountdown()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getSoundEnableStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsSoundEnable:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_close_imageview:I

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->videoDuration:I

    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/x;->a(Lcom/fl/saas/j;I)V

    sget-object p1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->manager:Lcom/fl/saas/N0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fl/saas/N0;->f()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_skip_textview:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_5

    :try_start_0
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasReward:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isVideo:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mDurationCountdownTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mCloseImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSkipTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    iget v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->videoDuration:I

    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/x;->c(Lcom/fl/saas/j;I)V

    invoke-direct {p0, v3}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->playEnd(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    if-nez p1, :cond_4

    new-instance p1, Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/fl/saas/R$string;->fl_adx_skipping_at_this:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setContent(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setCanDismiss(Z)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$7;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$7;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setOnCancleListener(Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnCancleListener;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/activity/k;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/activity/k;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setOnSubmitListener(Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    :cond_4
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pauseVideo()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialogIsShow:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pAcP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_adinfo_container_relativelayout:I

    if-eq p1, v0, :cond_a

    sget v0, Lcom/fl/saas/R$id;->ll_shake:I

    if-eq p1, v0, :cond_a

    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_reward_tips:I

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_sound:I

    if-ne p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->systemMute:Z

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->getSoundEnableStatus()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->setSoundEnable(Z)V

    return-void

    :cond_7
    sget v0, Lcom/fl/saas/R$id;->fl_activity_reward_video_auto_click_close:I

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAutoClickView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iput-boolean v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->canAutoClick:Z

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasRefuseJump:Z

    :cond_9
    return-void

    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->jump()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/fl/saas/K;->a(Landroid/app/Activity;)V

    invoke-static {p0, v1}, Lcom/fl/saas/K;->a(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "draw_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {v2}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-ne v1, v0, :cond_1

    sget p1, Lcom/fl/saas/R$layout;->fl_adx_activity_land_reward_video:I

    goto :goto_2

    :cond_1
    sget p1, Lcom/fl/saas/R$layout;->fl_adx_activity_reward_video:I

    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->initViews()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->initDatas()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/fl/saas/v;->b()Lcom/fl/saas/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/v;->a()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->stop()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->volumeObserver:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->logoImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mTimer:Landroid/os/CountDownTimer;

    :cond_4
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    :cond_5
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pauseDurationCountdown()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pC0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->signUrlWebView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsCurrentPage:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pAcP()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsCurrentPage:Z

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->skipDialogIsShow:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->pAcRs()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsFirstCreateSurfaceView:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->resumeVideo()V

    :cond_1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->hasClick:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/fl/saas/J;->b()Lcom/fl/saas/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/J;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-static {}, Lcom/fl/saas/J;->b()Lcom/fl/saas/J;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fl/saas/J;->a(J)V

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->watchTime:I

    if-lt v0, v2, :cond_3

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->isWatchMode:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_watch_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v1, Lcom/fl/saas/R$string;->fl_adx_task_complete:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->checkReward()V

    return-void

    :cond_3
    sub-int/2addr v2, v0

    iput v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->watchTime:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/fl/saas/R$string;->fl_adx_keep_browsing_for:I

    iget v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->watchTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->tv_watch_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget v1, Lcom/fl/saas/R$string;->fl_adx_tap_to_proceed:I

    iget v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->watchTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/fl/saas/R$string;->fl_adx_browse_inside_the_app:I

    iget v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->watchTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setSoundEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mIsSoundEnable:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    sget v0, Lcom/fl/saas/R$drawable;->fl_adx_volume_on:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {p1, v0}, Lcom/fl/saas/x;->k(Lcom/fl/saas/j;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->systemMute:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->mSoundImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    sget v0, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
