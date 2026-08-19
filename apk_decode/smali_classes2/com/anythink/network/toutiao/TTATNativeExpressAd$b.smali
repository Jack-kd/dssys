.class Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeExpressAd;->setAdData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->f:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->f:Z

    .line 9
    .line 10
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->l(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v0, v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->m(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 34
    .line 35
    move-wide v2, p1

    .line 36
    move-wide v4, p3

    .line 37
    move-object v6, p5

    .line 38
    move-object v7, p6

    .line 39
    invoke-interface/range {v1 .. v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadStart(JJLjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    move-wide v2, p1

    .line 44
    move-wide v4, p3

    .line 45
    move-object v6, p5

    .line 46
    move-object v7, p6

    .line 47
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->n(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->o(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    instance-of p1, p1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->p(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 70
    .line 71
    move-object v8, v7

    .line 72
    move-object v7, v6

    .line 73
    move-wide v5, v4

    .line 74
    move-wide v3, v2

    .line 75
    move-object v2, p1

    .line 76
    invoke-interface/range {v2 .. v8}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadUpdate(JJLjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->c(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 27
    .line 28
    move-wide v2, p1

    .line 29
    move-wide v4, p3

    .line 30
    move-object v6, p5

    .line 31
    move-object v7, p6

    .line 32
    invoke-interface/range {v1 .. v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadFail(JJLjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->f(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->g(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadFinish(JLjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->q(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->r(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->s(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 27
    .line 28
    move-wide v2, p1

    .line 29
    move-wide v4, p3

    .line 30
    move-object v6, p5

    .line 31
    move-object v7, p6

    .line 32
    invoke-interface/range {v1 .. v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadPause(JJLjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onIdle()V
    .locals 0

    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->h(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->i(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->j(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
