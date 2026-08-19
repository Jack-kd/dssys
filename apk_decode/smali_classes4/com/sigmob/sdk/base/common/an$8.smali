.class final enum Lcom/sigmob/sdk/base/common/an$8;
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
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 2
    const-string p1, "performAction"

    const/4 p2, 0x0

    invoke-static {p0, p1, p4, p2}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/net/Uri;I)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method
