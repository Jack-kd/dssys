.class public Lcom/sigmob/sdk/Sigmob;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sigmob/sdk/Sigmob;

.field public static macroCommon:Lcom/sigmob/sdk/base/models/SigMacroCommon;


# instance fields
.field private b:Lcom/sigmob/windad/WindAdError;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 0

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->b()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->l()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->j()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->i()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->h()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->k()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->c()V

    return-void
.end method

.method private static synthetic a(IZZIZLjava/lang/Object;)V
    .locals 5

    .line 3
    instance-of v0, p5, Lcom/sigmob/sdk/base/mta/PointInitEntity;

    if-eqz v0, :cond_5

    check-cast p5, Lcom/sigmob/sdk/base/mta/PointInitEntity;

    invoke-virtual {p5}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->d()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v4, "is_minor"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v4, "is_unpersonalized"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canUseAppList"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    move-object p0, v2

    goto :goto_2

    :cond_2
    move-object p0, v3

    :goto_2
    const-string p1, "appListPermission"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    move-object p0, v2

    goto :goto_3

    :cond_3
    move-object p0, v3

    :goto_3
    const-string p1, "disableUpAppInfo"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "EnableAppList"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    const-string p0, "uploadAppList"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getCommonVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "common_version"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/Sigmob;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sigmob/sdk/Sigmob;->g()V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobCrash;->WindCrash(Ljava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntitySigmobCrash;

    move-result-object p2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".log"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/czhj/sdk/common/mta/PointEntityCrash;->setCrashTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "set crash time fail"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    new-instance v0, Lcom/sigmob/sdk/Sigmob$3;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/Sigmob$3;-><init>(Lcom/sigmob/sdk/Sigmob;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->sendServe(Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 6
    instance-of v0, p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getPermission(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setPermission(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.czhj."

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "crashTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "appId"

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkVersion"

    invoke-static {}, Lcom/sigmob/windad/WindAds;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "commonVersion"

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getCommonVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "wmsession_id"

    invoke-static {}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "crashLog"

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "crashLog "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/utils/n;->j()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/FileUtil;->writeToBuffer([BLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/sigmob/sdk/Sigmob;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string p2, "error "

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static synthetic a(Z)V
    .locals 0

    .line 8
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->b()V

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->b()V

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->d()V

    :cond_0
    return-void
.end method

.method private static b()V
    .locals 2

    .line 2
    :try_start_0
    const-string v0, "AppInstallService"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/services/f;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "initAppInstallService fail"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(IZZIZLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/sigmob/sdk/Sigmob;->a(IZZIZLjava/lang/Object;)V

    return-void
.end method

.method private static c()V
    .locals 3

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/i;->i()Z

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->T()Z

    move-result v1

    const-string v2, "WifiScanService"

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/services/f;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "updateWifiScanService fail"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/Sigmob;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/Sigmob;->a()V

    return-void
.end method

.method public static createRequest()Lcom/czhj/sdk/common/models/BidRequest;
    .locals 2

    new-instance v0, Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/sigmob/sdk/base/network/a;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->build()Lcom/czhj/sdk/common/models/BidRequest;

    move-result-object v0

    return-object v0
.end method

.method private static d()V
    .locals 2

    .line 2
    :try_start_0
    const-string v0, "DownloadService"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/services/f;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "initDownloadService fail"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/Sigmob;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/Sigmob;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 2
    new-instance v0, Lcom/czhj/sdk/common/network/JsonRequest;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/Sigmob$2;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/Sigmob$2;-><init>(Lcom/sigmob/sdk/Sigmob;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/czhj/sdk/common/network/JsonRequest;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/network/JsonRequest$Listener;I)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/Sigmob;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/Sigmob;->i()V

    return-void
.end method

.method private f()V
    .locals 6

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/utils/n;->k()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/czhj/sdk/common/utils/FileUtil;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/sigmob/sdk/Sigmob;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    return-void

    :goto_3
    const-string v1, "send crash Log fail"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/Sigmob;->a(Z)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->d()V

    invoke-static {}, Lcom/sigmob/sdk/b;->d()V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/d;

    invoke-direct {v1}, Lcom/sigmob/sdk/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/o$a;)Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->f()V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/sigmob/windad/WindAds;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/czhj/sdk/common/exceptions/CrashHandler;->getInstance()Lcom/czhj/sdk/common/exceptions/CrashHandler;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/e;

    invoke-direct {v2, p0, v0}, Lcom/sigmob/sdk/e;-><init>(Lcom/sigmob/sdk/Sigmob;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/exceptions/CrashHandler;->add(Lcom/czhj/sdk/common/exceptions/CrashHandler$CrashHandlerListener;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/Sigmob;->f()V

    :cond_1
    invoke-direct {p0}, Lcom/sigmob/sdk/Sigmob;->h()V

    return-void
.end method

.method public static synthetic g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/Sigmob;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sigmob/sdk/Sigmob;
    .locals 3

    const-class v0, Lcom/sigmob/sdk/Sigmob;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/Sigmob;->a:Lcom/sigmob/sdk/Sigmob;

    if-nez v1, :cond_0

    const-class v1, Lcom/sigmob/sdk/Sigmob;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/sigmob/sdk/Sigmob;

    invoke-direct {v2}, Lcom/sigmob/sdk/Sigmob;-><init>()V

    sput-object v2, Lcom/sigmob/sdk/Sigmob;->a:Lcom/sigmob/sdk/Sigmob;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sigmob/sdk/Sigmob;->a:Lcom/sigmob/sdk/Sigmob;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private h()V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->clearCache()V

    return-void
.end method

.method private synthetic i()V
    .locals 1

    const-string v0, "app"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/f;->b()Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/Sigmob;->b:Lcom/sigmob/windad/WindAdError;

    invoke-direct {p0}, Lcom/sigmob/sdk/Sigmob;->e()V

    return-void
.end method

.method public static updateLocationMonitor()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/i;->i()Z

    move-result v0

    const-string v1, "LocationService"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/services/f;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "updateLocationMonitor fail"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/Sigmob;->macroCommon:Lcom/sigmob/sdk/base/models/SigMacroCommon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/models/SigMacroCommon;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/Sigmob;->macroCommon:Lcom/sigmob/sdk/base/models/SigMacroCommon;

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/Sigmob;->macroCommon:Lcom/sigmob/sdk/base/models/SigMacroCommon;

    return-object v0
.end method

.method public getSDKToken()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sigmob/sdk/b;->a(Z)V

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->createRequest()Lcom/czhj/sdk/common/models/BidRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2.01|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/czhj/wire/Message;->encode()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/Sigmob;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token_request"

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSDKToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSigMobError()Lcom/sigmob/windad/WindAdError;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/Sigmob;->b:Lcom/sigmob/windad/WindAdError;

    return-object v0
.end method

.method public init()V
    .locals 9

    sget-object v0, Lcom/sigmob/sdk/base/n;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/czhj/volley/VolleyLog;->DEBUG:Z

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getOptions()Lcom/sigmob/windad/WindAdOptions;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->ab()I

    move-result v6

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v2

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->Q()Z

    move-result v5

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAppList()Z

    move-result v0

    if-eqz v0, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v3

    move v0, v4

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-eq v6, v4, :cond_3

    if-eq v6, v1, :cond_4

    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    invoke-static {}, Lcom/sigmob/sdk/base/common/f;->d()Z

    move-result v4

    new-instance v2, Lcom/sigmob/sdk/f;

    move v8, v7

    move v7, v3

    move v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/sigmob/sdk/f;-><init>(IZZIZ)V

    const-string v0, "init"

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->V()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/sigmob/sdk/g;

    invoke-direct {v1}, Lcom/sigmob/sdk/g;-><init>()V

    const-string v2, "permission"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_5
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->e()V

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/h;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/h;-><init>(Lcom/sigmob/sdk/Sigmob;)V

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/Sigmob$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/Sigmob$1;-><init>(Lcom/sigmob/sdk/Sigmob;)V

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/track/TrackManager;->setSigmobTrackListener(Lcom/czhj/sdk/common/track/TrackManager$Listener;)V

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/i;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/i;-><init>(Lcom/sigmob/sdk/Sigmob;)V

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/TrackManager;->startRetryTracking()V

    return-void
.end method
