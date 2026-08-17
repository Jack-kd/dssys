.class Lcom/sigmob/sdk/base/common/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/ao$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Z

.field final synthetic c:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

.field final synthetic d:Z

.field final synthetic e:Lcom/sigmob/sdk/base/a;

.field final synthetic f:Lcom/sigmob/sdk/base/common/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/i;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZLcom/sigmob/sdk/base/models/rtb/AndroidMarket;ZLcom/sigmob/sdk/base/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->f:Lcom/sigmob/sdk/base/common/i;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-boolean p3, p0, Lcom/sigmob/sdk/base/common/i$4;->b:Z

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/i$4;->c:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    iput-boolean p5, p0, Lcom/sigmob/sdk/base/common/i$4;->d:Z

    iput-object p6, p0, Lcom/sigmob/sdk/base/common/i$4;->e:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const-string v0, "app_package_name"

    iget-object v1, p1, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "store_package_name"

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->appstore_package_name:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const-string v0, "app_package_name"

    iget-object v1, p1, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "store_package_name"

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->appstore_package_name:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/i$4;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/i$4;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "urlHandlingSucceeded: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "0"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/common/i$5;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    const/4 v0, 0x5

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean p2, p0, Lcom/sigmob/sdk/base/common/i$4;->d:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->f:Lcom/sigmob/sdk/base/common/i;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/i;->j()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iput-boolean v2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->f:Lcom/sigmob/sdk/base/common/i;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/common/i;->f(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    iget-boolean p2, p0, Lcom/sigmob/sdk/base/common/i$4;->b:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->c:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->type:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "market"

    goto :goto_0

    :cond_4
    const-string p2, "mimarket"

    :goto_0
    const-string v0, "apk_click"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p2, v2, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->c:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    iget-object p2, p2, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    :try_start_0
    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->c:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    iget-object p2, p2, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/n;->a(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/czhj/sdk/common/utils/FileUtil;->writeToCache(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "urlHandlingSucceeded: error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->c:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    new-instance v2, Lcom/sigmob/sdk/base/common/l0;

    invoke-direct {v2, p1, v0}, Lcom/sigmob/sdk/base/common/l0;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;)V

    const-string p1, "open_market"

    invoke-static {p1, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    goto :goto_2

    :cond_6
    iget-boolean p2, p0, Lcom/sigmob/sdk/base/common/i$4;->b:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v0, "open_deeplink"

    invoke-static {p2, v0, p1}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string p2, "1"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomDeeplink(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomAndroidMarket(Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomLandPageUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->f:Lcom/sigmob/sdk/base/common/i;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/i;->e(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/common/ac;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->f:Lcom/sigmob/sdk/base/common/i;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/i;->e(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/common/ac;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sigmob/sdk/base/common/i$4;->b:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->e:Lcom/sigmob/sdk/base/a;

    invoke-interface {p1, p2, v0}, Lcom/sigmob/sdk/base/common/ac;->onAdClick(ZLcom/sigmob/sdk/base/a;)V

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "urlHandlingFailed: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "0"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/common/i$5;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomDeeplink(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomAndroidMarket(Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomLandPageUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->f:Lcom/sigmob/sdk/base/common/i;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/i;->e(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/common/ac;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$4;->f:Lcom/sigmob/sdk/base/common/i;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/i;->e(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/common/ac;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sigmob/sdk/base/common/i$4;->b:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->e:Lcom/sigmob/sdk/base/a;

    invoke-interface {p1, p2, v0}, Lcom/sigmob/sdk/base/common/ac;->onAdClick(ZLcom/sigmob/sdk/base/a;)V

    return-void

    :cond_2
    iget-boolean p2, p0, Lcom/sigmob/sdk/base/common/i$4;->b:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$4;->c:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    new-instance v1, Lcom/sigmob/sdk/base/common/m0;

    invoke-direct {v1, p1, v0}, Lcom/sigmob/sdk/base/common/m0;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;)V

    const-string v0, "open_market_failed"

    invoke-static {v0, p1, p2, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void

    :cond_3
    iget-boolean p2, p0, Lcom/sigmob/sdk/base/common/i$4;->b:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/i$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v0, "open_deeplink_failed"

    invoke-static {p2, v0, p1}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
