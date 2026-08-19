.class Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->p(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->q(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->r(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v0, v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->t(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v1, v0

    .line 40
    check-cast v1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 41
    .line 42
    move-wide v2, p1

    .line 43
    move-wide v4, p3

    .line 44
    move-object v6, p5

    .line 45
    move-object v7, p6

    .line 46
    invoke-interface/range {v1 .. v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadStart(JJLjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    move-wide v2, p1

    .line 51
    move-wide v4, p3

    .line 52
    move-object v6, p5

    .line 53
    move-object v7, p6

    .line 54
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->u(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->v(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    instance-of p1, p1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->w(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 79
    .line 80
    move-object v8, v7

    .line 81
    move-object v7, v6

    .line 82
    move-wide v5, v4

    .line 83
    move-wide v3, v2

    .line 84
    move-object v2, p1

    .line 85
    invoke-interface/range {v2 .. v8}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadUpdate(JJLjava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->A(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->B(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->C(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->E(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->F(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->G(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->x(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->y(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->z(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->H(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->I(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$e;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->J(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATEventInterface;

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
