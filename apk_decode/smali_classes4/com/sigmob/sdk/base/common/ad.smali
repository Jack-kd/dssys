.class public Lcom/sigmob/sdk/base/common/ad;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/ad$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ad"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setAge(Ljava/lang/String;)V

    const-string p0, "401"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string p0, "coppa"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string p0, "privacy"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(IZ)V
    .locals 2

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setUser_consent(Ljava/lang/String;)V

    const-string p0, "0"

    const-string v1, "1"

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setGdpr_region(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p0, v1

    :cond_1
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setGdpr_dialog_region(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string p0, "consent"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string p0, "gdpr"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    const-string p0, "401"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;I)V
    .locals 4

    .line 3
    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobSuper;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobSuper;-><init>()V

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string v2, "package_name"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "update"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_version"

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "source_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method private static synthetic a(Landroid/content/pm/PackageInfo;Ljava/lang/Object;)V
    .locals 3

    .line 4
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/beizi/ad/b;->a(Landroid/content/pm/PackageManager;)Z

    move-result v1

    const-string v2, "allow_install"

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const-string v0, "package_name"

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "update"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_version"

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    return-void
.end method

.method public static a(Lcom/czhj/sdk/common/track/AdTracker;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 1

    .line 5
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/al;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p2

    new-instance v0, Lcom/sigmob/sdk/base/common/K;

    invoke-direct {v0, p1, p0, p3, p4}, Lcom/sigmob/sdk/base/common/K;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/sdk/base/common/ad$a;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/al;->a()V

    return-void
.end method

.method public static a(Lcom/czhj/sdk/common/track/AdTracker;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/volley/VolleyError;)V
    .locals 3

    .line 6
    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p3, Lcom/czhj/volley/VolleyError;->networkResponse:Lcom/czhj/volley/NetworkResponse;

    :goto_0
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/sdk/common/track/AdTracker;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void

    :cond_1
    new-instance v1, Lcom/sigmob/sdk/base/common/J;

    invoke-direct {v1, p3}, Lcom/sigmob/sdk/base/common/J;-><init>(Lcom/czhj/volley/VolleyError;)V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/sdk/common/track/AdTracker;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private static synthetic a(Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V
    .locals 2

    .line 7
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setHttp_code(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "0"

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTime_spend(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/czhj/volley/VolleyError;->getNetworkTimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTime_spend(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setError_message(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/czhj/volley/toolbox/DownloadItem;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V
    .locals 3

    .line 8
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;-><init>()V

    const-string v1, "30"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    iget v1, p0, Lcom/czhj/volley/toolbox/DownloadItem;->status:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setIssuccess(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    :goto_0
    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setIscached(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/czhj/volley/toolbox/DownloadItem;->networkMs:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setDuration(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/czhj/volley/toolbox/DownloadItem;->size:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFile_size(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v1, 0x2

    invoke-static {p3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFile_name(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setError_message(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    invoke-virtual {p0}, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getSub_category()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 9

    .line 9
    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Lcom/sigmob/sdk/base/common/L;

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/base/common/L;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-static {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/common/aa;)V
    .locals 4

    .line 10
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/sigmob/sdk/base/common/aa;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/base/common/aa;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobSuper;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobSuper;-><init>()V

    const-string v1, "17"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string v1, "load_ready"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/aa;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "placement_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/sigmob/sdk/base/common/aa;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feed_pre_request_count"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/sigmob/sdk/base/common/aa;->b:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "feed_pre_ready_count"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/base/common/ad$a;Ljava/lang/Object;)V
    .locals 0

    .line 11
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .locals 5

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntityClick;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntityClick;-><init>()V

    const-string v1, "102"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "{x:%f,y:%f}"

    invoke-static {p2, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/mta/PointEntityClick;->setLocation(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/mta/PointEntityClick;->setClick_duration(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/mta/PointEntityClick;->setPressure(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/mta/PointEntityClick;->setTouchSize(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/mta/PointEntityClick;->setTouchType(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/mta/PointEntityClick;->setIs_valid_click(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/sigmob/sdk/base/common/M;

    invoke-direct {v0, p2}, Lcom/sigmob/sdk/base/common/M;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-static {p1, p3, p0, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    new-instance p1, Lcom/sigmob/sdk/base/common/H;

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/base/common/H;-><init>(Ljava/lang/String;)V

    const-string p2, "target_url"

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 4

    .line 15
    instance-of v0, p8, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_7

    check-cast p8, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p8}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "click"

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_desc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_desc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->template_id:Ljava/lang/String;

    const-string v1, "template_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    const-string v1, "sld"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adarea_x"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adarea_y"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "adarea_w"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "adarea_h"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5"

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    const-string v1, "turn_x"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    const-string v1, "turn_y"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    const-string v1, "turn_z"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    const-string v1, "turn_time"

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v1, "2"

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    const-string v1, "x_max_acc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    const-string v1, "y_max_acc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    const-string v1, "z_max_acc"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    const-string v1, "click_area"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    const-string v1, "click_scene"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cwidth"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cheight"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz p1, :cond_2

    const-string v2, "1"

    :cond_2
    const-string p1, "is_final_click"

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_lose_rate:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "click_lose_rate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_cb_state:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "click_cb_state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->aim:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->aim:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "aim"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->aim:Ljava/lang/Integer;

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->cpt_render_type:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->cpt_render_type:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "cpt_render_type"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->cpt_render_type:Ljava/lang/Integer;

    :cond_4
    invoke-virtual {p8, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setIs_deeplink(Ljava/lang/String;)V

    invoke-virtual {p8, p3}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    invoke-virtual {p8, p4}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setCoordinate(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    long-to-float p1, p5

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2f"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p8, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setVtime(Ljava/lang/String;)V

    if-nez p7, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p7, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_6

    check-cast p2, Ljava/lang/String;

    :goto_3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "log_data error"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_5
    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V
    .locals 4

    .line 16
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getOptions()Lcom/sigmob/windad/WindAdOptions;

    move-result-object v0

    const-string v1, "0"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/mta/PointEnitySigmobBase;->setIs_custom_imei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAndroidId()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/mta/PointEnitySigmobBase;->setIs_custom_android_id(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/mta/PointEnitySigmobBase;->setIs_custom_oaid(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_3
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/mta/PointEnitySigmobBase;->setIs_custom_imei(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/mta/PointEnitySigmobBase;->setIs_custom_android_id(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/mta/PointEnitySigmobBase;->setIs_custom_oaid(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 17
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobSuper;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobSuper;-><init>()V

    const-string v1, "102"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getApkSha1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSha1(Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getApkMd5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setMd5(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    move-result-object p1

    invoke-static {p4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p4, p1}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p0, p3, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;Ljava/lang/Object;)V
    .locals 3

    .line 19
    instance-of v0, p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/AdTracker;->getId()Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setRetry(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/AdTracker;->getRequest_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/AdTracker;->getSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setSource(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/AdTracker;->getTimestamp()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setTimestamp(Ljava/lang/String;)V

    :cond_1
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p2, Lcom/czhj/volley/NetworkResponse;->data:[B

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setResponse(Ljava/lang/String;)V

    iget p0, p2, Lcom/czhj/volley/NetworkResponse;->statusCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setHttp_code(Ljava/lang/String;)V

    iget-wide p0, p2, Lcom/czhj/volley/NetworkResponse;->networkTimeMs:J

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTime_spend(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string p1, "Content-Type"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setContent_type(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string p1, "Content-Length"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setContent_length(Ljava/lang/String;)V

    :cond_3
    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p3, p4}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 4

    .line 20
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointInitEntity;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointInitEntity;-><init>()V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->Q()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->P()Z

    move-result p0

    if-eqz v2, :cond_0

    const-string v2, "0,0"

    goto :goto_0

    :cond_0
    const-string v2, "1,1"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAppinfo_switch(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/b;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocation()Landroid/location/Location;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getLocation()Landroid/location/Location;

    move-result-object p0

    :goto_1
    const/4 v3, 0x1

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    move p0, v2

    move v2, v3

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setLocation_switch(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getOptions()Lcom/sigmob/windad/WindAdOptions;

    move-result-object p0

    const-string p1, "0"

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, p1

    goto :goto_4

    :cond_6
    move-object v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/mta/PointInitEntity;->setIs_custom_imei(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAndroidId()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, p1

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/mta/PointInitEntity;->setIs_custom_android_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/WindCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    move-object v1, p1

    :cond_8
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/mta/PointInitEntity;->setIs_custom_oaid(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/mta/PointInitEntity;->setIs_custom_imei(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/mta/PointInitEntity;->setIs_custom_android_id(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/mta/PointInitEntity;->setIs_custom_oaid(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 5

    .line 21
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointFiveEntity;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointFiveEntity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p3, v0}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getSub_category()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "category"

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/sigmob/sdk/base/common/ad;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SigmobMRIADJS: category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", options = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p3, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdSceneId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdSceneDesc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_desc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 2

    .line 22
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    move-result-object v0

    invoke-static {p0, p0, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_VIDEO_FILE:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "load"

    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const-string p1, "video_url"

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p3, v0}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 8

    .line 23
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/windad/WindAdError;Lcom/sigmob/windad/WindAdRequest;)V
    .locals 8

    .line 24
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 25
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 8

    .line 26
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 0

    .line 27
    invoke-static {p0, p2, p3}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    invoke-static {p0, p0, p2, p4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;Lcom/sigmob/windad/WindAdRequest;)V

    invoke-static {p0, p0, p2, p5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-static {p0, p0, p6, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V

    invoke-static {p7}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p7, p2}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 6

    .line 28
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V
    .locals 5

    .line 29
    if-eqz p2, :cond_13

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setCampaign_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setCreative_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setVid(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_desc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setPlay_mode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setCreative_type(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getBid_token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setBid_token(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->ecpm:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setHb_price(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setPrice(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/Ad;->product_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setProduct_id(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdx_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setAdx_id(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTemplate_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTemplate_type(I)V

    :cond_4
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->getTarget_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTarget_url(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getWXProgramRes()Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_path:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_path:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setWx_app_path(Ljava/lang/String;)V

    :cond_6
    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_username:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_username:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setWx_app_username(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkMd5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v2

    const-string v3, "apk_md5"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setAd_source_channel(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isHalfInterstitial()Z

    move-result v1

    invoke-static {p0, p1, p3, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p0

    goto :goto_0

    :cond_9
    const-string v0, "category"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p3, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    :cond_a
    const-string p3, "request"

    invoke-static {p0, p3}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdExpiredTime()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreate_time()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->expiredAdCanReload()Z

    move-result p3

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->expiredAdReloadNum()I

    move-result v2

    const-string v3, "expire_reload_count"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "can_expire_reload"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p3, "expire_timestamp"

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestSceneType()I

    move-result p0

    if-lez p0, :cond_b

    const-string p3, "request_scene_type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableSmallWindow()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDeeplinkUrl()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMraidInteractionType()I

    move-result v1

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isValid(I)Z

    move-result v0

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isValid(I)Z

    move-result v1

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "0"

    const-string v4, "1"

    if-eqz v2, :cond_e

    if-nez v0, :cond_c

    if-eqz v1, :cond_e

    :cond_c
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_d

    move-object p3, v4

    goto :goto_1

    :cond_d
    move-object p3, v3

    :goto_1
    const-string v0, "enable_small_window"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result p3

    const/4 v0, 0x6

    if-ne p3, v0, :cond_11

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->allowClickToAutoClose()Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_f

    move-object v3, v4

    :cond_f
    const-string p3, "click_close_ad"

    invoke-interface {p1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->allowCountdownEndsClose()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "seconds_close_ad"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTraceId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "trace_id"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcom/sigmob/sdk/base/j;->c:Lcom/sigmob/sdk/base/j;

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/j;->a()I

    move-result p3

    if-eq p0, p3, :cond_12

    sget-object p3, Lcom/sigmob/sdk/base/j;->e:Lcom/sigmob/sdk/base/j;

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/j;->a()I

    move-result p3

    if-eq p0, p3, :cond_12

    sget-object p3, Lcom/sigmob/sdk/base/j;->f:Lcom/sigmob/sdk/base/j;

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/j;->a()I

    move-result p3

    if-ne p0, p3, :cond_13

    :cond_12
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object p0

    const-string p3, "vid"

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getOriginVid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_13

    const-string p2, "origin_vid"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/al;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/al;->c(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p0

    new-instance p1, Lcom/sigmob/sdk/base/common/I;

    invoke-direct {p1, p5}, Lcom/sigmob/sdk/base/common/I;-><init>(Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/sdk/base/common/ad$a;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/al;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 6

    .line 31
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;IZ)V
    .locals 1

    .line 32
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->getShow_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "request"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ready"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "endcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "click"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const/4 p0, 0x4

    if-ne p3, p0, :cond_2

    if-eqz p4, :cond_1

    const-string p0, "2"

    goto :goto_0

    :cond_1
    const-string p0, "1"

    :goto_0
    invoke-virtual {p2, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setShow_type(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 3

    .line 33
    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setBid_token(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdx_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setAdx_id(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTrace_id(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setExtinfo(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->isHalfInterstitial()Z

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;IZ)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result p0

    if-lez p0, :cond_7

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    const-string p2, "request_scene_type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;Lcom/sigmob/windad/WindAdRequest;)V
    .locals 3

    .line 34
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v0

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getAdxId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setAdx_id(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setExtinfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->isHalfInterstitial()Z

    move-result p3

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 2

    .line 35
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;-><init>()V

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    invoke-static {p0, p0, v0, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;Lcom/sigmob/windad/WindAdRequest;)V

    invoke-static {p0, p0, v0, p3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-static {p4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p4, v0}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;ZI)V
    .locals 3

    .line 36
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobSuper;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobSuper;-><init>()V

    const-string v1, "2002"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string v1, "open_app"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "app_pkg_name"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string p1, "can_op"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 37
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;-><init>()V

    const-string v1, "401"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string v1, "adult"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setIs_minor(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static b(I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setAge_restricted(Ljava/lang/String;)V

    const-string p0, "401"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string p0, "coppa"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string p0, "privacy"

    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    .line 3
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobPrivacy;-><init>()V

    const-string v1, "401"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string v1, "personalized"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setIs_unpersonalized(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public static synthetic c(Landroid/content/pm/PackageInfo;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Landroid/content/pm/PackageInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/base/common/ad$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/common/ad$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Object;)V

    return-void
.end method
