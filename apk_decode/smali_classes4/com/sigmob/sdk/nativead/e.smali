.class public Lcom/sigmob/sdk/nativead/e;
.super Lcom/sigmob/sdk/base/common/i;


# instance fields
.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;-><init>()V

    return-void
.end method

.method private static synthetic a(IIILjava/lang/Object;)V
    .locals 4

    .line 1
    instance-of v0, p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_2

    check-cast p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "video_time"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "begin_time"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end_time"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "is_first"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 p0, p0, -0x3e8

    if-lt p2, p0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "is_last"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private static synthetic a(IILjava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "video_time"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "begin_time"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/nativead/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/nativead/e;

    invoke-direct {v0}, Lcom/sigmob/sdk/nativead/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/nativead/e;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method

.method public static synthetic n(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/nativead/e;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sigmob/sdk/nativead/e;->a(IIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 3
    invoke-virtual {p5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p0, p4, p1, p2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;II)V
    .locals 3

    .line 4
    new-instance v0, Lcom/sigmob/sdk/nativead/Q;

    invoke-direct {v0, p2, p3}, Lcom/sigmob/sdk/nativead/Q;-><init>(II)V

    const-string v1, "video_start"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    const-string v2, "_VIDEOTIME_"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_BEGINTIME_"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;III)V
    .locals 3

    .line 5
    new-instance v0, Lcom/sigmob/sdk/nativead/P;

    invoke-direct {v0, p4, p3, p2}, Lcom/sigmob/sdk/nativead/P;-><init>(III)V

    const-string v1, "video_pause"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    const-string v2, "_VIDEOTIME_"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v2, p4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "_BEGINTIME_"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p4, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v2, "_ENDTIME_"

    invoke-virtual {v0, v2, p4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "_PLAYFIRSTFRAME_"

    invoke-virtual {v0, p4, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/e;->s:Ljava/lang/Boolean;

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getNativeAdSetting()Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSingleNativeSetting()Lcom/sigmob/sdk/base/models/rtb/SingleNativeAdSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/SingleNativeAdSetting;->use_na_video_component:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/e;->r:Z

    :cond_0
    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->preview_page_video_mute:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/nativead/e;->m:I

    iget-object p1, v0, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->detail_page_video_mute:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/nativead/e;->n:I

    iget-object p1, v0, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->impression_percent:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/nativead/e;->o:I

    iget-object p1, v0, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->impression_time:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/nativead/e;->p:I

    iget-object p1, v0, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->video_auto_play:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/nativead/e;->l:I

    iget-object p1, v0, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->end_impression_time:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/nativead/e;->q:I

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/videoAd/d;

    const-string v1, "play_quarter"

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sigmob/sdk/videoAd/d;

    const-string v1, "play_two_quarters"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sigmob/sdk/videoAd/d;

    const-string v1, "play_three_quarters"

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/i;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    const-string p1, "template_show"

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 2
    const-string p1, "template_close"

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public e(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, "ad_show"

    invoke-static {v0, p1, p2, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, "feed_click"

    invoke-static {v0, p1, p2, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/e;->r:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/nativead/e;->l:I

    return v0
.end method

.method public n()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/e;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/nativead/e;->m:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/sigmob/sdk/nativead/e;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/nativead/e;->o:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/nativead/e;->p:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/nativead/e;->q:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/nativead/e;->o:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x32

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/nativead/e;->p:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public u()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/e;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getActiveNetworkType()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
