.class Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .line 1
    const-string v0, "loadFeedAd success,\u4e3b\u7ebf\u7a0b\uff1a "

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MimoRecyclerLoader"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;

    .line 41
    .line 42
    iget-object v3, v2, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;->val$templateAd:Lcom/miui/zeus/mimo/sdk/TemplateAd;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 45
    .line 46
    invoke-direct {v1, v3, v2}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;-><init>(Lcom/miui/zeus/mimo/sdk/TemplateAd;Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 71
    .line 72
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 84
    .line 85
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method
