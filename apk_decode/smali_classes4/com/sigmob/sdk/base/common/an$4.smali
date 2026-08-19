.class final enum Lcom/sigmob/sdk/base/common/an$4;
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
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProductId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkPackageName()Ljava/lang/String;

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
    const-string p2, "performAction"

    const/4 p3, 0x0

    invoke-static {p0, p2, p4, p3}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getsubInteractionType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProductId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableSmallWindow()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->a(Ljava/lang/Boolean;)Z

    move-result v1

    :try_start_0
    invoke-static {p4}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {p1, p3, v0, v1}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p4, p1}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_2
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can\'t launch application for packageName "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/net/Uri;I)Z
    .locals 0

    .line 3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
