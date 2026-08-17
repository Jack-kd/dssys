.class public Lcom/meishu/sdk/activity/MeishuRewardH5Activity;
.super Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TOTAL_TIME:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "MeishuRewardH5Activity"

.field private static adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

.field private static nativeAdData:Lcom/meishu/sdk/meishu_ad/nativ/d;

.field private static wrapper:Lcom/meishu/sdk/core/webview/s;


# instance fields
.field private attachWindow:Z

.field private bQuery:Lcom/meishu/sdk/core/bquery/i;

.field private volatile curWebUrl:Ljava/lang/String;

.field private h5ClickChecker:Lcom/meishu/sdk/core/utils/t1;

.field private isStarted:Z

.field private mHandler:Landroid/os/Handler;

.field private mImageCurrentTime:I

.field private onReward:Z

.field private oneHalfPerformed:Z

.field private oneQuarterPerformed:Z

.field private threeQuarterPerformed:Z

.field private totalTime:I

.field private touchContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

.field private final updateTime:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3a98

    .line 5
    .line 6
    iput v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->totalTime:I

    .line 7
    .line 8
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateTime:Ljava/lang/Runnable;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->onReward:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->onReward:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->sendBroadcast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mImageCurrentTime:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1012(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mImageCurrentTime:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mImageCurrentTime:I

    .line 5
    .line 6
    return v0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->totalTime:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateTime:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateCountDownText(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->oneQuarterPerformed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1502(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->oneQuarterPerformed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1600(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->oneHalfPerformed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1602(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->oneHalfPerformed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1700(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->threeQuarterPerformed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1702(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->threeQuarterPerformed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$300()Lcom/meishu/sdk/core/webview/s;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->curWebUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->curWebUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/utils/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->h5ClickChecker:Lcom/meishu/sdk/core/utils/t1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700()Lcom/meishu/sdk/meishu_ad/nativ/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->nativeAdData:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->sendBroadcast(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/bquery/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static clear()V
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

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

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->b:Lcom/meishu/sdk/core/webview/f;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/meishu/sdk/core/webview/f;->g:Lcom/meishu/sdk/core/webview/listener/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    :try_start_1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->c:Lcom/meishu/sdk/core/webview/g;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 22
    .line 23
    .line 24
    :try_start_2
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/g;->a:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    .line 31
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 32
    .line 33
    .line 34
    :catch_2
    :cond_0
    :goto_0
    sput-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 35
    .line 36
    sput-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 37
    .line 38
    sput-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->nativeAdData:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 39
    .line 40
    return-void
.end method

.method private initClickEvent(Lcom/meishu/sdk/core/bquery/i;)V
    .locals 2
    .param p1    # Lcom/meishu/sdk/core/bquery/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 8
    .line 9
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_reward_back_layout:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 28
    .line 29
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$2;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$2;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->touchContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 42
    .line 43
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;

    .line 44
    .line 45
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->nativeAdData:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Lcom/meishu/sdk/core/ad/IAd;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/meishu/sdk/core/webview/s;->b:Lcom/meishu/sdk/core/webview/f;

    .line 56
    .line 57
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$4;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$4;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p1, Lcom/meishu/sdk/core/webview/f;->g:Lcom/meishu/sdk/core/webview/listener/f;

    .line 63
    .line 64
    return-void
.end method

.method private initStateByWebView()V
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->c:Lcom/meishu/sdk/core/webview/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/webview/g;->a(Lcom/meishu/sdk/core/webview/listener/a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 18
    .line 19
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_back_layout:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 26
    .line 27
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v1, 0x8

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v2, v1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v2, v1, Lcom/meishu/sdk/core/webview/s;->b:Lcom/meishu/sdk/core/webview/f;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Lcom/meishu/sdk/core/webview/s;->c:Lcom/meishu/sdk/core/webview/g;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->nativeAdData:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :catch_0
    :cond_0
    return v0
.end method

.method private pause()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateTime:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private resume()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->pause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->onReward:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateTime:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->sendBroadcast(Ljava/lang/String;Z)V

    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 4
    const-string p1, "clk_act_type"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    const-string p1, "clk_power"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    const-string p1, "image_width"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    const-string p1, "image_height"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static setRewardH5Data(Lcom/meishu/sdk/core/webview/s;Lcom/meishu/sdk/meishu_ad/nativ/d;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    sput-object p1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->nativeAdData:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, p0

    .line 12
    :goto_0
    sput-object p1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 13
    .line 14
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object p1, p0

    .line 30
    :goto_1
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateWebViewContext(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_2
    invoke-static {p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateMediaViewContext(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private startReport()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "send onVideoStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->isStarted:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->j:[Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    aget-object v3, v0, v2

    .line 23
    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 35
    .line 36
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->isStarted:Z

    .line 50
    .line 51
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 52
    .line 53
    const/16 v1, 0x10

    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void

    .line 59
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private startUpdateProcess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mHandler:Landroid/os/Handler;

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
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->startReport()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateTime:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private updateCountDownText(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 2
    .line 3
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_content_txt:I

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "\u5956\u52b1\u5c06\u4e8e "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " \u79d2\u540e\u53d1\u653e"

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static updateMediaViewContext(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->nativeAdData:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v1, v1, Landroid/content/ContextWrapper;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const-class v1, Landroid/content/ContextWrapper;

    .line 27
    .line 28
    const-string v2, "mBase"

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v2, v0, p0}, Lcom/meishu/sdk/core/utils/ReflectUtil;->setValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "update m context"

    .line 40
    .line 41
    invoke-static {p0, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private static updateWebViewContext(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Landroid/content/ContextWrapper;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-class v0, Landroid/content/ContextWrapper;

    .line 18
    .line 19
    const-string v1, "mBase"

    .line 20
    .line 21
    sget-object v2, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v1, v2, p0}, Lcom/meishu/sdk/core/utils/ReflectUtil;->setValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "update w context"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public OneHalfReport()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "send onVideoOneHalf"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->l:[Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 31
    .line 32
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void

    .line 45
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public OneQuarterReport()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "send onVideoOneQuarter"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->k:[Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 31
    .line 32
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void

    .line 45
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public ThreeQuarterReport()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "send onVideoThreeQuarter"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->m:[Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 31
    .line 32
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void

    .line 45
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onImageComplete()V
    .locals 5

    .line 1
    const-string v0, "broadcast_on_video_complete"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->sendBroadcast(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "send onVideoComplete"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->n:[Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    .line 23
    aget-object v3, v0, v2

    .line 24
    .line 25
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 36
    .line 37
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void

    .line 50
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "onWindowFocusChanged hasWindowFocus:"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " attachWindow:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->attachWindow:Z

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->attachWindow:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->resume()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    if-eqz v0, :cond_1

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->pause()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public safeOnAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->attachWindow:Z

    .line 6
    .line 7
    return-void
.end method

.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 4

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
    sget p1, Lcom/meishu/sdk/R$layout;->ms_activity_meishu_reward_h5:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 27
    .line 28
    .line 29
    sget p1, Lcom/meishu/sdk/R$id;->ms_activity_reward_h5_touch_ad_container:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->touchContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 38
    .line 39
    sget p1, Lcom/meishu/sdk/R$id;->ms_reward_h5_container:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/view/ViewGroup;

    .line 46
    .line 47
    new-instance v0, Lcom/meishu/sdk/core/utils/t1;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lcom/meishu/sdk/core/utils/t1;-><init>(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->h5ClickChecker:Lcom/meishu/sdk/core/utils/t1;

    .line 53
    .line 54
    new-instance v0, Lcom/meishu/sdk/core/bquery/i;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/app/Activity;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    and-int/lit8 v1, v1, 0x30

    .line 73
    .line 74
    const/16 v2, 0x20

    .line 75
    .line 76
    if-ne v1, v2, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 79
    .line 80
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_h5_bg:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 89
    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    const/high16 v2, -0x1000000

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    .line 96
    .line 97
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 98
    .line 99
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_back:I

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 106
    .line 107
    sget v2, Lcom/meishu/sdk/R$drawable;->ms_ic_back_white:I

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->c(I)Lcom/meishu/sdk/core/bquery/e;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 114
    .line 115
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_h5_bg:I

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 124
    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    .line 129
    .line 130
    :cond_2
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 131
    .line 132
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_back:I

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 139
    .line 140
    sget v2, Lcom/meishu/sdk/R$drawable;->ms_ic_back_black:I

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->c(I)Lcom/meishu/sdk/core/bquery/e;

    .line 143
    .line 144
    .line 145
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 146
    .line 147
    invoke-direct {p0, v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->initClickEvent(Lcom/meishu/sdk/core/bquery/i;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 151
    .line 152
    sget v2, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 159
    .line 160
    const/4 v2, 0x0

    .line 161
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 165
    .line 166
    sget v3, Lcom/meishu/sdk/R$id;->ms_include_ad_tag:I

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->a(I)Lcom/meishu/sdk/core/bquery/e;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 173
    .line 174
    sget v3, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 181
    .line 182
    sget v3, Lcom/meishu/sdk/R$drawable;->ms_bg_alpha_rect_40_radius4:I

    .line 183
    .line 184
    iget-object v1, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 185
    .line 186
    if-eqz v1, :cond_4

    .line 187
    .line 188
    if-eqz v3, :cond_3

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_3
    const/4 v3, 0x0

    .line 195
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    .line 197
    .line 198
    :cond_4
    :goto_1
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 199
    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_5

    .line 211
    .line 212
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 213
    .line 214
    sget v3, Lcom/meishu/sdk/R$id;->ms_include_ad_tag:I

    .line 215
    .line 216
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->a(I)Lcom/meishu/sdk/core/bquery/e;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 221
    .line 222
    sget v3, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 223
    .line 224
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 229
    .line 230
    sget-object v3, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v1, v3, v2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 240
    .line 241
    sget v3, Lcom/meishu/sdk/R$id;->ms_include_ad_tag_end:I

    .line 242
    .line 243
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->a(I)Lcom/meishu/sdk/core/bquery/e;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 248
    .line 249
    sget v3, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 250
    .line 251
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 256
    .line 257
    sget-object v3, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v1, v3, v2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 264
    .line 265
    .line 266
    :cond_5
    invoke-static {p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateWebViewContext(Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->initStateByWebView()V

    .line 270
    .line 271
    .line 272
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->wrapper:Lcom/meishu/sdk/core/webview/s;

    .line 273
    .line 274
    iget-object v1, v1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 275
    .line 276
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 277
    .line 278
    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    .line 283
    .line 284
    sget-object p1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 285
    .line 286
    iget-wide v0, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->i:J

    .line 287
    .line 288
    const-wide/16 v2, 0x3e8

    .line 289
    .line 290
    mul-long/2addr v0, v2

    .line 291
    const-wide/16 v2, 0x0

    .line 292
    .line 293
    cmp-long p1, v0, v2

    .line 294
    .line 295
    if-lez p1, :cond_6

    .line 296
    .line 297
    long-to-int p1, v0

    .line 298
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->totalTime:I

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_6
    const/16 p1, 0x3a98

    .line 302
    .line 303
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->totalTime:I

    .line 304
    .line 305
    :goto_2
    iget p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->totalTime:I

    .line 306
    .line 307
    div-int/lit16 p1, p1, 0x3e8

    .line 308
    .line 309
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateCountDownText(I)V

    .line 310
    .line 311
    .line 312
    const-string p1, "broadcast_on_video_start"

    .line 313
    .line 314
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->sendBroadcast(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->startUpdateProcess()V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method public safeOnDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->adSlot:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 5
    .line 6
    const/16 v1, 0x15

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->updateTime:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public safeOnDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->attachWindow:Z

    .line 6
    .line 7
    return-void
.end method
