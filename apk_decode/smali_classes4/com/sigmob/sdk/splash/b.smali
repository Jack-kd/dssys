.class Lcom/sigmob/sdk/splash/b;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/n;->g:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/sigmob/sdk/splash/h;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/splash/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0

    :cond_2
    new-instance p1, Lcom/sigmob/sdk/splash/c;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/splash/c;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/splash/b;->a:I

    return v0
.end method

.method public setAspectRatio(F)V
    .locals 0

    return-void
.end method
