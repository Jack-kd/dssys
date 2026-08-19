.class final enum Lcom/sigmob/sdk/base/common/an$2;
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
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getWXProgramRes()Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_id:Ljava/lang/String;

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    const-string p2, "performAction"

    invoke-static {p0, p2, p4, p1}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result p1

    const/4 p3, 0x7

    if-ne p1, p3, :cond_1

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getWXProgramRes()Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_username:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_path:Ljava/lang/String;

    iget-object p2, p1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_business_type:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_ext_msg:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "performAction interaction_type is not right with "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p4, p1}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroid/net/Uri;I)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HTTP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTTPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x7

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
