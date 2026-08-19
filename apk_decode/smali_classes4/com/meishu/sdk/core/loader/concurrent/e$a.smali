.class public Lcom/meishu/sdk/core/loader/concurrent/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/concurrent/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/concurrent/e;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:[Z

.field public final synthetic c:Lcom/meishu/sdk/core/loader/concurrent/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/concurrent/e;Z[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->a:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->b:[Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/loader/AdPlatformError;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    const-string p1, "ConCurrentManager"

    const-string p2, "Meishu___onAdError"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 7
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 4

    .line 9
    iget-boolean p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->a:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 11
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 12
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheKey()Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 14
    iget-object v1, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->k:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    new-instance v1, Lcom/meishu/sdk/core/loader/cache/a;

    invoke-direct {v1}, Lcom/meishu/sdk/core/loader/cache/a;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 18
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 19
    iput-object v2, v1, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 20
    iput-object p1, v1, Lcom/meishu/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    .line 21
    iput-object p2, v1, Lcom/meishu/sdk/core/loader/cache/a;->a:Ljava/lang/String;

    .line 22
    iput-boolean v0, v1, Lcom/meishu/sdk/core/loader/cache/a;->e:Z

    .line 23
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getLoadedTime()J

    move-result-wide v2

    .line 24
    iput-wide v2, v1, Lcom/meishu/sdk/core/loader/cache/a;->f:J

    .line 25
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 26
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 27
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExpire_timestamp()I

    move-result p1

    int-to-long v2, p1

    .line 28
    iput-wide v2, v1, Lcom/meishu/sdk/core/loader/cache/a;->g:J

    .line 29
    new-instance p1, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    invoke-direct {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;-><init>()V

    .line 30
    const-string v0, "MS"

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setSdk(Ljava/lang/String;)V

    .line 31
    iput-object p1, v1, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 32
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 33
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 34
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheScore()I

    move-result p1

    .line 35
    iput p1, v1, Lcom/meishu/sdk/core/loader/cache/a;->c:I

    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 37
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/concurrent/e;->k:Ljava/util/List;

    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object p1, Lcom/meishu/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcom/meishu/sdk/core/loader/cache/CacheManager;

    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 40
    iget-object v1, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->k:Ljava/util/List;

    .line 41
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->handleCurrentList(Ljava/lang/String;Ljava/util/List;I)V

    return-void

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 44
    iget-boolean v1, p2, Lcom/meishu/sdk/core/loader/concurrent/e;->j:Z

    if-nez v1, :cond_3

    .line 45
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/loader/concurrent/e;Z)Z

    .line 46
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 47
    iget-object v1, p2, Lcom/meishu/sdk/core/loader/concurrent/e;->d:Lcom/meishu/sdk/core/loader/strategy/a;

    if-eqz v1, :cond_1

    .line 48
    check-cast v1, Lcom/meishu/sdk/core/loader/strategy/e;

    .line 49
    iput-boolean v0, v1, Lcom/meishu/sdk/core/loader/strategy/e;->r:Z

    .line 50
    :cond_1
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 51
    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 52
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 53
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 54
    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 55
    :cond_2
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    invoke-static {p2, p1}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/loader/concurrent/e;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    .line 56
    iget-boolean p3, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->a:Z

    if-nez p3, :cond_1

    .line 57
    iget-object p3, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 58
    iget-object p3, p3, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 59
    invoke-virtual {p3}, Lcom/meishu/sdk/core/loader/c;->getAdType()Lcom/meishu/sdk/core/ad/AdType;

    move-result-object p3

    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    if-eq p3, v0, :cond_0

    .line 60
    :try_start_0
    iget-object p3, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 61
    iget-object p3, p3, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 62
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 63
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 65
    iget-object p3, p3, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 66
    invoke-virtual {p3}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 67
    iget-object p3, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 68
    iget-object p3, p3, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 69
    invoke-virtual {p3}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->a:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onAdExposure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->b:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v2, v0, v1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    aput-boolean v2, v0, v1

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getBakUrls()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/concurrent/e$a;->c:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->f:Lcom/meishu/sdk/core/loader/d;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/t;->a([Ljava/lang/String;Lcom/meishu/sdk/core/loader/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
