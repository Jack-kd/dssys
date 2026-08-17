.class Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/msp/mobad/api/listener/INativeAdvanceLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->loadRecycler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdFailed(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->access$100()Ljava/lang/String;

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
    const-string v2, "onAdFailed "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, " "

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public onAdSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;

    .line 21
    .line 22
    new-instance v2, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 25
    .line 26
    invoke-direct {v2, v1, v3}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;-><init>(Lcom/heytap/msp/mobad/api/params/INativeAdvanceData;Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->access$200(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 68
    .line 69
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method
