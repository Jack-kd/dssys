.class public Lcom/meishu/sdk/platform/ms/recycler/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/a;


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/recycler/a;

.field public b:Lcom/meishu/sdk/platform/ms/recycler/c;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/c;Lcom/meishu/sdk/core/ad/recycler/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->a:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADExposure()V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->c:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 11
    .line 12
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 25
    .line 26
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    array-length v2, v1

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v3, v2, :cond_2

    .line 37
    .line 38
    aget-object v4, v1, v3

    .line 39
    .line 40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 47
    .line 48
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 49
    .line 50
    check-cast v5, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    and-int/lit8 v6, v5, 0x2

    .line 57
    .line 58
    const/4 v7, 0x2

    .line 59
    if-ne v6, v7, :cond_0

    .line 60
    .line 61
    add-int/lit8 v5, v5, -0x2

    .line 62
    .line 63
    or-int/2addr v5, v0

    .line 64
    :cond_0
    sget-object v6, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

    .line 65
    .line 66
    invoke-static {v4, v5, v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-instance v6, Lcom/meishu/sdk/core/utils/i;

    .line 81
    .line 82
    invoke-direct {v6}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {v5, v4, v6}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->a:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void

    .line 102
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public onADLoaded(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->a:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 12
    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDrawing()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    instance-of v1, v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v2

    .line 35
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    new-instance v4, Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 61
    .line 62
    invoke-direct {v4, v5, v3, v2}, Lcom/meishu/sdk/platform/ms/recycler/i;-><init>(Lcom/meishu/sdk/platform/ms/recycler/c;Lcom/meishu/sdk/meishu_ad/nativ/b;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    new-instance v4, Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 72
    .line 73
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 74
    .line 75
    invoke-direct {v4, v5, v3, v2}, Lcom/meishu/sdk/platform/ms/recycler/l;-><init>(Lcom/meishu/sdk/platform/ms/recycler/c;Lcom/meishu/sdk/meishu_ad/nativ/b;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->a:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 85
    .line 86
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void

    .line 90
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 16
    .line 17
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->a:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v1, Lcom/meishu/sdk/platform/ms/d;

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, p1, v2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/a;->a:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 53
    .line 54
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
