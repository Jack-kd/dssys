.class public Lcom/sigmob/sdk/nativead/s;
.super Lcom/sigmob/sdk/nativead/m;


# instance fields
.field g:Lcom/sigmob/sdk/nativead/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/m;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/nativead/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/s;->g:Lcom/sigmob/sdk/nativead/ac;

    return-void
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/sigmob/sdk/nativead/m;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/s;->g:Lcom/sigmob/sdk/nativead/ac;

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public getAdConfig()Lcom/sigmob/sdk/nativead/e;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/s;->g:Lcom/sigmob/sdk/nativead/ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/ac;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnit()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/s;->g:Lcom/sigmob/sdk/nativead/ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/ac;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoView()Lcom/sigmob/sdk/nativead/n;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/s;->g:Lcom/sigmob/sdk/nativead/ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/ac;->m()Lcom/sigmob/sdk/nativead/n;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAdUnit()Lcom/sigmob/windad/natives/WindNativeAdData;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/s;->g:Lcom/sigmob/sdk/nativead/ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/ac;->l()Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDuration()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoProgress()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public setUIStyle(Lcom/sigmob/sdk/nativead/j;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/m;->d:Lcom/sigmob/sdk/nativead/j;

    return-void
.end method
