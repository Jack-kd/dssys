.class Lcom/fl/saas/J0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/J0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/J0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/J0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/J0$a;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/J0$a;->a(Lcom/fl/saas/j;)V

    return-void
.end method

.method private synthetic a(Lcom/fl/saas/j;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-static {v0}, Lcom/fl/saas/J0;->a(Lcom/fl/saas/J0;)Lcom/fl/saas/K0;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    new-instance v0, Lcom/fl/saas/adx/base/exception/FLError;

    const/16 v1, 0x4fb3

    const-string v2, "onLoadFailed, native is empty"

    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/k0;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-static {v0}, Lcom/fl/saas/J0;->c(Lcom/fl/saas/J0;)Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    move-result-object v0

    sget-object v1, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->EXPRESS:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-virtual {v0}, Lcom/fl/saas/k0;->a()Lcom/fl/saas/adx/api/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/api/AdParams;->isMixNative()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-virtual {v0}, Lcom/fl/saas/k0;->a()Lcom/fl/saas/adx/api/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/api/AdParams;->getExpressWidth()F

    move-result v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v0

    iget-object v1, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-virtual {v1}, Lcom/fl/saas/k0;->a()Lcom/fl/saas/adx/api/AdParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fl/saas/adx/api/AdParams;->getExpressHeight()F

    move-result v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    iget-object v2, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    new-instance v3, Lcom/fl/saas/L0;

    invoke-static {v2}, Lcom/fl/saas/J0;->d(Lcom/fl/saas/J0;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-static {v5}, Lcom/fl/saas/J0;->a(Lcom/fl/saas/J0;)Lcom/fl/saas/K0;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/fl/saas/L0;-><init>(Landroid/content/Context;Lcom/fl/saas/K0;II)V

    iget p1, p1, Lcom/fl/saas/j;->H:I

    invoke-virtual {v3, p1}, Lcom/fl/saas/L0;->a(I)Lcom/fl/saas/L0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/fl/saas/k0;->onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-static {p1}, Lcom/fl/saas/J0;->a(Lcom/fl/saas/J0;)Lcom/fl/saas/K0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/k0;->onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    .line 3
    invoke-static {p1}, Lcom/fl/saas/adx/util/Check;->findFirstNonNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/j;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    const/16 v0, 0x4fb1

    const-string v1, "onNativeAdReceived but pojoList is empty"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/k0;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-virtual {v0}, Lcom/fl/saas/k0;->f()Z

    move-result v0

    iput-boolean v0, p1, Lcom/fl/saas/j;->j0:Z

    iget-object v0, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-virtual {v0, p1}, Lcom/fl/saas/k0;->a(Lcom/fl/saas/j;)Lcom/fl/saas/j0;

    iget-object v0, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    new-instance v1, Lcom/fl/saas/K0;

    iget-object v2, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-static {v2}, Lcom/fl/saas/J0;->b(Lcom/fl/saas/J0;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/m1;

    invoke-direct {v3, p0, p1}, Lcom/fl/saas/m1;-><init>(Lcom/fl/saas/J0$a;Lcom/fl/saas/j;)V

    invoke-direct {v1, v2, p1, v3}, Lcom/fl/saas/K0;-><init>(Landroid/content/Context;Lcom/fl/saas/j;Lcom/fl/saas/G0;)V

    invoke-static {v0, v1}, Lcom/fl/saas/J0;->a(Lcom/fl/saas/J0;Lcom/fl/saas/K0;)Lcom/fl/saas/K0;

    iget-object p1, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    invoke-static {p1}, Lcom/fl/saas/J0;->a(Lcom/fl/saas/J0;)Lcom/fl/saas/K0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/K0;->c()V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$a;->a:Lcom/fl/saas/J0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fl/saas/k0;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
