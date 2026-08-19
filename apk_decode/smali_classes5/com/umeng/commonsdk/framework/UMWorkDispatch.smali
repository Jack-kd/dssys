.class public Lcom/umeng/commonsdk/framework/UMWorkDispatch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GENERAL_CONTENT:Ljava/lang/String; = "content"

.field public static final GENERAL_HEADER:Ljava/lang/String; = "header"

.field public static final KEY_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final MSG_AUTO_PROCESS:I = 0x301

.field private static final MSG_CHECKER_TIMER:I = 0x303

.field private static final MSG_DELAY_PROCESS:I = 0x302

.field private static final MSG_QUIT:I = 0x310

.field private static final MSG_SEND_EVENT:I = 0x300

.field private static mNetTask:Landroid/os/HandlerThread;

.field private static mSender:Lcom/umeng/commonsdk/framework/a;

.field private static mSenderInitLock:Ljava/lang/Object;

.field private static mTaskHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSenderInitLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Quit()V
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x310

    .line 10
    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->handleEvent(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->delayProcess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->handleQuit()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static delayProcess()V
    .locals 7

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    const-string v1, "--->>> delayProcess Enter..."

    .line 4
    .line 5
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "MobclickRT"

    .line 9
    .line 10
    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    const-string v5, "analytics"

    .line 31
    .line 32
    invoke-static {v5}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-interface {v5, v3, v4}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->setupReportData(J)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    const-string v0, "--->>> analyticsCB.setupReportData() return null"

    .line 45
    .line 46
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v3, 0x0

    .line 53
    :cond_2
    if-eqz v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-lez v4, :cond_4

    .line 60
    .line 61
    const-string v4, "header"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lorg/json/JSONObject;

    .line 68
    .line 69
    const-string v6, "content"

    .line 70
    .line 71
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lorg/json/JSONObject;

    .line 76
    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-static {v1, v4, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v6, "--->>> autoProcess: Build envelope error code: "

    .line 99
    .line 100
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    .line 117
    :catchall_1
    :cond_3
    :try_start_2
    const-string v0, "--->>> autoProcess: removeCacheData ... "

    .line 118
    .line 119
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v5, v3}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->removeCacheData(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :goto_0
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    return-void
.end method

.method public static declared-synchronized eventHasExist()Z
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v2, 0x303

    .line 6
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized eventHasExist(I)Z
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static handleEvent(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, "]"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, p0, v0}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->workEvent(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private static handleQuit()V
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->c()V

    .line 10
    .line 11
    .line 12
    const-string v0, "--->>> handleQuit: Quit dispatch thread."

    .line 13
    .line 14
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->teardown()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static declared-synchronized init()V
    .locals 3

    .line 1
    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "--->>> Dispatch: init Enter..."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/os/HandlerThread;

    .line 14
    .line 15
    const-string v2, "work_thread"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch$1;

    .line 30
    .line 31
    sget-object v2, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch$1;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    const-string v1, "--->>> Dispatch: init Exit..."

    .line 52
    .line 53
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_1
    move-exception v1

    .line 59
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    throw v1
.end method

.method public static registerConnStateObserver(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/a;->a(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static declared-synchronized removeEvent()V
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/16 v2, 0x303

    .line 3
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized removeEvent(I)V
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static sendDelayProcessMsg(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x302

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v2, "MobclickRT"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string p0, "--->>> MSG_DELAY_PROCESS has exist. do nothing."

    .line 16
    .line 17
    invoke-static {v2, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v0, "--->>> MSG_DELAY_PROCESS not exist. send it."

    .line 22
    .line 23
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    .line 34
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    .locals 7

    const/16 v1, 0x300

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    .locals 7

    const/16 v1, 0x300

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    return-void
.end method

.method public static sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    .locals 7

    .line 1
    const/16 v1, 0x303

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-wide v5, p4

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    .locals 2

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto :goto_4

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->registerAppContext(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->registerCallback(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_1
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez p3, :cond_3

    .line 27
    .line 28
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->init()V

    .line 29
    .line 30
    .line 31
    :cond_3
    :try_start_0
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 32
    .line 33
    if-eqz p3, :cond_6

    .line 34
    .line 35
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_5

    .line 40
    .line 41
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSenderInitLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->syncLegacyEnvelopeIfNeeded(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/umeng/commonsdk/framework/a;

    .line 52
    .line 53
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 54
    .line 55
    invoke-direct {v0, p0, v1}, Lcom/umeng/commonsdk/framework/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    :goto_0
    monitor-exit p3

    .line 64
    goto :goto_2

    .line 65
    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    throw p0

    .line 67
    :cond_5
    :goto_2
    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iput p1, p0, Landroid/os/Message;->what:I

    .line 74
    .line 75
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 76
    .line 77
    iput-object p4, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    sget-object p1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {p1, p0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_3
    return-void

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_7
    :goto_4
    const-string p0, "--->>> Context or UMLogDataProtocol parameter cannot be null!"

    .line 95
    .line 96
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private static teardown()V
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Landroid/os/Handler;

    .line 13
    .line 14
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    .line 19
    .line 20
    :cond_2
    return-void
.end method
