.class public abstract Lcom/meishu/sdk/platform/BasePlatformLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Loader:Lcom/meishu/sdk/core/loader/c;",
        "LoaderListener::Lcom/meishu/sdk/core/loader/IAdLoadListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/loader/d<",
        "T",
        "Loader;",
        ">;"
    }
.end annotation


# instance fields
.field public adLoader:Lcom/meishu/sdk/core/loader/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "Loader;"
        }
    .end annotation
.end field

.field private cacheAdListener:Lcom/meishu/sdk/core/loader/cache/c;

.field public conCurrentListener:Lcom/meishu/sdk/core/loader/concurrent/f;

.field public context:Landroid/content/Context;

.field private groupIndex:I

.field private index:I

.field public loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LoaderListener;"
        }
    .end annotation
.end field

.field public localParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public next:Lcom/meishu/sdk/core/loader/d;

.field public sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Loader;",
            "Lcom/meishu/sdk/core/domain/SdkAdInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->index:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Lcom/meishu/sdk/core/loader/e;->a(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/IAdLoadListener;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdLoader()Lcom/meishu/sdk/core/loader/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "Loader;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheAdListener()Lcom/meishu/sdk/core/loader/cache/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->cacheAdListener:Lcom/meishu/sdk/core/loader/cache/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->conCurrentListener:Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroupIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->groupIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LoaderListener;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public next()Lcom/meishu/sdk/core/loader/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->next:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public sendGdtWinResult(ZI)V
    .locals 0

    return-void
.end method

.method public setCacheAdListener(Lcom/meishu/sdk/core/loader/cache/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->cacheAdListener:Lcom/meishu/sdk/core/loader/cache/c;

    .line 2
    .line 3
    return-void
.end method

.method public setConCurrentLoadListener(Lcom/meishu/sdk/core/loader/concurrent/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->conCurrentListener:Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 2
    .line 3
    return-void
.end method

.method public setGroupIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->groupIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public setLocalParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setNext(Lcom/meishu/sdk/core/loader/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->next:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->index:I

    .line 2
    .line 3
    return-void
.end method
