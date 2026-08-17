.class public Lcom/czhj/sdk/common/track/TrackManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/track/TrackManager$Listener;
    }
.end annotation


# static fields
.field private static final MAX_PARALLELS_NUM:I = 0x4

.field private static final gInstance:Lcom/czhj/sdk/common/track/TrackManager;

.field private static final maxRetryNum:I = 0x14


# instance fields
.field private mSigmobTrackListener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

.field private mToBidTrackListener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

.field private repeatingHandlerRunnable:Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;

.field private retryExpiredTime:J

.field private retryHandler:Landroid/os/Handler;

.field private volatile retryIndex:I

.field private retryInterval:J

.field private trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/czhj/sdk/common/track/AdTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/czhj/sdk/common/track/TrackManager;

    invoke-direct {v0}, Lcom/czhj/sdk/common/track/TrackManager;-><init>()V

    sput-object v0, Lcom/czhj/sdk/common/track/TrackManager;->gInstance:Lcom/czhj/sdk/common/track/TrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryExpiredTime:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryInterval:J

    return-void
.end method

.method public static synthetic access$000(Lcom/czhj/sdk/common/track/TrackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/sdk/common/track/TrackManager;->sendRetryTracking()V

    return-void
.end method

.method public static synthetic access$100(Lcom/czhj/sdk/common/track/TrackManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/czhj/sdk/common/track/TrackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/sdk/common/track/TrackManager;->retryFailTracking()V

    return-void
.end method

.method public static synthetic access$300(Lcom/czhj/sdk/common/track/TrackManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryInterval:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/czhj/sdk/common/track/TrackManager;)Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;
    .locals 0

    iget-object p0, p0, Lcom/czhj/sdk/common/track/TrackManager;->repeatingHandlerRunnable:Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;

    return-object p0
.end method

.method public static getInstance()Lcom/czhj/sdk/common/track/TrackManager;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/track/TrackManager;->gInstance:Lcom/czhj/sdk/common/track/TrackManager;

    return-object v0
.end method

.method private retryFailTracking()V
    .locals 3

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/track/AdTracker;->cleanLimitAdTracker(J)V

    const/16 v0, 0xbb8

    iget-wide v1, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryExpiredTime:J

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/track/AdTracker;->getAdTrackerFromDB(IJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->trackers:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryIndex:I

    iget-object v1, p0, Lcom/czhj/sdk/common/track/TrackManager;->trackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/czhj/sdk/common/track/TrackManager;->sendRetryTracking()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryExpiredTime:J

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/track/AdTracker;->cleanExpiredAdTracker(J)V

    return-void
.end method

.method private sendRetryTracking()V
    .locals 5

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->trackers:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryIndex:I

    iget-object v1, p0, Lcom/czhj/sdk/common/track/TrackManager;->trackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->trackers:Ljava/util/List;

    iget v1, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/track/AdTracker;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/AdTracker;->getMessageType()Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    move-result-object v1

    sget-object v2, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/czhj/sdk/common/track/TrackManager;->mSigmobTrackListener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/czhj/sdk/common/track/TrackManager;->mToBidTrackListener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/czhj/sdk/common/track/TrackManager$1;

    invoke-direct {v2, p0, v1}, Lcom/czhj/sdk/common/track/TrackManager$1;-><init>(Lcom/czhj/sdk/common/track/TrackManager;Lcom/czhj/sdk/common/track/TrackManager$Listener;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4, v2}, Lcom/czhj/sdk/common/track/TrackManager;->sendTracking(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/track/BaseMacroCommon;ZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static sendTracking(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/track/BaseMacroCommon;ZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getMessageType()Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    move-result-object v0

    sget-object v1, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->QUARTILE_EVENT:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_a

    :cond_1
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->setTracked()V

    :cond_3
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getId()Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    move p1, p2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/track/AdTracker;->setUrl(Ljava/lang/String;)V

    new-instance v1, Lcom/czhj/sdk/common/track/TrackingRequest;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getRetryNum()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    new-instance v2, Lcom/czhj/sdk/common/track/TrackManager$2;

    invoke-direct {v2, p1, p0, p4, p3}, Lcom/czhj/sdk/common/track/TrackManager$2;-><init>(ZLcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/track/TrackManager$Listener;Z)V

    invoke-direct {v1, v0, p2, v2}, Lcom/czhj/sdk/common/track/TrackingRequest;-><init>(Ljava/lang/String;ILcom/czhj/sdk/common/track/TrackingRequest$RequestListener;)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getCommonRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p0

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getAdTrackerRetryQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p2

    if-nez p0, :cond_6

    if-nez p2, :cond_6

    const-string p0, "RequestQueue is null"

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz p1, :cond_8

    if-eqz p2, :cond_9

    :cond_7
    move-object p0, p2

    goto :goto_2

    :cond_8
    if-eqz p0, :cond_7

    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public setRetryExpiredTime(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryExpiredTime:J

    return-void
.end method

.method public setRetryInterval(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryInterval:J

    return-void
.end method

.method public setSigmobTrackListener(Lcom/czhj/sdk/common/track/TrackManager$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/TrackManager;->mSigmobTrackListener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    return-void
.end method

.method public setToBidTrackListener(Lcom/czhj/sdk/common/track/TrackManager$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/TrackManager;->mToBidTrackListener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    return-void
.end method

.method public startRetryTracking()V
    .locals 4

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->repeatingHandlerRunnable:Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getIOLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryHandler:Landroid/os/Handler;

    new-instance v1, Lcom/czhj/sdk/common/track/TrackManager$3;

    invoke-direct {v1, p0, v0}, Lcom/czhj/sdk/common/track/TrackManager$3;-><init>(Lcom/czhj/sdk/common/track/TrackManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/czhj/sdk/common/track/TrackManager;->repeatingHandlerRunnable:Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;

    iget-wide v2, p0, Lcom/czhj/sdk/common/track/TrackManager;->retryInterval:J

    invoke-virtual {v1, v2, v3}, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->startRepeating(J)V

    return-void
.end method
