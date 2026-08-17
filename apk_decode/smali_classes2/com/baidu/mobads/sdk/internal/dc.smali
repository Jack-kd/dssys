.class Lcom/baidu/mobads/sdk/internal/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/w;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/sdk/internal/cz;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/cz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string v2, "get_cuid"

    invoke-virtual {v1, v2}, Lcom/baidu/mobads/sdk/internal/bj;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string v3, "get_oaid"

    invoke-virtual {v2, v3}, Lcom/baidu/mobads/sdk/internal/bj;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    :try_start_0
    const-string v3, "cuid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "imei"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "oaid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/cz;->b(Lcom/baidu/mobads/sdk/internal/cz;)Lcom/baidu/mobads/sdk/api/CPUNovelAd$CpuNovelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/cz;->b(Lcom/baidu/mobads/sdk/internal/cz;)Lcom/baidu/mobads/sdk/api/CPUNovelAd$CpuNovelListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/mobads/sdk/api/CPUNovelAd$CpuNovelListener;->onReadTime(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/internal/cz;->f()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "novel_activity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "interstitial_container"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->G:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->H:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "channelId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget-object p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->I:Ljava/lang/String;

    const-string v1, "novel_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string v1, "notify_impression"

    invoke-virtual {p1, v1, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;I)V
    .locals 3

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/internal/cz;->f()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "novel_activity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "interstitial_container"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/cz;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isnight"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->G:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->H:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "channelId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget-object p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->I:Ljava/lang/String;

    const-string v1, "novel_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string p1, "count_down"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string p2, "pre_chapter_adstart_countdown"

    invoke-virtual {p1, p2, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
    .locals 3

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/internal/cz;->f()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "novel_activity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "banner_container"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p2, "interstitial_container"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/cz;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isnight"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->G:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "entry"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->H:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "channelId"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget-object p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->I:Ljava/lang/String;

    const-string p2, "novel_id"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p1, "backgroundColor"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string p2, "reader_background_status_change"

    invoke-virtual {p1, p2, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 3

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/internal/cz;->f()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "novel_activity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v1, "interstitial_container"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/cz;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isnight"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->G:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->H:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "channelId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget-object p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->I:Ljava/lang/String;

    const-string v1, "novel_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "novel_info"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string p2, "request_int_ad_view"

    invoke-virtual {p1, p2, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 46
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cz;->c(Lcom/baidu/mobads/sdk/internal/cz;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cz;->c(Lcom/baidu/mobads/sdk/internal/cz;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget-object v1, v1, Lcom/baidu/mobads/sdk/internal/bj;->i:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "novel_activity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "interstitial_container"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "banner_container"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->G:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->H:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "channelId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget-object p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->I:Ljava/lang/String;

    const-string v1, "novel_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/cz;->x()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isnight"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string v1, "reader_background_status_change"

    invoke-virtual {p1, v1, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 3

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string v1, "novel_activity"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v1, "banner_container"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->G:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->H:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "channelId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget-object p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->I:Ljava/lang/String;

    const-string v1, "novel_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/cz;->x()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isnight"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string v1, "request_shelf_ad_view"

    invoke-virtual {p1, v1, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/internal/cz;->f()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "novel_activity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "banner_container"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/cz;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isnight"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->G:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->H:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "channelId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    iget-object p1, p1, Lcom/baidu/mobads/sdk/internal/cz;->I:Ljava/lang/String;

    const-string v1, "novel_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string p1, "novel_info"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/dc;->a:Lcom/baidu/mobads/sdk/internal/cz;

    const-string p2, "request_banner_ad_view"

    invoke-virtual {p1, p2, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method
