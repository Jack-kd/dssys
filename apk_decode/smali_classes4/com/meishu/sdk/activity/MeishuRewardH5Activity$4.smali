.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/listener/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->initClickEvent(Lcom/meishu/sdk/core/bquery/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$4;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDPStart()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$700()Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/f;->b(Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "dp_start"

    .line 17
    .line 18
    const/16 v2, 0x16

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v0, v2, v3, v1}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    return-void
.end method

.method public onJumpDPRes(ZZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$500()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onJumpDPRes:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " showedSysDialog:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$4;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 40
    .line 41
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$700()Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {p1, v0, v1, p2}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/core/ad/AdSlot;Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "dp_start"

    .line 53
    .line 54
    const/16 v0, 0x17

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-static {p1, v0, v1, p2}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    :cond_0
    return-void
.end method
