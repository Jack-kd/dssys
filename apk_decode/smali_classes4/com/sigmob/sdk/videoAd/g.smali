.class public Lcom/sigmob/sdk/videoAd/g;
.super Lcom/sigmob/sdk/mraid/i;


# instance fields
.field private c:Lcom/sigmob/sdk/videoAd/RewardVideoAdBroadcastReceiver;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/p;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/i;-><init>(Lcom/sigmob/sdk/base/common/p;)V

    iput-boolean p2, p0, Lcom/sigmob/sdk/videoAd/g;->d:Z

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/h;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show_count"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/h;->g(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private static c(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/n;->c:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/n;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_snippet:Lcom/czhj/wire/okio/ByteString;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/czhj/wire/okio/ByteString;->size()I

    move-result p0

    const/16 v4, 0xa

    if-le p0, v4, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v3

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 5

    .line 2
    invoke-static {p0}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result p0

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->h:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, v2, :cond_0

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/g;->d(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v3

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v4
.end method

.method private static d(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/n;->f:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v2
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    instance-of v0, v0, Lcom/sigmob/sdk/videoAd/h;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/videoAd/RewardVideoAdBroadcastReceiver;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    check-cast v1, Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/videoAd/RewardVideoAdBroadcastReceiver;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->c:Lcom/sigmob/sdk/videoAd/RewardVideoAdBroadcastReceiver;

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v3

    sget-object v4, Lcom/sigmob/sdk/base/common/n;->h:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v4

    if-ne v3, v4, :cond_2

    const-string v3, "mraid"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v3

    sget-object v4, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v4

    if-ne v3, v4, :cond_3

    const-string v3, "mraid_two"

    goto :goto_0

    :cond_3
    const-string v3, "reward"

    :goto_0
    if-eqz p2, :cond_4

    const-string v4, "isHalfInterstitial"

    iget-boolean v5, p0, Lcom/sigmob/sdk/videoAd/g;->d:Z

    invoke-virtual {p2, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Lcom/sigmob/sdk/videoAd/n;

    invoke-direct {v10, v4}, Lcom/sigmob/sdk/videoAd/n;-><init>(Ljava/lang/String;)V

    const-string v5, "vopen"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    if-ne v0, v1, :cond_5

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->theme_data:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_6

    iget-boolean p1, p0, Lcom/sigmob/sdk/videoAd/g;->d:Z

    if-nez p1, :cond_6

    :cond_5
    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result p1

    sget-object v0, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v0

    if-ne p1, v0, :cond_7

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->theme_data:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_6

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateType()I

    move-result p1

    if-ne p1, v2, :cond_7

    :cond_6
    const-class p1, Lcom/sigmob/sdk/base/common/TransparentAdActivity;

    goto :goto_1

    :cond_7
    const-class p1, Lcom/sigmob/sdk/base/common/AdActivity;

    :goto_1
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, v3}, Lcom/sigmob/sdk/base/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 5

    .line 3
    invoke-super {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result p1

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->h:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p1

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    if-ne p1, v2, :cond_2

    :cond_1
    :goto_0
    move p1, v4

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p1

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result v2

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/g;->d(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result v1

    if-nez p1, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_1
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->c:Lcom/sigmob/sdk/videoAd/RewardVideoAdBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/videoAd/RewardVideoAdBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->c:Lcom/sigmob/sdk/videoAd/RewardVideoAdBroadcastReceiver;

    :cond_0
    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/y;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method
