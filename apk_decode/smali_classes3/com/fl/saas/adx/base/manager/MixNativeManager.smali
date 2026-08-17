.class public Lcom/fl/saas/adx/base/manager/MixNativeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/MixNativeAdManager;
.implements Lcom/fl/saas/adx/base/manager/api/ManagerLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fl/saas/adx/api/mixNative/MixNativeAdManager;",
        "Lcom/fl/saas/adx/base/manager/api/ManagerLoader<",
        "Lcom/fl/saas/f;",
        ">;"
    }
.end annotation


# instance fields
.field private isFailedCallBack:Z

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadListener:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

.field private final mLoader:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/adx/base/manager/loader/BaseLoader<",
            "Lcom/fl/saas/f;",
            ">;"
        }
    .end annotation
.end field

.field private final mParams:Lcom/fl/saas/adx/api/AdParams;

.field private final onNativeReleaseListener:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->isFailedCallBack:Z

    iput-object p2, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mParams:Lcom/fl/saas/adx/api/AdParams;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mLoadListener:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    new-instance p1, Lcom/fl/saas/adx/base/manager/MixNativeManager$1;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p0, p2}, Lcom/fl/saas/adx/base/manager/MixNativeManager$1;-><init>(Lcom/fl/saas/adx/base/manager/MixNativeManager;Lcom/fl/saas/adx/base/manager/api/ManagerLoader;I)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;

    new-instance p2, Lcom/fl/saas/adx/base/manager/g;

    invoke-direct {p2, p1}, Lcom/fl/saas/adx/base/manager/g;-><init>(Lcom/fl/saas/adx/base/manager/loader/BaseLoader;)V

    iput-object p2, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->onNativeReleaseListener:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/manager/MixNativeManager;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mLoadListener:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->isFailedCallBack:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->isFailedCallBack:Z

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/manager/MixNativeManager;)Lcom/fl/saas/adx/api/AdParams;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mParams:Lcom/fl/saas/adx/api/AdParams;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/manager/MixNativeManager;)Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->onNativeReleaseListener:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/manager/MixNativeManager;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mLoadListener:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mParams:Lcom/fl/saas/adx/api/AdParams;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setNativeAdParams(Lcom/fl/saas/adx/api/AdParams;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mLoadListener:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;->onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic bindAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/f;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/MixNativeManager;->bindAdapter(Lcom/fl/saas/f;)Lcom/fl/saas/f;

    move-result-object p1

    return-object p1
.end method

.method public bindAdapter(Lcom/fl/saas/f;)Lcom/fl/saas/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/adx/base/manager/h;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/manager/h;-><init>(Lcom/fl/saas/adx/base/manager/MixNativeManager;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/f;->b(Lcom/fl/saas/B;)Lcom/fl/saas/f;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/manager/i;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/manager/i;-><init>(Lcom/fl/saas/adx/base/manager/MixNativeManager;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/f;->a(Lcom/fl/saas/B;)Lcom/fl/saas/f;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextOpt()Lcom/fl/saas/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mParams:Lcom/fl/saas/adx/api/AdParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/api/AdParams;->getLinkId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isFailedCallBack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->isFailedCallBack:Z

    return v0
.end method

.method public load()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mParams:Lcom/fl/saas/adx/api/AdParams;

    invoke-virtual {v1}, Lcom/fl/saas/adx/api/AdParams;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->request(Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->isFailedCallBack:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->isFailedCallBack:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mLoadListener:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager;->mLoadListener:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    return-void
.end method

.method public onLoadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/MixNativeManager;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method
