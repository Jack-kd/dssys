.class public Lcom/meishu/sdk/meishu_ad/splash/f;
.super Lcom/meishu/sdk/core/service/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/w;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/core/utils/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/f;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/splash/f;->b:Lcom/meishu/sdk/core/utils/w;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/service/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityPause(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/f;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/f;->b:Lcom/meishu/sdk/core/utils/w;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/meishu/sdk/core/utils/w;->c:Z

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/meishu/sdk/core/utils/w;->d:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getHasClicked()Lcom/meishu/sdk/core/utils/b;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v2, v2, Lcom/meishu/sdk/core/utils/b;->b:Z

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->isHasClickedSkip()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->isHasTimeOver()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, ""

    .line 53
    .line 54
    const/16 v1, 0x19

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {p1, v1, v2, v0}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onAppStateUpdate(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
