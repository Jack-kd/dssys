.class Lcom/sigmob/sdk/splash/i$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/ao$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Lcom/sigmob/sdk/splash/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/i;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/splash/i$5;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/splash/i$5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    const-string v1, "app_package_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->appstore_package_name:Ljava/lang/String;

    const-string v1, "store_package_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/splash/i$5;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/splash/i$5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    const-string v1, "app_package_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->appstore_package_name:Ljava/lang/String;

    const-string v1, "store_package_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingSucceeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "adUnit is null"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/i;->d(Lcom/sigmob/sdk/splash/i;)V

    sget-object v2, Lcom/sigmob/sdk/splash/i$3;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7

    const/4 p2, 0x5

    if-eq v2, p2, :cond_4

    const/4 p2, 0x6

    if-eq v2, p2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/i;->f(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/splash/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/i;->j()Z

    move-result p2

    if-eqz p2, :cond_3

    iput-boolean v4, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    goto/16 :goto_2

    :cond_3
    iget-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/splash/i;->a(Z)V

    iget-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/i;->f(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/splash/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/common/i;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1, v1}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;Z)Z

    goto/16 :goto_2

    :cond_4
    iget-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object v1, p2, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->type:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "market"

    goto :goto_0

    :cond_5
    const-string v1, "mimarket"

    :goto_0
    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    const-string v3, "apk_click"

    invoke-static {v3, v1, v2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object v1, p2, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_0
    iget-object p2, p2, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/n;->a(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p2

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/czhj/sdk/common/utils/FileUtil;->writeToCache(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write ad info with package error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    new-instance v1, Lcom/sigmob/sdk/splash/y;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/splash/y;-><init>(Lcom/sigmob/sdk/splash/i$5;Ljava/lang/String;)V

    const-string p1, "open_market"

    invoke-static {p1, v0, p2, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/sigmob/sdk/splash/i;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v0, "open_deeplink"

    invoke-static {p2, v0, p1}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    const-string p2, "click"

    invoke-interface {p1, p2, v4}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    sget-object v2, Lcom/sigmob/sdk/splash/i$3;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "click"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    new-instance v0, Lcom/sigmob/sdk/splash/x;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/splash/x;-><init>(Lcom/sigmob/sdk/splash/i$5;Ljava/lang/String;)V

    const-string p1, "open_market_failed"

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void

    :cond_5
    sget-object v0, Lcom/sigmob/sdk/splash/i;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/splash/i$5;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v0, "open_deeplink_failed"

    invoke-static {p2, v0, p1}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
