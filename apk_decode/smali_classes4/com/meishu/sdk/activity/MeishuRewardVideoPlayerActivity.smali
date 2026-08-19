.class public Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;
.super Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;
.source "SourceFile"


# static fields
.field public static final Action_text:Ljava/lang/String; = "Action_text"

.field public static final Ad_content:Ljava/lang/String; = "Ad_content"

.field public static final Ad_icon_url:Ljava/lang/String; = "Ad_icon_url"

.field public static final Ad_title:Ljava/lang/String; = "Ad_title"

.field public static final Ad_type:Ljava/lang/String; = "Ad_type"

.field public static final Clickable_range:Ljava/lang/String; = "Clickable_range"

.field public static final Clk_type:Ljava/lang/String; = "clk_type"

.field public static final Close_btn:Ljava/lang/String; = "Close_btn"

.field public static final Event_url:Ljava/lang/String; = "event_url"

.field public static final From_logo:Ljava/lang/String; = "From_logo"

.field public static final Image_src:Ljava/lang/String; = "Image_src"

.field public static final Interaction_type:Ljava/lang/String; = "Interaction_type"

.field public static final Power_count:Ljava/lang/String; = "power_count"

.field public static final Power_delay:Ljava/lang/String; = "power_delay"

.field public static final Power_index:Ljava/lang/String; = "power_index"

.field public static final Power_index2:Ljava/lang/String; = "Power_index2"

.field public static final Reward_tmp_id:Ljava/lang/String; = "reward_tmp_id"

.field public static final Reward_tmp_time:Ljava/lang/String; = "reward_tmp_time"

.field public static final Reward_tmp_type:Ljava/lang/String; = "reward_tmp_type"

.field public static final Reward_tmp_url:Ljava/lang/String; = "reward_tmp_url"

.field private static final TAG:Ljava/lang/String; = "MeishuRewardVideoPlayer"

.field public static final Video_complete_key:Ljava/lang/String; = "Video_complete_key"

.field public static final Video_cover:Ljava/lang/String; = "Video_cover"

.field public static final Video_endcover:Ljava/lang/String; = "Video_endcover"

.field public static final Video_keep_time:Ljava/lang/String; = "Video_keep_time"

.field public static final Video_mute_key:Ljava/lang/String; = "Video_mute_key"

.field public static final Video_one_half_key:Ljava/lang/String; = "Video_one_half_key"

.field public static final Video_one_quarter_key:Ljava/lang/String; = "Video_one_quarter_key"

.field public static final Video_pause_key:Ljava/lang/String; = "Video_pause_key"

.field public static final Video_replay_key:Ljava/lang/String; = "Video_replay_key"

.field public static final Video_resume_key:Ljava/lang/String; = "Video_resume_key"

.field public static final Video_start_key:Ljava/lang/String; = "Video_start_key"

.field public static final Video_three_quarter_key:Ljava/lang/String; = "Video_three_quarter_key"

.field public static final Video_unmute_key:Ljava/lang/String; = "Video_unmute_key"

.field public static final Web_temp_id:Ljava/lang/String; = "web_temp_id"

.field public static final Web_temp_url:Ljava/lang/String; = "web_temp_url"

.field private static ad:Lcom/meishu/sdk/platform/ms/c; = null

.field private static baseFullScreenVideoAdList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/ad/IAd;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean; = null

.field private static isMute:Z = false

.field public static final local_ad_id_key:Ljava/lang/String; = "local_ad_id_key"

.field public static final orientation_key:Ljava/lang/String; = "orientation_key"

.field public static rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;


# instance fields
.field private actionText:Ljava/lang/String;

.field private adType:I

.field private final appStateListener:Lcom/meishu/sdk/core/service/a;

.field private bQuery:Lcom/meishu/sdk/core/bquery/i;

.field private volatile calledRewardError:Z

.field private canDisplayNewRewardTemp:Z

.field private canDisplayRewardTemp:Z

.field private clkActType:I

.field private clkPower:I

.field private clk_type:I

.field private close_btn:I

