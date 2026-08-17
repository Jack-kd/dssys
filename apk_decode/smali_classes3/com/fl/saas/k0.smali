.class public abstract Lcom/fl/saas/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/j0;
.implements Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/fl/saas/j;

.field private h:Lcom/fl/saas/adx/api/AdParams;

.field private i:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Native"

    .line 5
    .line 6
    invoke-static {v0, p0}, Lcom/fl/saas/adx/util/CommConstant;->getObjTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/fl/saas/k0;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NONE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/fl/saas/k0;->i:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/fl/saas/k0;->j:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/fl/saas/k0;->k:Z

    .line 20
    .line 21
    return-void
.end method

.method private a(Lcom/fl/saas/B;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fl/saas/k0;->c:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method private static synthetic a(Lcom/fl/saas/adx/api/mixNative/NativeAd;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;->onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void
.end method

.method private static synthetic a(Lcom/fl/saas/adx/base/exception/FLError;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/api/mixNative/NativeAd;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/fl/saas/k0;->a(Lcom/fl/saas/adx/api/mixNative/NativeAd;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/exception/FLError;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/fl/saas/k0;->a(Lcom/fl/saas/adx/base/exception/FLError;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/fl/saas/adx/api/AdParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/k0;->h:Lcom/fl/saas/adx/api/AdParams;

    return-object v0
.end method

.method public a(Lcom/fl/saas/adx/api/AdParams;)Lcom/fl/saas/j0;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/fl/saas/k0;->h:Lcom/fl/saas/adx/api/AdParams;

    return-object p0
.end method

.method public a(Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)Lcom/fl/saas/j0;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/fl/saas/k0;->c:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    return-object p0
.end method

.method public a(Lcom/fl/saas/j;)Lcom/fl/saas/j0;
    .locals 1

    .line 9
    iput-object p1, p0, Lcom/fl/saas/k0;->g:Lcom/fl/saas/j;

    iget-object v0, p1, Lcom/fl/saas/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/fl/saas/k0;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/fl/saas/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/fl/saas/k0;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fl/saas/j;->c()I

    move-result p1

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->create(I)Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/k0;->i:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/j0;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/fl/saas/k0;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/fl/saas/k0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/fl/saas/adx/base/innterNative/NativeStyle;)Lcom/fl/saas/k0;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/fl/saas/k0;->i:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/fl/saas/k0;->b:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "mContext is null"

    invoke-virtual {p0, p1}, Lcom/fl/saas/k0;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/k0;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fl/saas/k0;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/fl/saas/k0;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4fb3

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fl/saas/k0;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/fl/saas/k0;->k:Z

    return-void
.end method

.method public b()Lcom/fl/saas/adx/base/innterNative/NativeStyle;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/k0;->i:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    sget-object v1, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NONE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fl/saas/k0;->g:Lcom/fl/saas/j;

    invoke-virtual {v0}, Lcom/fl/saas/j;->c()I

    move-result v0

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->create(I)Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/k0;->i:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/k0;->i:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fl/saas/k0;->b:Landroid/content/Context;

    return-object v0
.end method

.method public clearCache()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/k0;->j:Z

    .line 3
    .line 4
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/k0;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fl/saas/k0;->c:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    .line 3
    .line 4
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/k0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/k0;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract g()V
.end method

.method public getAdSource()Lcom/fl/saas/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/k0;->g:Lcom/fl/saas/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/k0;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onAdFailed:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/fl/saas/w2;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/fl/saas/w2;-><init>(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/fl/saas/k0;->a(Lcom/fl/saas/B;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/k0;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onNativeAdLoaded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/fl/saas/v2;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/fl/saas/v2;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/fl/saas/k0;->a(Lcom/fl/saas/B;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setCache()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/k0;->j:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fl/saas/k0;->c:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    .line 6
    .line 7
    return-void
.end method

.method public setContext(Landroid/content/Context;)Lcom/fl/saas/j0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/k0;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLinkId(Ljava/lang/String;)Lcom/fl/saas/j0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/k0;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
