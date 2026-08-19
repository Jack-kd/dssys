.class Lcom/sigmob/sdk/nativead/z$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/z;->p()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/z;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/z;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const-string v0, "SigNativeAdLandViewController onEndCardShow()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 2
    const-string p1, "SigNativeAdLandViewController onReward()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(IIIILcom/sigmob/sdk/mraid/b$a;Z)V
    .locals 0

    .line 3
    const-string p1, "SigNativeAdLandViewController onResize()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 4
    const-string p1, "SigNativeAdLandViewController onLoaded()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SigNativeAdLandViewController onRenderProcessGone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 6
    const-string v0, "click"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SigNativeAdLandViewController onCompanionClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v3}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v3

    const-string v4, "btn"

    iput-object v4, v3, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v3}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v3

    iput-boolean v2, v3, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "y"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v5}, Lcom/sigmob/sdk/nativead/z;->k(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/z;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/z;->k(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    const-string v3, "0"

    invoke-virtual {p1, v3, v3}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/z;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/z;->h(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/e;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/a;->a:Lcom/sigmob/sdk/base/a;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->k(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    const-string v0, "action.native.temple.click"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/nativead/z;->b(Lcom/sigmob/sdk/nativead/z;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;ILjava/lang/String;)V
    .locals 8

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SigNativeAdLandViewController  onOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "====="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p2}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p2

    const-string v2, "btn"

    iput-object v2, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p2}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p2

    iput-boolean v0, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "type"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const-string v2, "x"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "disable_landing"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v5, "feDisable"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr p2, v0

    :try_start_2
    iget-object v5, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v5}, Lcom/sigmob/sdk/nativead/z;->k(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p3, v0, :cond_0

    move v0, v1

    :cond_0
    move v7, p2

    move v6, v0

    move v1, v4

    goto :goto_2

    :catch_0
    :goto_0
    move v1, v4

    goto :goto_1

    :catch_1
    move p2, v0

    goto :goto_0

    :catch_2
    move p2, v0

    :goto_1
    move v7, p2

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v0

    move v7, v6

    :goto_2
    if-nez v1, :cond_3

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p2}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_4

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/z;->h(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/e;

    move-result-object v2

    sget-object v3, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/z;->k(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_5

    :cond_3
    :goto_4
    iget-object p2, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p2}, Lcom/sigmob/sdk/nativead/z;->h(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/e;

    move-result-object v2

    sget-object v3, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/z;->k(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_5
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    const-string p2, "action.native.temple.click"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/nativead/z;->c(Lcom/sigmob/sdk/nativead/z;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    const-string p1, "SigNativeAdLandViewController onMute()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const-string v0, "SigNativeAdLandViewController onShowSkipTime()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 2
    const-string p1, "SigNativeAdLandViewController onSkip()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "SigNativeAdLandViewController onFeedBack()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "SigNativeAdLandViewController onExpand()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "SigNativeAdLandViewController onFailedToLoad()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, "SigNativeAdLandViewController onUnload()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 4

    const-string v0, "SigNativeAdLandViewController onOpenFourElements()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    new-instance v1, Lcom/sigmob/sdk/base/views/q;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/z;->f(Lcom/sigmob/sdk/nativead/z;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v3}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/views/q;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/nativead/z$2$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/nativead/z$2$1;-><init>(Lcom/sigmob/sdk/nativead/z$2;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/q;->a(Lcom/sigmob/sdk/base/views/q$b;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->i(Lcom/sigmob/sdk/nativead/z;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "appinfo"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/z;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v2, "click"

    invoke-interface {v0, v2, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->show()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;Z)Z

    :cond_1
    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "SigNativeAdLandViewController onClose()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->j(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->onBackPressed()V

    return-void
.end method