.field private eventUrl:[Ljava/lang/String;

.field private hasExposed:Z

.field private hasImageComplete:Z

.field private imageHeight:I

.field private imageWidth:I

.field private image_src:Ljava/lang/String;

.field private interaction_type:I

.field private isActivityPause:Z

.field private isAdExposed:Z

.field private volatile isCalledStartRender:Z

.field private isFirstInitClkType:Z

.field private isHideShakeView:Z

.field private volatile isImgSuccess:Ljava/lang/Boolean;

.field private volatile isRewardComplete:Z

.field private volatile isRewardTimeOver:Z

.field private isShake:Z

.field private isShakeInit:Z

.field private volatile isStarted:Z

.field private isWebStarted:Z

.field private final jsEventListener:Lcom/meishu/sdk/core/webview/listener/b;

.field private volatile keepTimeFinish:Z

.field public keepTimeFinishListener:Lcom/meishu/sdk/meishu_ad/n0$b;

.field private localAdId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImageCurrentTime:I

.field private mVideoTotalTime:J

.field private mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field private mediaViewContainer:Landroid/view/ViewGroup;

.field private onCompletedInvoked:Z

.field private onReward:Z

.field private oneHalfPerformed:Z

.field private oneQuarterPerformed:Z

.field private power_count:I

.field private power_delay:I

.field private power_index:I

.field private power_index2:I

.field private processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

.field private volatile receiveShakeOrderFromJs:Z

.field private rewardImageview:Lcom/meishu/sdk/core/view/gif/GifImageView;

.field private rewardTmpId:I

.field private volatile rewardTmpLoadRes:Ljava/lang/Boolean;

.field private rewardTmpTime:I

.field private rewardTmpType:I

.field private rewardTmpUrl:Ljava/lang/String;

.field private rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

.field private shakeId:I

.field private shakeImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

.field private shakeResult:Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

.field private threeQuarterPerformed:Z

.field private totalTime:I

.field private touchContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

.field private updateProcessRunnable:Ljava/lang/Runnable;

.field private updateTime:Ljava/lang/Runnable;

.field private volatile videoLoaded:Ljava/lang/Boolean;

.field private video_close:[Ljava/lang/String;

.field private video_complete:[Ljava/lang/String;

.field private video_cover:Ljava/lang/String;

.field private video_endcover:Ljava/lang/String;

.field private video_keep_time:J

.field private video_mute:[Ljava/lang/String;

.field private video_one_half:[Ljava/lang/String;

.field private video_one_quarter:[Ljava/lang/String;

.field private video_pause:[Ljava/lang/String;

.field private video_replay:[Ljava/lang/String;

.field private video_resume:[Ljava/lang/String;

.field private video_skip:[Ljava/lang/String;

.field private video_start:[Ljava/lang/String;

.field private video_three_quarter:[Ljava/lang/String;

.field private video_unmute:[Ljava/lang/String;

.field private webTempId:I

.field private webTempUrl:Ljava/lang/String;

.field private webviewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isMute:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->close_btn:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isAdExposed:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isFirstInitClkType:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isCalledStartRender:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->hasImageComplete:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->receiveShakeOrderFromJs:Z

    .line 17
    .line 18
    const/16 v0, 0x3a98

    .line 19
    .line 20
    iput v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->totalTime:I

    .line 21
    .line 22
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateTime:Ljava/lang/Runnable;

    .line 28
    .line 29
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$19;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$19;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->keepTimeFinishListener:Lcom/meishu/sdk/meishu_ad/n0$b;

    .line 35
    .line 36
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateProcessRunnable:Ljava/lang/Runnable;

    .line 42
    .line 43
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->jsEventListener:Lcom/meishu/sdk/core/webview/listener/b;

    .line 49
    .line 50
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$23;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$23;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->appStateListener:Lcom/meishu/sdk/core/service/a;

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onReward:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onReward:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isAdExposed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1102(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clkActType:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clkPower:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpLoadRes:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1402(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpLoadRes:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onLoadRewardTmpRes(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/webview/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isWebStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1702(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isWebStarted:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webviewContainer:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->actionText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->pauseVideo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->showProgressBar()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->hideShakeView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShake:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->hideNonCreativeElements()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->notifyH5StartRender()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeUI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mNotifyRewarded()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->restoreNonCreativeElements()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->jumpEndCover(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isLoadingRes()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->keepTimeFinish:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->keepTimeFinish:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isActivityPause:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startShakeAndTurn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeVideo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadImageError()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/platform/ms/splash/ShakeResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeResult:Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3702(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Lcom/meishu/sdk/platform/ms/splash/ShakeResult;)Lcom/meishu/sdk/platform/ms/splash/ShakeResult;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeResult:Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$3800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeId:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->notifyH5ActionShakeOrTurn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isImgSuccess:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4102(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isImgSuccess:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$4200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isRewardTimeOver:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$4202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isRewardTimeOver:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;[B)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isGif([B)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardImageview:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4502(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->imageWidth:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4602(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->imageHeight:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_keep_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$4800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->totalTime:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$4802(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->totalTime:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardEventUrlReport(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->initWebView(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isNewRewardTempDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$5200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onAdExposed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startUpdateProcess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mImageCurrentTime:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$5412(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mImageCurrentTime:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mImageCurrentTime:I

    .line 5
    .line 6
    return v0
.end method

.method public static synthetic access$5500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->notifyVideoProgress(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$5700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardBroadcast()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateTime:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5902(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->close_btn:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$6000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->oneQuarterPerformed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$6002(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->oneQuarterPerformed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$6100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->oneHalfPerformed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$6102(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->oneHalfPerformed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$6200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->threeQuarterPerformed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$6202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->threeQuarterPerformed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$6300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onCompletedInvoked:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$6302(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onCompletedInvoked:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$6400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mVideoTotalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$6402(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mVideoTotalTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static synthetic access$6500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->showEndCoverUI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->videoLoaded:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$6702(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->videoLoaded:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$6800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Lcom/meishu/sdk/meishu_ad/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startVideo(Lcom/meishu/sdk/meishu_ad/n0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->getVideoRewardTotalTime(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->closeAdOrActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$7000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeCountDown()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$7100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->initClkType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$7200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$7300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$7400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeCountDown(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$7500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->removeCountDown()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$7602(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->receiveShakeOrderFromJs:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$7700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startShakeAndTurn(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$7800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isCalledStartRender:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isMute:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic access$802(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isMute:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 2
    .line 3
    return-object p0
.end method

.method private applyCloseBtnVisibility()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->close_btn:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 8
    .line 9
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_skip_button:I

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 21
    .line 22
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 39
    .line 40
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_skip_button:I

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 52
    .line 53
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 66
    .line 67
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 79
    .line 80
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_skip_button:I

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static clearRewardMediaView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 3
    .line 4
    return-void
.end method

.method private clearRewardTmp()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/meishu/sdk/core/webview/q;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->b:Lcom/meishu/sdk/core/webview/f;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/meishu/sdk/core/webview/f;->g:Lcom/meishu/sdk/core/webview/listener/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->c:Lcom/meishu/sdk/core/webview/g;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_3
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/g;->a:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception v0

    .line 34
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    .line 36
    .line 37
    :catch_2
    :cond_0
    :goto_1
    :try_start_5
    iput-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_3
    return-void
.end method

.method private closeAdOrActivity()V
    .locals 2

    .line 1
    const-string v0, "broadcast_onclosed"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private closeWebView()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webviewContainer:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/webkit/WebView;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webviewContainer:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webviewContainer:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/meishu/sdk/core/webview/q;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private getImageBytes(Landroid/content/Context;I)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x1000

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq v2, v1, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p1

    .line 37
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method private getTempId()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webTempId:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpId:I

    .line 9
    .line 10
    return v0
.end method

.method private getTempUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webTempUrl:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpUrl:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method private getVideoRewardTotalTime(J)I
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/16 v1, 0x3a98

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getDuration()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-long v2, v0

    .line 16
    cmp-long v0, p1, v2

    .line 17
    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    long-to-int p1, p1

    .line 21
    return p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getDuration()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getDuration()I

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return p1

    .line 39
    :cond_1
    return v1

    .line 40
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    return v1
.end method

.method private handleDownloadView(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    sget-object p1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :goto_0
    return-void

    .line 10
    :cond_1
    sget p1, Lcom/meishu/sdk/R$id;->ms_download_layer_textview:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/view/DownloadView;->bindClickableDownloadInfo(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$21;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$21;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private hideNonCreativeElements()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 2
    .line 3
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_skip_button:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 17
    .line 18
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 30
    .line 31
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_voice_button:I

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 43
    .line 44
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_playing_ad_info_container:I

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 56
    .line 57
    sget v2, Lcom/meishu/sdk/R$id;->ms_ad_info_container:I

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 69
    .line 70
    sget v2, Lcom/meishu/sdk/R$id;->ms_include_ad_tag:I

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 82
    .line 83
    sget v2, Lcom/meishu/sdk/R$id;->ms_include_ad_tag_end:I

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 95
    .line 96
    sget v2, Lcom/meishu/sdk/R$id;->ms_download_layer_textview:I

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 108
    .line 109
    sget v2, Lcom/meishu/sdk/R$id;->ms_shake_root_view:I

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 121
    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :cond_0
    return-void
.end method

.method private hideShakeView()V
    .locals 2

    .line 1
    const-string v0, "MeishuRewardVideoPlayer"

    .line 2
    .line 3
    const-string v1, "showRewardWeb, pauseVideo"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isHideShakeView:Z

    .line 10
    .line 11
    return-void
.end method

.method private initClkType()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isFirstInitClkType:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isFirstInitClkType:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/meishu/sdk/core/utils/h;->a()V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 12
    .line 13
    iget v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/h;->a(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private initShakeAndTurn(Z)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_shake_text:I

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lcom/meishu/sdk/R$id;->ms_shake_text_bottom:I

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    sget v2, Lcom/meishu/sdk/R$id;->ms_shake_root_view:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iget v3, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 28
    .line 29
    sget-object v4, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ne v3, v5, :cond_7

    .line 36
    .line 37
    iget v3, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 38
    .line 39
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget v3, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->interaction_type:I

    .line 47
    .line 48
    if-ne v3, v5, :cond_0

    .line 49
    .line 50
    const-string v3, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_0
    const-string v3, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v3, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 66
    .line 67
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget v3, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->interaction_type:I

    .line 74
    .line 75
    if-ne v3, v5, :cond_2

    .line 76
    .line 77
    const-string v3, "\u626d\u4e00\u626d\u6216\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string v3, "\u626d\u4e00\u626d\u6216\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_0
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/meishu/sdk/core/utils/h;->a()V

    .line 92
    .line 93
    .line 94
    iget v0, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {v0, v3}, Lcom/meishu/sdk/core/utils/h;->a(II)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 105
    .line 106
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    iput-boolean v5, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShake:Z

    .line 113
    .line 114
    if-nez p1, :cond_4

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :cond_4
    sget v0, Lcom/meishu/sdk/R$raw;->ms_new_shake:I

    .line 121
    .line 122
    invoke-direct {v1, v1, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->getImageBytes(Landroid/content/Context;I)[B

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    array-length v3, v0

    .line 129
    if-lez v3, :cond_5

    .line 130
    .line 131
    iget-object v3, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 132
    .line 133
    invoke-virtual {v3, v0, v5}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([BI)V

    .line 134
    .line 135
    .line 136
    iget-object v0, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 139
    .line 140
    .line 141
    :cond_5
    iget v0, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeId:I

    .line 142
    .line 143
    if-nez v0, :cond_6

    .line 144
    .line 145
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iput v0, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeId:I

    .line 154
    .line 155
    :cond_6
    iget v0, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 156
    .line 157
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->b(I)I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v3

    .line 165
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    iget v7, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->power_index2:I

    .line 170
    .line 171
    iget v8, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->power_index:I

    .line 172
    .line 173
    iget v0, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->power_delay:I

    .line 174
    .line 175
    int-to-long v10, v0

    .line 176
    iget v12, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->power_count:I

    .line 177
    .line 178
    iget v13, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeId:I

    .line 179
    .line 180
    new-instance v15, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;

    .line 181
    .line 182
    invoke-direct {v15, v1, v3, v4, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;JLandroid/widget/LinearLayout;)V

    .line 183
    .line 184
    .line 185
    const/4 v14, 0x0

    .line 186
    invoke-virtual/range {v6 .. v15}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IIIJIIILcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;)V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, v5}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    :cond_7
    return-void

    .line 197
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method private initWebView(J)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpLoadRes:Ljava/lang/Boolean;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpTime:I

    .line 22
    .line 23
    int-to-long v0, v0

    .line 24
    const-wide/16 v2, 0x3e8

    .line 25
    .line 26
    mul-long/2addr v0, v2

    .line 27
    cmp-long p1, v0, p1

    .line 28
    .line 29
    if-lez p1, :cond_1

    .line 30
    .line 31
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpLoadRes:Ljava/lang/Boolean;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$7;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$7;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-wide/16 v0, 0x7d0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-wide/16 v0, 0xbb8

    .line 53
    .line 54
    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/meishu/sdk/core/webview/q;

    .line 58
    .line 59
    invoke-direct {p1}, Lcom/meishu/sdk/core/webview/q;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 65
    .line 66
    .line 67
    iput-object p2, p1, Lcom/meishu/sdk/core/webview/q;->g:Lcom/meishu/sdk/core/webview/j;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->appStateListener:Lcom/meishu/sdk/core/service/a;

    .line 70
    .line 71
    invoke-static {p2}, Lcom/meishu/sdk/core/service/d;->a(Lcom/meishu/sdk/core/service/e;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->getTempUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    sget-object v3, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->ad:Lcom/meishu/sdk/platform/ms/c;

    .line 79
    .line 80
    new-instance v5, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$9;

    .line 81
    .line 82
    invoke-direct {v5, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$9;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->jsEventListener:Lcom/meishu/sdk/core/webview/listener/b;

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    :try_start_0
    new-instance v4, Lcom/meishu/sdk/core/webview/n;

    .line 90
    .line 91
    invoke-direct {v4}, Lcom/meishu/sdk/core/webview/n;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, v4, Lcom/meishu/sdk/core/webview/n;->a:Ljava/lang/Integer;

    .line 99
    .line 100
    new-instance v6, Lcom/meishu/sdk/core/webview/p;

    .line 101
    .line 102
    invoke-direct {v6, p1, p2, v3, p0}, Lcom/meishu/sdk/core/webview/p;-><init>(Lcom/meishu/sdk/core/webview/q;Lcom/meishu/sdk/core/webview/listener/d;Lcom/meishu/sdk/platform/ms/c;Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Lcom/meishu/sdk/core/webview/o;->a(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    move-object v1, p0

    .line 112
    :try_start_1
    invoke-static/range {v1 .. v6}, Lcom/meishu/sdk/core/webview/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/webview/n;Lcom/meishu/sdk/core/webview/listener/a;Lcom/meishu/sdk/core/webview/listener/d;)Lcom/meishu/sdk/core/webview/s;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    goto :goto_2

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    :goto_1
    move-object p1, v0

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move-object v1, p0

    .line 121
    move-object p2, v7

    .line 122
    :goto_2
    if-eqz p2, :cond_4

    .line 123
    .line 124
    iget-object v0, p2, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 125
    .line 126
    iput-object v0, p1, Lcom/meishu/sdk/core/webview/q;->a:Landroid/webkit/WebView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    :cond_4
    move-object v7, p2

    .line 129
    goto :goto_4

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    move-object v1, p0

    .line 132
    goto :goto_1

    .line 133
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    const/4 p1, 0x1

    .line 137
    const/4 p2, -0x1

    .line 138
    invoke-interface {v5, v2, p1, v8, p2}, Lcom/meishu/sdk/core/webview/listener/g;->onPageFinished(Ljava/lang/String;ZZI)Z

    .line 139
    .line 140
    .line 141
    :goto_4
    iput-object v7, v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 142
    .line 143
    return-void
.end method

.method private isGif([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    :try_start_0
    new-array v2, v1, [B

    .line 4
    .line 5
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/math/BigInteger;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p1, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v2, "47494638"

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return v0
.end method

.method private isLoadingRes()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isImgSuccess:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->videoLoaded:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    return v1
.end method

.method private isNewRewardTempDisplay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method private isNewRewardTempLoadingOrSuccess()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpLoadRes:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private isShowedRewardTemp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webviewContainer:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method private jumpEndCover(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->O:Z

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->l()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->f()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onCompletedInvoked:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onReward:Z

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->showEndCoverUI()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private loadImageError()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isImgSuccess:Ljava/lang/Boolean;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->videoLoaded:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpLoadRes:Ljava/lang/Boolean;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpLoadRes:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->calledRewardError:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->calledRewardError:Z

    .line 37
    .line 38
    const-string v0, "broadcast_on_video_error"

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    :goto_1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ge v1, v0, :cond_4

    .line 51
    .line 52
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/meishu/sdk/platform/ms/a;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clearRewardMediaView()V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    iput-object v2, v0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private loadRewardImage()V
    .locals 4

    .line 1
    :try_start_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_reward_ad_image:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardImageview:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 10
    .line 11
    sget v0, Lcom/meishu/sdk/R$id;->ms_reward_voice_button:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$12;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$12;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v2, 0xbb8

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadImageError()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private loadRewardVideo()V
    .locals 6

    .line 1
    :try_start_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_media_video:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaViewContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 12
    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->getVideoView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setActivityForLifecycle(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    sget-boolean v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isMute:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 35
    .line 36
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_voice_button:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 43
    .line 44
    sget v1, Lcom/meishu/sdk/R$drawable;->ms_voice_closed:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->c(I)Lcom/meishu/sdk/core/bquery/e;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 58
    .line 59
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_voice_button:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 66
    .line 67
    sget v1, Lcom/meishu/sdk/R$drawable;->ms_voice_open:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->c(I)Lcom/meishu/sdk/core/bquery/e;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_cover:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_endcover:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-wide v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_keep_time:J

    .line 96
    .line 97
    const-wide/16 v2, 0x3e8

    .line 98
    .line 99
    mul-long/2addr v0, v2

    .line 100
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 101
    .line 102
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoCoverScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 108
    .line 109
    new-instance v3, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$15;

    .line 110
    .line 111
    invoke-direct {v3, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$15;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    iget-boolean v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    iget v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 123
    .line 124
    if-ne v2, v3, :cond_2

    .line 125
    .line 126
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setProgressLoadingVisible(Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setProgressLoadingVisible(Z)V

    .line 136
    .line 137
    .line 138
    :goto_2
    sget-object v2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->keepTimeFinishListener:Lcom/meishu/sdk/meishu_ad/n0$b;

    .line 141
    .line 142
    invoke-interface {v2, v3, v0, v1}, Lcom/meishu/sdk/meishu_ad/n0;->a(Lcom/meishu/sdk/meishu_ad/n0$b;J)V

    .line 143
    .line 144
    .line 145
    sget-object v2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 146
    .line 147
    new-instance v3, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;

    .line 148
    .line 149
    invoke-direct {v3, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v2, v3}, Lcom/meishu/sdk/meishu_ad/n0;->a(Lcom/meishu/sdk/meishu_ad/n0$a;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaViewContainer:Landroid/view/ViewGroup;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 158
    .line 159
    .line 160
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 161
    .line 162
    const/4 v3, -0x2

    .line 163
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .line 165
    .line 166
    const/16 v3, 0xd

    .line 167
    .line 168
    const/4 v4, -0x1

    .line 169
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 170
    .line 171
    .line 172
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    if-eqz v3, :cond_3

    .line 179
    .line 180
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 181
    .line 182
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    instance-of v3, v3, Landroid/view/ViewGroup;

    .line 187
    .line 188
    if-eqz v3, :cond_3

    .line 189
    .line 190
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 191
    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Landroid/view/ViewGroup;

    .line 197
    .line 198
    iget-object v4, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    :cond_3
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaViewContainer:Landroid/view/ViewGroup;

    .line 204
    .line 205
    iget-object v4, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 206
    .line 207
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 211
    .line 212
    new-instance v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 213
    .line 214
    invoke-direct {v3}, Lcom/meishu/sdk/meishu_ad/nativ/f;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-direct {v2, v3}, Lcom/meishu/sdk/meishu_ad/nativ/f$a;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_start:[Ljava/lang/String;

    .line 221
    .line 222
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->j:[Ljava/lang/String;

    .line 223
    .line 224
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_one_quarter:[Ljava/lang/String;

    .line 225
    .line 226
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->k:[Ljava/lang/String;

    .line 227
    .line 228
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_one_half:[Ljava/lang/String;

    .line 229
    .line 230
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->l:[Ljava/lang/String;

    .line 231
    .line 232
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_three_quarter:[Ljava/lang/String;

    .line 233
    .line 234
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->m:[Ljava/lang/String;

    .line 235
    .line 236
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_complete:[Ljava/lang/String;

    .line 237
    .line 238
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->n:[Ljava/lang/String;

    .line 239
    .line 240
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_pause:[Ljava/lang/String;

    .line 241
    .line 242
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->o:[Ljava/lang/String;

    .line 243
    .line 244
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_resume:[Ljava/lang/String;

    .line 245
    .line 246
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->p:[Ljava/lang/String;

    .line 247
    .line 248
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_skip:[Ljava/lang/String;

    .line 249
    .line 250
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->q:[Ljava/lang/String;

    .line 251
    .line 252
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_close:[Ljava/lang/String;

    .line 253
    .line 254
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->u:[Ljava/lang/String;

    .line 255
    .line 256
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_mute:[Ljava/lang/String;

    .line 257
    .line 258
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->r:[Ljava/lang/String;

    .line 259
    .line 260
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_unmute:[Ljava/lang/String;

    .line 261
    .line 262
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->s:[Ljava/lang/String;

    .line 263
    .line 264
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_replay:[Ljava/lang/String;

    .line 265
    .line 266
    iput-object v2, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->t:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    .line 268
    :try_start_3
    sget-object v2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->ad:Lcom/meishu/sdk/platform/ms/c;

    .line 269
    .line 270
    if-eqz v2, :cond_4

    .line 271
    .line 272
    invoke-interface {v2}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    instance-of v2, v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 277
    .line 278
    if-eqz v2, :cond_4

    .line 279
    .line 280
    sget-object v2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->ad:Lcom/meishu/sdk/platform/ms/c;

    .line 281
    .line 282
    invoke-interface {v2}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAppendInfo(Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    .line 294
    .line 295
    :catch_1
    :cond_4
    :try_start_4
    sget-object v2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 296
    .line 297
    new-instance v4, Lcom/meishu/sdk/platform/ms/recycler/b;

    .line 298
    .line 299
    new-instance v5, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 300
    .line 301
    invoke-direct {v5, p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)V

    .line 302
    .line 303
    .line 304
    invoke-direct {v4, v3, v5}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {v2, v4}, Lcom/meishu/sdk/meishu_ad/n0;->setNativeAdMediaListener(Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 308
    .line 309
    .line 310
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 311
    .line 312
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->a()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_5

    .line 317
    .line 318
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 319
    .line 320
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startVideo(Lcom/meishu/sdk/meishu_ad/n0;)V

    .line 321
    .line 322
    .line 323
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 324
    .line 325
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->videoLoaded:Ljava/lang/Boolean;

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_5
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$18;

    .line 333
    .line 334
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$18;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 335
    .line 336
    .line 337
    const-wide/16 v2, 0xbb8

    .line 338
    .line 339
    invoke-virtual {v0, v1, v2, v3}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 340
    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_6
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadImageError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :catchall_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadImageError()V

    .line 348
    .line 349
    .line 350
    :goto_3
    return-void
.end method

.method private mNotifyRewarded()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->keepTimeFinish:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->keepTimeFinish:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onReward:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardBroadcast()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private notifyH5ActionShakeOrTurn()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const-string v1, "notifyH5ActionShakeOrTurn"

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/webview/jsbridge/util/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private notifyH5ActivityState(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isCalledStartRender:Z

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    :goto_1
    return-void

    .line 19
    :cond_2
    const-string v1, "notifyH5ActivityState"

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "\"{\'state\':\'"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "\'}\""

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/webview/jsbridge/util/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private notifyH5StartRender()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isAdExposed:Z

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isCalledStartRender:Z

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isCalledStartRender:Z

    .line 30
    .line 31
    const-string v1, "startRender"

    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/webview/jsbridge/util/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    return-void

    .line 39
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private notifyVideoProgress(JJ)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpWrapper:Lcom/meishu/sdk/core/webview/s;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_2

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_1
    return-void

    .line 21
    :cond_2
    const-string v1, "notifyH5VideoProgress"

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ","

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/webview/jsbridge/util/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private onAdExposed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isAdExposed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isAdExposed:Z

    .line 8
    .line 9
    const-string v0, "broadcast_on_video_start"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isActivityPause:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startShakeAndTurn()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isActivityPause:Z

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->receiveShakeOrderFromJs:Z

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    :cond_3
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startShakeAndTurn()V

    .line 50
    .line 51
    .line 52
    :cond_4
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->notifyH5StartRender()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "broadcast_onclick"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v2, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v2, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private onLoadRewardTmpRes(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startReport()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onAdExposed()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isImgSuccess:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isImgSuccess:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadImageError()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeUI()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->videoLoaded:Ljava/lang/Boolean;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->videoLoaded:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_4

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadImageError()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeUI()V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clearRewardTmp()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private pauseVideo()V
    .locals 3

    .line 1
    const-string v0, "showRewardWeb, pauseVideo,video_keep_time="

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_keep_time:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "MeishuRewardVideoPlayer"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->removeCountDown()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setRewardWeb(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->e()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method private removeCountDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateTime:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateProcessRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private restoreNonCreativeElements()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->applyCloseBtnVisibility()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 10
    .line 11
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_voice_button:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 26
    .line 27
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_playing_ad_info_container:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 39
    .line 40
    sget v2, Lcom/meishu/sdk/R$id;->ms_include_ad_tag:I

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->interaction_type:I

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne v0, v2, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 57
    .line 58
    sget v2, Lcom/meishu/sdk/R$id;->ms_download_layer_textview:I

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private resumeCountDown()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeCountDown(Z)V

    return-void
.end method

.method private resumeCountDown(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateTime:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateTime:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->updateProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private resumeUI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webviewContainer:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private resumeVideo()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeCountDown()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setRewardWeb(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getPlayState()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method private rewardBroadcast()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isRewardComplete:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isRewardComplete:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->getTempId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    move v1, v0

    .line 22
    :goto_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isNewRewardTempDisplay()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTimeEndReport(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const-string v3, "broadcast_onreward"

    .line 32
    .line 33
    invoke-direct {p0, v3, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardEdReport(II)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method private rewardEdReport(II)V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 2
    .line 3
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->eventUrl:[Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x2

    .line 21
    :goto_0
    const-string v2, ""

    .line 22
    .line 23
    invoke-static {v1, p1, p2, v2}, Lcom/meishu/sdk/core/utils/b1;->a(IIILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 p2, 0x1f

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, p2, v1, p1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private rewardEventUrlReport(I)V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 2
    .line 3
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->eventUrl:[Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x2

    .line 21
    :goto_0
    const-string v2, ""

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/b1;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, p1, v2, v1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private rewardTimeEndReport(II)V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 2
    .line 3
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->eventUrl:[Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x2

    .line 21
    :goto_0
    const-string v2, ""

    .line 22
    .line 23
    invoke-static {v1, p1, p2, v2}, Lcom/meishu/sdk/core/utils/b1;->a(IIILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 p2, 0x11

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, p2, v1, p1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    iget p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clkActType:I

    .line 12
    .line 13
    const-string v1, "clk_act_type"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clkPower:I

    .line 19
    .line 20
    const-string v1, "clk_power"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeResult:Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    const-string v1, "shake_result"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    :cond_0
    iget p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->imageWidth:I

    .line 35
    .line 36
    const-string v1, "image_width"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->imageHeight:I

    .line 42
    .line 43
    const-string v1, "image_height"

    .line 44
    .line 45
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->getTempId()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p2, 0x0

    .line 60
    :goto_0
    const-string v1, "click_reward_tmp_id"

    .line 61
    .line 62
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    :cond_2
    const-string p2, "broadcast_on_video_start"

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    iget p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    if-ne p1, p2, :cond_3

    .line 81
    .line 82
    const-string p1, "report_exposure"

    .line 83
    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static setDownloadDialogBean(Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 2
    .line 3
    return-void
.end method

.method public static setFullScreenAd(Lcom/meishu/sdk/platform/ms/c;)V
    .locals 1

    .line 1
    :try_start_0
    sput-object p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->ad:Lcom/meishu/sdk/platform/ms/c;

    .line 2
    .line 3
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static setMediaView(Lcom/meishu/sdk/meishu_ad/n0;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 2
    .line 3
    return-void
.end method

.method public static setVideoMute(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isMute:Z

    .line 2
    .line 3
    return-void
.end method

.method private showEndCoverUI()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 2
    .line 3
    sget v1, Lcom/meishu/sdk/R$id;->ms_video_playing_ad_info_container:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 17
    .line 18
    sget v2, Lcom/meishu/sdk/R$id;->ms_ad_info_container:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 31
    .line 32
    sget v3, Lcom/meishu/sdk/R$id;->ms_download_button:I

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->actionText:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 46
    .line 47
    sget v3, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 59
    .line 60
    sget v3, Lcom/meishu/sdk/R$id;->ms_reward_skip_button:I

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 72
    .line 73
    sget v3, Lcom/meishu/sdk/R$id;->ms_include_ad_tag:I

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 85
    .line 86
    sget v3, Lcom/meishu/sdk/R$id;->ms_include_ad_tag_end:I

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    :cond_0
    return-void
.end method

.method private showProgressBar()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_keep_time:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0x3e8

    .line 15
    .line 16
    mul-long/2addr v0, v2

    .line 17
    long-to-int v0, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0x61a8

    .line 20
    .line 21
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "showRewardWeb, pauseVideo,time="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "MeishuRewardVideoPlayer"

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->setmTotalTime(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private showWebView()V
    .locals 0

    return-void
.end method

.method private startReport()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->ad:Lcom/meishu/sdk/platform/ms/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/a;->b(Lcom/meishu/sdk/core/ad/AdSlot;)Z

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string v2, "MeishuRewardVideoPlayer"

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :try_start_1
    const-string v0, "has video start. return"

    .line 22
    .line 23
    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isStarted:Z

    .line 28
    .line 29
    if-nez v1, :cond_5

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isStarted:Z

    .line 33
    .line 34
    const-string v3, "send onVideoStart"

    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    instance-of v2, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setHasVideoStart(Z)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_start:[Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    array-length v1, v0

    .line 53
    const/4 v2, 0x0

    .line 54
    :goto_1
    if-ge v2, v1, :cond_4

    .line 55
    .line 56
    aget-object v3, v0, v2

    .line 57
    .line 58
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 69
    .line 70
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/16 v0, 0x10

    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardEventUrlReport(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_5
    return-void

    .line 85
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private startShakeAndTurn()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startShakeAndTurn(Z)V

    return-void
.end method

.method private startShakeAndTurn(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShakeInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShakeInit:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->initShakeAndTurn(Z)V

    return-void

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShake:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeResult:Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_shake_root_view:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_shake_root_view:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 11
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f()V

    :cond_3
    :goto_1
    return-void
.end method

.method private startUpdateProcess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startReport()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeCountDown()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private startVideo(Lcom/meishu/sdk/meishu_ad/n0;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_keep_time:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->getVideoRewardTotalTime(J)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-long v0, v0

    .line 11
    iput-wide v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mVideoTotalTime:J

    .line 12
    .line 13
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpId:I

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 23
    .line 24
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpLoadRes:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/n0;->getVideoView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 54
    .line 55
    .line 56
    iget p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 57
    .line 58
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ne p1, v0, :cond_1

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isNewRewardTempDisplay()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public OneHalfReport()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "MeishuRewardVideoPlayer"

    .line 2
    .line 3
    const-string v1, "send onVideoOneHalf"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_one_half:[Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 29
    .line 30
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void

    .line 43
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public OneQuarterReport()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "MeishuRewardVideoPlayer"

    .line 2
    .line 3
    const-string v1, "send onVideoOneQuarter"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_one_quarter:[Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 29
    .line 30
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void

    .line 43
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public ThreeQuarterReport()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "MeishuRewardVideoPlayer"

    .line 2
    .line 3
    const-string v1, "send onVideoThreeQuarter"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_three_quarter:[Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 29
    .line 30
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void

    .line 43
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onImageComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->hasImageComplete:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->hasImageComplete:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->showEndCoverUI()V

    .line 20
    .line 21
    .line 22
    :cond_2
    const-string v0, "broadcast_on_video_complete"

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    const-string v0, "MeishuRewardVideoPlayer"

    .line 29
    .line 30
    const-string v2, "send onVideoComplete"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_complete:[Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    array-length v2, v0

    .line 40
    :goto_0
    if-ge v1, v2, :cond_4

    .line 41
    .line 42
    aget-object v3, v0, v1

    .line 43
    .line 44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 55
    .line 56
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    :goto_2
    return-void

    .line 69
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public safeOnAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/16 v0, 0xd02

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "orientation_key"

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x2

    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    sget v0, Lcom/meishu/sdk/R$layout;->ms_activity_meishu_reward_portrait_video:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-ne v0, v2, :cond_1

    .line 45
    .line 46
    sget v0, Lcom/meishu/sdk/R$layout;->ms_activity_meishu_reward_landscape_video:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_reward_video_touch_ad_container:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->touchContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 60
    .line 61
    new-instance v0, Lcom/meishu/sdk/core/bquery/i;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/app/Activity;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 67
    .line 68
    const-string v0, "Action_text"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->actionText:Ljava/lang/String;

    .line 75
    .line 76
    const-string v0, "local_ad_id_key"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->localAdId:Ljava/lang/String;

    .line 83
    .line 84
    const-string v0, "Image_src"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 91
    .line 92
    const-string v0, "Video_start_key"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_start:[Ljava/lang/String;

    .line 99
    .line 100
    const-string v0, "Video_one_quarter_key"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_one_quarter:[Ljava/lang/String;

    .line 107
    .line 108
    const-string v0, "Video_one_half_key"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_one_half:[Ljava/lang/String;

    .line 115
    .line 116
    const-string v0, "Video_three_quarter_key"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_three_quarter:[Ljava/lang/String;

    .line 123
    .line 124
    const-string v0, "Video_complete_key"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_complete:[Ljava/lang/String;

    .line 131
    .line 132
    const-string v0, "Video_pause_key"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_pause:[Ljava/lang/String;

    .line 139
    .line 140
    const-string v0, "Video_resume_key"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_resume:[Ljava/lang/String;

    .line 147
    .line 148
    const-string v0, "Video_mute_key"

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_mute:[Ljava/lang/String;

    .line 155
    .line 156
    const-string v0, "Video_unmute_key"

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_unmute:[Ljava/lang/String;

    .line 163
    .line 164
    const-string v0, "Video_replay_key"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_replay:[Ljava/lang/String;

    .line 171
    .line 172
    const-string v0, "Video_cover"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_cover:Ljava/lang/String;

    .line 179
    .line 180
    const-string v0, "Video_endcover"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_endcover:Ljava/lang/String;

    .line 187
    .line 188
    const-string v0, "Video_keep_time"

    .line 189
    .line 190
    const-wide/16 v3, -0x1

    .line 191
    .line 192
    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 193
    .line 194
    .line 195
    move-result-wide v3

    .line 196
    iput-wide v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_keep_time:J

    .line 197
    .line 198
    const-string v0, "event_url"

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->eventUrl:[Ljava/lang/String;

    .line 205
    .line 206
    const-string v0, "Ad_title"

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const-string v3, "Ad_content"

    .line 213
    .line 214
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    const-string v4, "Ad_icon_url"

    .line 219
    .line 220
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    const-string v5, "From_logo"

    .line 225
    .line 226
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    const-string v6, "Clickable_range"

    .line 231
    .line 232
    const/4 v7, -0x1

    .line 233
    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    const-string v8, "Close_btn"

    .line 238
    .line 239
    invoke-virtual {p1, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->close_btn:I

    .line 244
    .line 245
    if-eqz v8, :cond_2

    .line 246
    .line 247
    if-eq v8, v2, :cond_2

    .line 248
    .line 249
    iput v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->close_btn:I

    .line 250
    .line 251
    :cond_2
    const-string v8, "clk_type"

    .line 252
    .line 253
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clk_type:I

    .line 258
    .line 259
    const-string v8, "power_count"

    .line 260
    .line 261
    invoke-virtual {p1, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->power_count:I

    .line 266
    .line 267
    const-string v8, "power_delay"

    .line 268
    .line 269
    const/16 v9, 0x1f4

    .line 270
    .line 271
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->power_delay:I

    .line 276
    .line 277
    const-string v8, "power_index"

    .line 278
    .line 279
    const/16 v9, 0xf

    .line 280
    .line 281
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->power_index:I

    .line 286
    .line 287
    const-string v8, "Power_index2"

    .line 288
    .line 289
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->power_index2:I

    .line 294
    .line 295
    const-string v8, "Interaction_type"

    .line 296
    .line 297
    const/4 v9, 0x0

    .line 298
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->interaction_type:I

    .line 303
    .line 304
    const-string v8, "reward_tmp_url"

    .line 305
    .line 306
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    iput-object v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpUrl:Ljava/lang/String;

    .line 311
    .line 312
    const-string v8, "reward_tmp_type"

    .line 313
    .line 314
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 319
    .line 320
    const-string v8, "reward_tmp_time"

    .line 321
    .line 322
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpTime:I

    .line 327
    .line 328
    const-string v8, "reward_tmp_id"

    .line 329
    .line 330
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpId:I

    .line 335
    .line 336
    iget-object v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpUrl:Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    if-nez v8, :cond_3

    .line 343
    .line 344
    iget v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 345
    .line 346
    if-lez v8, :cond_3

    .line 347
    .line 348
    iget v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpId:I

    .line 349
    .line 350
    if-lez v8, :cond_3

    .line 351
    .line 352
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 353
    .line 354
    :cond_3
    const-string v8, "web_temp_url"

    .line 355
    .line 356
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    iput-object v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webTempUrl:Ljava/lang/String;

    .line 361
    .line 362
    const-string v8, "web_temp_id"

    .line 363
    .line 364
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    iput v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webTempId:I

    .line 369
    .line 370
    iget-object v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webTempUrl:Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    if-nez v8, :cond_4

    .line 377
    .line 378
    iget v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webTempId:I

    .line 379
    .line 380
    if-lez v8, :cond_4

    .line 381
    .line 382
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 383
    .line 384
    iput-boolean v9, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 385
    .line 386
    const/4 v8, 0x0

    .line 387
    iput-object v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpUrl:Ljava/lang/String;

    .line 388
    .line 389
    iput v9, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 390
    .line 391
    iput v9, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpTime:I

    .line 392
    .line 393
    iput v9, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpId:I

    .line 394
    .line 395
    :cond_4
    iget v8, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->interaction_type:I

    .line 396
    .line 397
    invoke-direct {p0, v8}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->handleDownloadView(I)V

    .line 398
    .line 399
    .line 400
    const-string v8, "Ad_type"

    .line 401
    .line 402
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->adType:I

    .line 407
    .line 408
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 409
    .line 410
    sget v8, Lcom/meishu/sdk/R$id;->ms_reward_skip_button:I

    .line 411
    .line 412
    invoke-virtual {p1, v8}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 417
    .line 418
    new-instance v8, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

    .line 419
    .line 420
    invoke-direct {v8, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 421
    .line 422
    .line 423
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 424
    .line 425
    if-eqz p1, :cond_5

    .line 426
    .line 427
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    .line 429
    .line 430
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 431
    .line 432
    sget v8, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 433
    .line 434
    invoke-virtual {p1, v8}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 439
    .line 440
    new-instance v8, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$2;

    .line 441
    .line 442
    invoke-direct {v8, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$2;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 443
    .line 444
    .line 445
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 446
    .line 447
    if-eqz p1, :cond_6

    .line 448
    .line 449
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    .line 451
    .line 452
    :cond_6
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 453
    .line 454
    sget v8, Lcom/meishu/sdk/R$id;->ms_reward_voice_button:I

    .line 455
    .line 456
    invoke-virtual {p1, v8}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 461
    .line 462
    new-instance v8, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;

    .line 463
    .line 464
    invoke-direct {v8, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 468
    .line 469
    if-eqz p1, :cond_7

    .line 470
    .line 471
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    .line 473
    .line 474
    :cond_7
    sget p1, Lcom/meishu/sdk/R$id;->ms_shake_img:I

    .line 475
    .line 476
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    check-cast p1, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 481
    .line 482
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 483
    .line 484
    if-eq v6, v2, :cond_8

    .line 485
    .line 486
    if-eq v6, v1, :cond_8

    .line 487
    .line 488
    move v6, v7

    .line 489
    :cond_8
    if-eq v6, v7, :cond_9

    .line 490
    .line 491
    goto :goto_1

    .line 492
    :cond_9
    move v6, v1

    .line 493
    :goto_1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->applyCloseBtnVisibility()V

    .line 494
    .line 495
    .line 496
    if-eqz v5, :cond_a

    .line 497
    .line 498
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 499
    .line 500
    sget v2, Lcom/meishu/sdk/R$id;->ms_include_ad_tag:I

    .line 501
    .line 502
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->a(I)Lcom/meishu/sdk/core/bquery/e;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 507
    .line 508
    sget v2, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 509
    .line 510
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 515
    .line 516
    invoke-virtual {p1, v5, v9}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 517
    .line 518
    .line 519
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 520
    .line 521
    sget v2, Lcom/meishu/sdk/R$id;->ms_include_ad_tag_end:I

    .line 522
    .line 523
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->a(I)Lcom/meishu/sdk/core/bquery/e;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 528
    .line 529
    sget v2, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 530
    .line 531
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 536
    .line 537
    invoke-virtual {p1, v5, v9}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 538
    .line 539
    .line 540
    :cond_a
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 541
    .line 542
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_playing_reward_ad_title:I

    .line 543
    .line 544
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 549
    .line 550
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 551
    .line 552
    .line 553
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 554
    .line 555
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_playing_reward_ad_content:I

    .line 556
    .line 557
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 562
    .line 563
    invoke-virtual {p1, v3}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 564
    .line 565
    .line 566
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 567
    .line 568
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_playing_download_button:I

    .line 569
    .line 570
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 575
    .line 576
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->actionText:Ljava/lang/String;

    .line 577
    .line 578
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 579
    .line 580
    .line 581
    if-eqz v4, :cond_b

    .line 582
    .line 583
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 584
    .line 585
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_ad_icon:I

    .line 586
    .line 587
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 592
    .line 593
    invoke-virtual {p1, v4, v9}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 598
    .line 599
    invoke-virtual {p1, v9}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 600
    .line 601
    .line 602
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 603
    .line 604
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_ad_icon_end:I

    .line 605
    .line 606
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 611
    .line 612
    invoke-virtual {p1, v4, v9}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 617
    .line 618
    invoke-virtual {p1, v9}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 619
    .line 620
    .line 621
    :cond_b
    if-ne v6, v1, :cond_d

    .line 622
    .line 623
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 624
    .line 625
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_playing_download_button:I

    .line 626
    .line 627
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 628
    .line 629
    .line 630
    move-result-object p1

    .line 631
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 632
    .line 633
    new-instance v2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$4;

    .line 634
    .line 635
    invoke-direct {v2, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$4;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 636
    .line 637
    .line 638
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 639
    .line 640
    if-eqz p1, :cond_c

    .line 641
    .line 642
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    .line 644
    .line 645
    :cond_c
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 646
    .line 647
    sget v2, Lcom/meishu/sdk/R$id;->ms_download_button:I

    .line 648
    .line 649
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 654
    .line 655
    new-instance v2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$5;

    .line 656
    .line 657
    invoke-direct {v2, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$5;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 658
    .line 659
    .line 660
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 661
    .line 662
    if-eqz p1, :cond_e

    .line 663
    .line 664
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    .line 666
    .line 667
    goto :goto_2

    .line 668
    :cond_d
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 669
    .line 670
    sget v2, Lcom/meishu/sdk/R$id;->ms_fullscreen_clickable_range:I

    .line 671
    .line 672
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 677
    .line 678
    new-instance v2, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$6;

    .line 679
    .line 680
    invoke-direct {v2, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$6;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 681
    .line 682
    .line 683
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 684
    .line 685
    if-eqz p1, :cond_e

    .line 686
    .line 687
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    .line 689
    .line 690
    :cond_e
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    if-nez p1, :cond_f

    .line 695
    .line 696
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 697
    .line 698
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_ad_title:I

    .line 699
    .line 700
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 705
    .line 706
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 707
    .line 708
    .line 709
    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 710
    .line 711
    .line 712
    move-result p1

    .line 713
    if-nez p1, :cond_10

    .line 714
    .line 715
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 716
    .line 717
    sget v0, Lcom/meishu/sdk/R$id;->ms_reward_ad_content:I

    .line 718
    .line 719
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 724
    .line 725
    invoke-virtual {p1, v3}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 726
    .line 727
    .line 728
    :cond_10
    sget p1, Lcom/meishu/sdk/R$id;->ms_process_bar:I

    .line 729
    .line 730
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    check-cast p1, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 735
    .line 736
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->processBar:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 737
    .line 738
    sget p1, Lcom/meishu/sdk/R$id;->ms_reward_webview_container:I

    .line 739
    .line 740
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 745
    .line 746
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->webviewContainer:Landroid/widget/RelativeLayout;

    .line 747
    .line 748
    iget p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardTmpType:I

    .line 749
    .line 750
    if-ne p1, v1, :cond_11

    .line 751
    .line 752
    iget-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayRewardTemp:Z

    .line 753
    .line 754
    if-nez p1, :cond_12

    .line 755
    .line 756
    :cond_11
    iget-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->canDisplayNewRewardTemp:Z

    .line 757
    .line 758
    if-eqz p1, :cond_13

    .line 759
    .line 760
    :cond_12
    iget-wide v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->video_keep_time:J

    .line 761
    .line 762
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->initWebView(J)V

    .line 763
    .line 764
    .line 765
    :cond_13
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->image_src:Ljava/lang/String;

    .line 766
    .line 767
    if-eqz p1, :cond_14

    .line 768
    .line 769
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadRewardImage()V

    .line 770
    .line 771
    .line 772
    return-void

    .line 773
    :cond_14
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadRewardVideo()V

    .line 774
    .line 775
    .line 776
    return-void
.end method

.method public safeOnDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x15

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardEventUrlReport(I)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->ad:Lcom/meishu/sdk/platform/ms/c;

    .line 23
    .line 24
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clearRewardMediaView()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->keepTimeFinishListener:Lcom/meishu/sdk/meishu_ad/n0$b;

    .line 28
    .line 29
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->shakeId:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clearRewardTmp()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->appStateListener:Lcom/meishu/sdk/core/service/a;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->removeCountDown()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    return-void
.end method

.method public safeOnPause()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isActivityPause:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->removeCountDown()V

    .line 8
    .line 9
    .line 10
    const-string v1, "pause"

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->notifyH5ActivityState(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShake:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f:[F

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    aput v4, v2, v3

    .line 38
    .line 39
    aput v4, v2, v0

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    aput v4, v2, v5

    .line 43
    .line 44
    iput v4, v1, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e:F

    .line 45
    .line 46
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->x:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->y:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->z:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->v:[F

    .line 62
    .line 63
    aput v4, v1, v3

    .line 64
    .line 65
    aput v4, v1, v0

    .line 66
    .line 67
    aput v4, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method public safeOnResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isActivityPause:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeCountDown()V

    .line 8
    .line 9
    .line 10
    const-string v1, "resume"

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->notifyH5ActivityState(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isShowedRewardTemp()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->isAdExposed:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->startShakeAndTurn(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ge v0, v1, :cond_2

    .line 35
    .line 36
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/meishu/sdk/core/ad/IAd;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->touchContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 47
    .line 48
    new-instance v3, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 49
    .line 50
    invoke-direct {v3, v1}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method
