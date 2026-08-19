.class public Lcom/meishu/sdk/core/loader/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/IAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K::",
        "Lcom/meishu/sdk/core/loader/IAdLoadListener<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/loader/IAdLoadListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/core/loader/d;

.field public b:Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/loader/d;",
            "TK;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .line 1
    const-string v0, "AdLoadListenerProxy"

    .line 2
    .line 3
    const-string v1, "send onAdClosed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getCacheAdListener()Lcom/meishu/sdk/core/loader/cache/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getCacheAdListener()Lcom/meishu/sdk/core/loader/cache/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/loader/concurrent/a;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/meishu/sdk/core/loader/concurrent/a;->b:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/a;->b:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public onAdError()V
    .locals 0

    return-void
.end method

.method public onAdExposure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/meishu/sdk/platform/ms/g;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoader;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getCacheAdListener()Lcom/meishu/sdk/core/loader/cache/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getCacheAdListener()Lcom/meishu/sdk/core/loader/cache/c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/meishu/sdk/core/loader/concurrent/a;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/meishu/sdk/core/loader/concurrent/a;->b:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/a;->b:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 74
    .line 75
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 82
    .line 83
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/concurrent/f;->onAdExposure()V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void
.end method

.method public onAdLoaded(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getTag()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0, p1, v1}, Lcom/meishu/sdk/core/loader/concurrent/f;->b(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V
    .locals 6

    .line 1
    const-string v0, "AdLoadListenerProxy"

    .line 2
    .line 3
    const-string v1, "send onAdPlatformError"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getTag()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-interface {v0, p1, v1}, Lcom/meishu/sdk/core/loader/concurrent/f;->a(Lcom/meishu/sdk/core/loader/AdPlatformError;I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getCacheAdListener()Lcom/meishu/sdk/core/loader/cache/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getCacheAdListener()Lcom/meishu/sdk/core/loader/cache/c;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->getCode()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    check-cast v0, Lcom/meishu/sdk/core/loader/concurrent/a;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-string v4, "ConCurrentManager"

    .line 80
    .line 81
    const-string v5, "onAdRenderFail"

    .line 82
    .line 83
    invoke-static {v4, v5}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v4, v0, Lcom/meishu/sdk/core/loader/concurrent/a;->a:Lcom/meishu/sdk/core/loader/cache/a;

    .line 87
    .line 88
    iget-boolean v5, v4, Lcom/meishu/sdk/core/loader/cache/a;->e:Z

    .line 89
    .line 90
    if-eqz v5, :cond_2

    .line 91
    .line 92
    iget-wide v4, v4, Lcom/meishu/sdk/core/loader/cache/a;->f:J

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object v4, v4, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    :goto_0
    cmp-long v2, v4, v2

    .line 102
    .line 103
    if-nez v2, :cond_3

    .line 104
    .line 105
    iget-object v2, v0, Lcom/meishu/sdk/core/loader/concurrent/a;->b:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/a;->b:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0, v1, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void
.end method

.method public onAdReady(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getTag()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0, p1, v1}, Lcom/meishu/sdk/core/loader/concurrent/f;->a(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/b;->a:Lcom/meishu/sdk/core/loader/d;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getTag()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0, p1, p2, v1}, Lcom/meishu/sdk/core/loader/concurrent/f;->a(Ljava/lang/String;II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
