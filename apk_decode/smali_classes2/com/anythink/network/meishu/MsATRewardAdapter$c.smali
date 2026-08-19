.class Lcom/anythink/network/meishu/MsATRewardAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATRewardAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATRewardAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATRewardAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATRewardAdapter$c;->a:Lcom/anythink/network/meishu/MsATRewardAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter$c;->a:Lcom/anythink/network/meishu/MsATRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATRewardAdapter;->l(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter$c;->a:Lcom/anythink/network/meishu/MsATRewardAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATRewardAdapter;->m(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter$c;->a:Lcom/anythink/network/meishu/MsATRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATRewardAdapter;->d(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter$c;->a:Lcom/anythink/network/meishu/MsATRewardAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATRewardAdapter;->e(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdExposure()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter$c;->a:Lcom/anythink/network/meishu/MsATRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATRewardAdapter;->b(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATRewardAdapter$c;->a:Lcom/anythink/network/meishu/MsATRewardAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATRewardAdapter;->c(Lcom/anythink/network/meishu/MsATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
