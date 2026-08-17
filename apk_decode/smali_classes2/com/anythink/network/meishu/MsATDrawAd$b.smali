.class Lcom/anythink/network/meishu/MsATDrawAd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATDrawAd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATDrawAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATDrawAd$b;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClickRetry()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$b;->a:Lcom/anythink/network/meishu/MsATDrawAd;

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

.method public onVideoError(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$b;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoVideoPlayFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onVideoLoad()V
    .locals 0

    return-void
.end method

.method public pauseBtnClick()V
    .locals 0

    return-void
.end method

.method public playCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$b;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoEnd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public playError()V
    .locals 0

    return-void
.end method

.method public playPause()V
    .locals 0

    return-void
.end method

.method public playRenderingStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$b;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoStart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public playResume()V
    .locals 0

    return-void
.end method
