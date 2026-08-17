.class Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

.field final synthetic val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

.field final synthetic val$builder:Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

.field final synthetic val$mCheckListener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    iput-object p2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    iput-object p3, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    iput-object p4, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$mCheckListener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FLSDK-Video"

    const-string v1, "onAdClick"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onAdClick(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClose()V
    .locals 2

    const-string v0, "FLSDK-Video"

    const-string v1, "onAdClose"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onAdClose()V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLSDK-Video"

    invoke-static {v1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onAdShow()V
    .locals 10

    const-string v0, "onAdShow"

    const-string v1, "FLSDK-Video"

    invoke-static {v1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    invoke-virtual {v2}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-static {v2}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-static {v2}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->access$100(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "reqVideoVerify"

    invoke-static {v1, v2}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/j;->j()I

    move-result v1

    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    move-result-object v3

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    invoke-virtual {v2}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getCustomData()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/fl/saas/adx/util/DeviceUtil;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    invoke-virtual {v2}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/fl/saas/j;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/fl/saas/E0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onAdShow()V

    return-void
.end method

.method public onSkipVideo()V
    .locals 2

    const-string v0, "FLSDK-Video"

    const-string v1, "onSkipVideo"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onSkipVideo()V

    return-void
.end method

.method public onVideoCompleted()V
    .locals 2

    const-string v0, "FLSDK-Video"

    const-string v1, "onVideoCompleted"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onVideoCompleted()V

    return-void
.end method

.method public onVideoPrepared()V
    .locals 2

    const-string v0, "FLSDK-Video"

    const-string v1, "onVideoPrepared"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onVideoPrepared()V

    return-void
.end method

.method public onVideoReward(D)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoReward:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLSDK-Video"

    invoke-static {v1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    invoke-virtual {v2}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-static {v2}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-static {v2}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->access$100(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "reqVideoVerify"

    invoke-static {v1, v2}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/j;->j()I

    move-result v1

    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    move-result-object v3

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    invoke-virtual {v2}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getCustomData()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/fl/saas/adx/util/DeviceUtil;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    invoke-virtual {v2}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/fl/saas/j;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/fl/saas/E0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-static {v0}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->access$100(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$mCheckListener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getReqId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;->onVideoCheckReward(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onVideoReward(D)V

    return-void
.end method
