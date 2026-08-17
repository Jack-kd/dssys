.class Lcom/sigmob/sdk/mraid/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/s;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/s;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid/s;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s$3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/s$3;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-static {p1}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const v0, 0x3f7fbe77    # 0.999f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->j(Lcom/sigmob/sdk/mraid/s;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v2, "skip"

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->r(Lcom/sigmob/sdk/mraid/s;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getFinishedTime()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1, v1}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    iget-object v0, p1, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "reward"

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "action.rewardedvideo.complete"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/s;->i(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "reward"

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "action.rewardedvideo.complete"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/s;->g(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    return-void
.end method

.method public a(IIIILcom/sigmob/sdk/mraid/b$a;Z)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "start"

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "action.interstitial.show"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    const-string p1, "onLoaded() called"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing the activity due to a problem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "error"

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->g(Lcom/sigmob/sdk/mraid/s;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "action.interstitial.fail"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/s;->e(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->h(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 7
    const-string v0, "y"

    const-string v1, "x"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eq p1, v3, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "log_data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0, v0}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/a;->a:Lcom/sigmob/sdk/base/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/net/URI;ILjava/lang/String;)V
    .locals 12

    .line 8
    const-string p2, "y"

    const-string v0, "x"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p3, "type"

    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, v0, p2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    :goto_0
    move-object v4, v1

    :catch_1
    move v0, v2

    goto :goto_3

    :cond_0
    :goto_1
    const-string p2, "disable_landing"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v0, "feDisable"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    xor-int/2addr v0, v2

    if-eq p3, v2, :cond_1

    :try_start_3
    iget-object p3, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v3, "log_data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move v3, p2

    move-object v4, v1

    goto :goto_3

    :cond_1
    move v2, v3

    :goto_2
    move v3, p2

    move v10, v0

    move-object v11, v1

    move v9, v2

    goto :goto_5

    :catch_3
    move v3, p2

    goto :goto_0

    :goto_3
    move v10, v0

    move v9, v2

    :goto_4
    move-object v11, v4

    goto :goto_5

    :cond_2
    move v9, v2

    move v10, v9

    goto :goto_4

    :goto_5
    if-eqz v3, :cond_3

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v5

    sget-object v6, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v5 .. v11}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;)V

    goto :goto_6

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v5

    sget-object v6, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_6
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "mute"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "unmute"

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "show_skip"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->j(Lcom/sigmob/sdk/mraid/s;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "skip"

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v0, "action.rewardedvideo.skip"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid/s;->h(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->k(Lcom/sigmob/sdk/mraid/s;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/s;->l(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Landroid/app/Dialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    new-instance v2, Lcom/sigmob/sdk/nativead/b;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/sigmob/sdk/nativead/b;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v1, v2}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Lcom/sigmob/sdk/nativead/b;)Lcom/sigmob/sdk/nativead/b;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->l(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/b;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->l(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid/s$3$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/s$3$1;-><init>(Lcom/sigmob/sdk/mraid/s$3;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/nativead/b;->a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "MraidActivity failed to load. Finishing the activity"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->e(Lcom/sigmob/sdk/mraid/s;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "action.interstitial.fail"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->d(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->f(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->n(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    new-instance v1, Lcom/sigmob/sdk/base/views/q;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/s;->o(Lcom/sigmob/sdk/mraid/s;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/views/q;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->n(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid/s$3$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/s$3$2;-><init>(Lcom/sigmob/sdk/mraid/s$3;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/q;->a(Lcom/sigmob/sdk/base/views/q$b;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->n(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->n(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->q(Lcom/sigmob/sdk/mraid/s;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->n(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->show()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->d(Lcom/sigmob/sdk/mraid/s;Z)Z

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid/N;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/N;-><init>(Lcom/sigmob/sdk/mraid/s$3;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "action.rewardedvideo.Close"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->f(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->i(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method
