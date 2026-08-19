.class Lcom/anythink/network/meishu/MsATFeedAd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATFeedAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATFeedAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATFeedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 2
    .line 3
    div-long/2addr p1, p3

    .line 4
    long-to-int p1, p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoPlayProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public onVideoCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoEnd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATFeedAd;->a(Lcom/anythink/network/meishu/MsATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    const-string v2, "ms onVideoError"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoVideoPlayFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATFeedAd;->a(Lcom/anythink/network/meishu/MsATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATFeedAd;->a(Lcom/anythink/network/meishu/MsATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATFeedAd;->a(Lcom/anythink/network/meishu/MsATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATFeedAd;->a(Lcom/anythink/network/meishu/MsATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd$b;->a:Lcom/anythink/network/meishu/MsATFeedAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoStart()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
