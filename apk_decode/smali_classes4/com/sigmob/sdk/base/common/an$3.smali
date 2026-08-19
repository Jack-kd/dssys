.class final enum Lcom/sigmob/sdk/base/common/an$3;
.super Lcom/sigmob/sdk/base/common/an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/common/an;-><init>(Ljava/lang/String;IZLcom/sigmob/sdk/base/common/an$1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    const-string p3, "performAction"

    const/4 v0, 0x0

    invoke-static {p0, p3, p4, v0}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result p3

    invoke-static {p4}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDeeplinkUri(Landroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-eq p3, v2, :cond_1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "hapjs.org"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMarketPackageNameList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableSmallWindow(Ljava/lang/Integer;)Z

    move-result p3

    invoke-static {p1, p2, v1, p3}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sigmob/sdk/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDeeplinkUri(Landroid/net/Uri;)V

    throw p1
.end method

.method public a(Landroid/net/Uri;I)Z
    .locals 6

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "HTTPS"

    const-string v5, "HTTP"

    if-eq p2, v1, :cond_2

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "hapjs.org"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "HAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v3
.end method
