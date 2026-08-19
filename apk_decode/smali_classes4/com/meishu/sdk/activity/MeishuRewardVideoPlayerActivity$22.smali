.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;
.super Lcom/meishu/sdk/core/webview/listener/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/webview/listener/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dismissAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getActivityState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "pause"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "resume"

    .line 13
    .line 14
    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/y0;->m(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    float-to-int v0, v0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v0, v1, v2, v3}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;->make(IZZLcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lcom/meishu/sdk/core/utils/v;->a:Lcom/google/gson/Gson;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public isAppBackground()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public isSoundsOpen()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->w:Z

    .line 26
    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    return v1
.end method

.method public notifyRewarded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShakeOrTurnState(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7602(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v2, Lcom/meishu/sdk/R$id;->ms_shake_root_view:I

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    return v2

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 56
    .line 57
    invoke-static {p1, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    return p1

    .line 67
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return v2
.end method

.method public setSoundsOpen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public setVideoPlayState(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getPlayState()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$22;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 65
    .line 66
    .line 67
    return-void
.end method
