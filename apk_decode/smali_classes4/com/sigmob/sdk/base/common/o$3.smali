.class Lcom/sigmob/sdk/base/common/o$3;
.super Lcom/sigmob/sdk/downloader/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/o;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Landroid/content/Context;

.field private c:Lcom/sigmob/sdk/downloader/l$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/o$3;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/q;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/videoAd/d;Ljava/lang/Object;)V
    .locals 2

    .line 6
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "download_two_quarter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "download_three_quarter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "download_quarter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p0, "status"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v0, 0x32

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    const/16 v0, 0x4b

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x19

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x766ef60b -> :sswitch_2
        0x6d397d94 -> :sswitch_1
        0x6e8a9a82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2

    .line 7
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 8
    instance-of v0, p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic b(Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/o$3;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/o$3;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/o$3;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/o$3;->a(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public static synthetic i(Lcom/sigmob/sdk/videoAd/d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/o$3;->a(Lcom/sigmob/sdk/videoAd/d;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/o$3;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/f;)V
    .locals 5

    .line 2
    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->c:Lcom/sigmob/sdk/downloader/l$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->c:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super {p0, p1}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/f;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableUseDownloadApk(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isRecord()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    const-string v3, "download_end"

    invoke-static {v3, v1, v0, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "download_finish"

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/o$3;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v4, Lcom/sigmob/sdk/base/common/B0;

    invoke-direct {v4, v2, p1, v3}, Lcom/sigmob/sdk/base/common/B0;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v0, Lcom/sigmob/sdk/base/common/C0;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/C0;-><init>()V

    const-string v2, "apkdownload"

    const-string v3, "end"

    invoke-static {v2, v3, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "downloadId"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action.interstitial.download.end"

    invoke-static {v0, v1, p1, v2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;IJJ)V
    .locals 0

    .line 3
    invoke-super/range {p0 .. p6}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/f;IJJ)V

    move-object p1, p0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "result"

    const-string p4, "1"

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p1, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object p3

    const-string p4, "downloadId"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p1, Lcom/sigmob/sdk/base/common/o$3;->b:Landroid/content/Context;

    iget-object p4, p1, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p4

    const-string p5, "action.interstitial.download.start"

    invoke-static {p3, p4, p2, p5}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;JJ)V
    .locals 6

    .line 4
    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->b:Lcom/sigmob/sdk/downloader/l$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->c:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super/range {p0 .. p5}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/f;JJ)V

    move-object p1, p0

    iget-object v0, p1, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadQuarterTrack()Ljava/util/List;

    move-result-object v0

    const-string v1, "download_quarter"

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/d;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {p3}, Lcom/czhj/sdk/common/track/AdTracker;->setTracked()V

    iget-object p4, p1, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance p5, Lcom/sigmob/sdk/base/common/z0;

    invoke-direct {p5, p3}, Lcom/sigmob/sdk/base/common/z0;-><init>(Lcom/sigmob/sdk/videoAd/d;)V

    const-string p3, "apkdownload"

    const-string v0, "progress"

    invoke-static {p3, v0, p4, p5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Ljava/lang/Exception;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->f:Lcom/sigmob/sdk/downloader/l$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->c:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/f;Ljava/lang/Exception;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->C()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$3;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isRecord()Z

    move-result p1

    const-string v0, "0"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    const-string v2, "download_end"

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v1, Lcom/sigmob/sdk/base/common/A0;

    invoke-direct {v1, p2}, Lcom/sigmob/sdk/base/common/A0;-><init>(Ljava/lang/Exception;)V

    const-string p2, "apkdownload"

    const-string v2, "end"

    invoke-static {p2, v2, p1, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "result"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object p2

    const-string v0, "downloadId"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/o$3;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action.interstitial.download.end"

    invoke-static {p2, v0, p1, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->b:Lcom/sigmob/sdk/downloader/l$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->c:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super {p0, p1}, Lcom/sigmob/sdk/downloader/h;->b(Lcom/sigmob/sdk/downloader/f;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v0, Lcom/sigmob/sdk/base/common/D0;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/D0;-><init>()V

    const-string v1, "apkdownload"

    const-string v2, "start"

    invoke-static {v1, v2, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public c(Lcom/sigmob/sdk/downloader/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$3;->c:Lcom/sigmob/sdk/downloader/l$a;

    sget-object v1, Lcom/sigmob/sdk/downloader/l$a;->e:Lcom/sigmob/sdk/downloader/l$a;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lcom/sigmob/sdk/base/common/o$3;->c:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super {p0, p1}, Lcom/sigmob/sdk/downloader/h;->c(Lcom/sigmob/sdk/downloader/f;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v0, Lcom/sigmob/sdk/base/common/E0;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/E0;-><init>()V

    const-string v1, "apkdownload"

    const-string v2, "pause"

    invoke-static {v1, v2, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method
