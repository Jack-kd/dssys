.class public Lcom/meishu/sdk/core/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFieldExport()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->n:Ljava/lang/Integer;

    :cond_1
    if-eqz v1, :cond_10

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    new-instance v2, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;-><init>()V

    .line 8
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x2

    if-ne v3, v4, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v3

    if-ne v3, v5, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setCreative_type(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setTitle(Ljava/lang/String;)V

    .line 12
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setDesc(Ljava/lang/String;)V

    .line 14
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    .line 15
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v3

    if-eq v3, v5, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setImgUrls([Ljava/lang/String;)V

    .line 17
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 19
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setVideoUrls([Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setImgUrls([Ljava/lang/String;)V

    .line 21
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_9

    .line 22
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setIconUrl(Ljava/lang/String;)V

    .line 23
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_a

    .line 24
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setCid(Ljava/lang/String;)V

    .line 25
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_b

    .line 26
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_ext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setAct_ext(Ljava/lang/String;)V

    .line 27
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x100

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_c

    .line 28
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setDeepLink(Ljava/lang/String;)V

    .line 29
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x200

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_e

    .line 30
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_d

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 31
    :cond_d
    invoke-virtual {v2, v0}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setLandingPageUrl(Ljava/lang/String;)V

    .line 32
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f

    .line 33
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-object v2

    .line 34
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v2

    :cond_10
    :goto_2
    return-object v0
.end method

.method public static a(Lcom/meishu/sdk/core/ad/AdSlot;)Z
    .locals 2

    const/4 v0, 0x0

    .line 35
    :try_start_0
    instance-of v1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    check-cast p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->isHasExposed()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->userAdvertiserId()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->userAdvertiserId()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b(Lcom/meishu/sdk/core/ad/AdSlot;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    instance-of v1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->isHasVideoStart()Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p0

    .line 26
    :catch_0
    :cond_0
    return v0
.end method
