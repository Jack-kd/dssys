.class public Lcom/meishu/sdk/platform/ms/a;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;
.implements Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenVideoAd;


# instance fields
.field public a:Lcom/meishu/sdk/platform/ms/c;

.field public b:Lcom/meishu/sdk/platform/ms/g;

.field public c:Lcom/meishu/sdk/core/loader/InteractionListener;

.field public d:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

.field public e:Lcom/meishu/sdk/meishu_ad/nativ/f;

.field public f:Lcom/meishu/sdk/platform/ms/reward/a;

.field public g:Z

.field public h:Z

.field public i:J

.field public j:J

.field public k:J

.field public volatile l:Z

.field public m:Landroid/content/BroadcastReceiver;

.field public volatile n:Z

.field public o:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/g;Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/platform/ms/reward/a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MS"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/a;->h:Z

    .line 9
    .line 10
    new-instance v0, Lcom/meishu/sdk/platform/ms/a$a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ms/a$a;-><init>(Lcom/meishu/sdk/platform/ms/a;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->m:Landroid/content/BroadcastReceiver;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/a;->f:Lcom/meishu/sdk/platform/ms/reward/a;

    .line 24
    .line 25
    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/a;)V
    .locals 6

    .line 1
    const-string v0, "."

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/a;->a(Lcom/meishu/sdk/core/ad/AdSlot;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "RewardVideoAdAdapter"

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    const-string p0, "has exp. return"

    invoke-static {v2, p0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/meishu/sdk/platform/ms/a;->n:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/meishu/sdk/platform/ms/a;->n:Z

    .line 6
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setHasExposed(Z)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 10
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 11
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/AdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/meishu/sdk/platform/ms/a;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/meishu/sdk/platform/ms/a;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/meishu/sdk/platform/ms/a;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;)[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 14
    const-string v1, "send onAdExposure"

    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 17
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    instance-of v5, v4, Lcom/meishu/sdk/platform/ms/reward/b;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/meishu/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcom/meishu/sdk/core/ad/AdType;

    .line 18
    :goto_1
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 19
    check-cast v4, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v5}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {v4, v3, v5}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b(Lcom/meishu/sdk/platform/ms/a;)V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/a;->l:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    const-string v0, "RewardVideoAdAdapter"

    const-string v1, "onVideoActivityClosed: \u6fc0\u52b1\u89c6\u9891\u5e7f\u544a\u56de\u6536\u8d44\u6e90"

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/meishu/sdk/platform/ms/a;->c:Lcom/meishu/sdk/core/loader/InteractionListener;

    if-eqz p0, :cond_2

    .line 42
    invoke-interface {p0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 132
    :try_start_0
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/a;->l:Z

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string v1, "broadcast_onclick"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "broadcast_onreward"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "broadcast_onclosed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "broadcast_on_video_complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 139
    const-string v1, "broadcast_on_video_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "broadcast_on_video_pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "broadcast_on_video_resume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "broadcast_on_video_error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/meishu/sdk/meishu_ad/n0;)V
    .locals 7

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 23
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 24
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 26
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 27
    const-class v3, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    const-string v3, "orientation_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string v1, "local_ad_id_key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 31
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Ljava/lang/String;JLcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)V

    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "Image_src"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 36
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->j:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 37
    const-string v3, "Video_start_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_1
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->k:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 39
    const-string v3, "Video_one_quarter_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_2
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->l:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 41
    const-string v3, "Video_one_half_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :cond_3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->m:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 43
    const-string v3, "Video_three_quarter_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :cond_4
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->n:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 45
    const-string v3, "Video_complete_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :cond_5
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->o:[Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 47
    const-string v3, "Video_pause_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    :cond_6
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->p:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 49
    const-string v3, "Video_resume_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :cond_7
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->r:[Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 51
    const-string v3, "Video_mute_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_8
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->s:[Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 53
    const-string v3, "Video_unmute_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 55
    const-string v1, "Video_cover"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_a
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->h:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 57
    const-string v3, "Video_endcover"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_b
    iget-wide v3, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->i:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    .line 59
    const-string v1, "Video_keep_time"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 60
    :cond_c
    iget-object v1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 62
    const-string v1, "Ad_title"

    .line 63
    iget-object v3, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 64
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_d
    iget-object v1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 67
    const-string v1, "Ad_content"

    .line 68
    iget-object v3, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :cond_e
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 71
    const-string v1, "From_logo"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :cond_f
    iget-object v1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 73
    const-string v3, "Ad_icon_url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_10
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 75
    const-string v1, "event_url"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_11
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->d:Ljava/lang/String;

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 78
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v1

    if-nez v1, :cond_12

    .line 79
    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    goto :goto_1

    .line 80
    :cond_12
    const-string v1, "\u70b9\u51fb\u4e0b\u8f7d"

    .line 81
    :cond_13
    :goto_1
    const-string v3, "Action_text"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "Clickable_range"

    .line 83
    iget v3, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->v:I

    .line 84
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "Close_btn"

    .line 86
    iget v3, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->w:I

    .line 87
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "clk_type"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v1, "power_index"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "Power_index2"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index2()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v1, "power_count"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_count()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v1, "power_delay"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v1, "Interaction_type"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    instance-of v3, v1, Lcom/meishu/sdk/platform/ms/reward/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Ad_type"

    if-eqz v3, :cond_15

    .line 95
    :try_start_1
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/e1;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meishu/sdk/core/webview/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempId()I

    move-result v1

    if-lez v1, :cond_14

    .line 97
    const-string v1, "web_temp_url"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "web_temp_id"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    :cond_14
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/e1;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/BaseAdSlot;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 100
    const-string v1, "reward_tmp_url"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReward_tmp_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "reward_tmp_type"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReward_tmp_type()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string v1, "reward_tmp_time"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReward_tmp_time()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v1, "reward_tmp_id"

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getRewardTmpId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 104
    :cond_15
    instance-of v1, v1, Lcom/meishu/sdk/platform/ms/fullscreenvideo/a;

    if-eqz v1, :cond_16

    .line 105
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    :cond_16
    :goto_2
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    instance-of v3, v1, Lcom/meishu/sdk/meishu_ad/nativ/d;

    if-eqz v3, :cond_17

    .line 107
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 108
    iget-boolean v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/d;->k:Z

    .line 109
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->setVideoMute(Z)V

    .line 110
    :cond_17
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->setFullScreenAd(Lcom/meishu/sdk/platform/ms/c;)V

    .line 111
    new-instance v1, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 112
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_feature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_feature(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_privacy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_privacy(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPayment_types()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setPayment_types(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission(Ljava/util/List;)V

    .line 120
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intor_url(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_private_agreement(Ljava/lang/String;)V

    .line 123
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->setDownloadDialogBean(Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/ms/a;->a(Landroid/content/Context;)V

    .line 125
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_18

    goto :goto_3

    :cond_18
    const/high16 v0, 0x10000000

    .line 126
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    :goto_3
    invoke-static {p2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->setMediaView(Lcom/meishu/sdk/meishu_ad/n0;)V

    .line 128
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 129
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a;->f:Lcom/meishu/sdk/platform/ms/reward/a;

    if-eqz p1, :cond_19

    .line 131
    sget-object p2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {p1, v0, p2}, Lcom/meishu/sdk/platform/ms/reward/a;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_19
    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/a;->g:Z

    if-eqz v0, :cond_1

    .line 2
    const-string p1, "RewardVideoAdAdapter"

    const-string v0, "\u540c\u4e00\u4e2a\u6fc0\u52b1\u89c6\u9891\u53ea\u80fd\u5c55\u793a\u4e00\u6b21"

    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string p1, "\u540c\u4e00\u4e2a\u6fc0\u52b1\u89c6\u9891\u53ea\u80fd\u5c55\u793a\u4e00\u6b21"

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->f:Lcom/meishu/sdk/platform/ms/reward/a;

    if-eqz v0, :cond_0

    .line 5
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/meishu/sdk/platform/ms/reward/a;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meishu/sdk/platform/ms/a;->i:J

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 9
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 11
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 12
    instance-of v2, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    if-eqz v2, :cond_7

    .line 13
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/meishu/sdk/platform/ms/a;->g:Z

    .line 15
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    instance-of v3, v2, Lcom/meishu/sdk/meishu_ad/nativ/d;

    if-eqz v3, :cond_3

    .line 16
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 17
    iput-boolean v1, v2, Lcom/meishu/sdk/meishu_ad/nativ/d;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v2, 0x0

    .line 18
    :try_start_2
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->isValid(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    .line 19
    :try_start_3
    iput-boolean v1, p0, Lcom/meishu/sdk/platform/ms/a;->h:Z

    .line 20
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/ms/a;->a(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    const-class v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_4

    const/high16 v1, 0x10000000

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 27
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    instance-of v3, v1, Lcom/meishu/sdk/platform/ms/reward/b;

    if-eqz v3, :cond_6

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/platform/ms/a;->a(Landroid/content/Context;Lcom/meishu/sdk/meishu_ad/n0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 29
    :cond_6
    :try_start_5
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 30
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    new-instance v2, Lcom/meishu/sdk/platform/ms/a$b;

    invoke-direct {v2, p0, p1, v0}, Lcom/meishu/sdk/platform/ms/a$b;-><init>(Lcom/meishu/sdk/platform/ms/a;Landroid/content/Context;Lcom/meishu/sdk/meishu_ad/n0;)V

    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/a0$i;)V

    goto :goto_3

    .line 31
    :cond_7
    const-string p1, "\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->f:Lcom/meishu/sdk/platform/ms/reward/a;

    if-eqz v0, :cond_8

    .line 33
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/meishu/sdk/platform/ms/reward/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 34
    :cond_8
    const-string p1, "RewardVideoAdAdapter"

    const-string v0, "showAd: \u8bf7\u5148\u52a0\u8f7d\u89c6\u9891"

    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clearRewardMediaView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 6
    .line 7
    return-void
.end method

.method public getData()Lcom/meishu/sdk/core/utils/ResultBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/utils/ResultBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/ResultBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDrawing()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setDrawing(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPid(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPrice(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "MS"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/a;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAdInfo(Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;)V

    .line 121
    .line 122
    .line 123
    return-object v0
.end method

.method public isAdValid()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExpire_timestamp()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const-wide/32 v0, 0x1a8ce0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 14
    .line 15
    int-to-long v0, v0

    .line 16
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    sub-long/2addr v2, v4

    .line 27
    cmp-long v0, v2, v0

    .line 28
    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    return v0

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    return v0
.end method

.method public sendLossNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLossUrl()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public sendWinNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWinUrl()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    .locals 1

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/a;->c:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/a;->o:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    return-void
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/a;->d:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/platform/ms/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 5
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->j:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/ms/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 7
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
