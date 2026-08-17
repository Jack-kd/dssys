.class public final Lcom/kwad/sdk/core/b/a/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/sdk/core/response/model/LiveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/LiveInfo;Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    const-string v0, "livingLink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->livingLink:Ljava/lang/String;

    .line 3
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->livingLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 4
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->livingLink:Ljava/lang/String;

    .line 5
    :cond_1
    const-string v1, "shennongjiaLog"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shennongjiaLog:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shennongjiaLog:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shennongjiaLog:Ljava/lang/String;

    .line 8
    :cond_2
    const-string v1, "nebulaKwaiLink"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->nebulaKwaiLink:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->nebulaKwaiLink:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->nebulaKwaiLink:Ljava/lang/String;

    .line 11
    :cond_3
    const-string v1, "linkCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->linkCode:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->linkCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->linkCode:Ljava/lang/String;

    .line 14
    :cond_4
    const-string v1, "liveStreamId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamId:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamId:Ljava/lang/String;

    .line 17
    :cond_5
    const-string v1, "authorId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->authorId:J

    .line 18
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->title:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->title:Ljava/lang/String;

    .line 21
    :cond_6
    const-string v1, "coverUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->coverUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->coverUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->coverUrl:Ljava/lang/String;

    .line 24
    :cond_7
    new-instance v1, Lcom/kwad/sdk/core/response/model/LiveInfo$User;

    invoke-direct {v1}, Lcom/kwad/sdk/core/response/model/LiveInfo$User;-><init>()V

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->user:Lcom/kwad/sdk/core/response/model/LiveInfo$User;

    .line 25
    const-string v3, "user"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 26
    new-instance v1, Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;

    invoke-direct {v1}, Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;-><init>()V

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->coverUrlCdn:Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;

    .line 27
    const-string v3, "coverUrlCdn"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 28
    const-string v1, "audienceCount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->audienceCount:I

    .line 29
    const-string v1, "caption"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->caption:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->caption:Ljava/lang/String;

    .line 32
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->cover_thumbnail_urls:Ljava/util/List;

    .line 33
    const-string v0, "cover_thumbnail_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v3, v1

    .line 34
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 35
    new-instance v4, Lcom/kwad/sdk/core/response/model/LiveInfo$CoverThumbnailUrl;

    invoke-direct {v4}, Lcom/kwad/sdk/core/response/model/LiveInfo$CoverThumbnailUrl;-><init>()V

    .line 36
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 37
    iget-object v5, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->cover_thumbnail_urls:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_9
    const-string v0, "exp_tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->exp_tag:Ljava/lang/String;

    .line 39
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->exp_tag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->exp_tag:Ljava/lang/String;

    .line 41
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamPlayCdnList:Ljava/util/List;

    .line 42
    const-string v0, "liveStreamPlayCdnList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 43
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 44
    new-instance v3, Lcom/kwad/sdk/core/response/model/LiveInfo$LiveStreamPlayCDNNode;

    invoke-direct {v3}, Lcom/kwad/sdk/core/response/model/LiveInfo$LiveStreamPlayCDNNode;-><init>()V

    .line 45
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 46
    iget-object v4, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamPlayCdnList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :cond_b
    const-string v0, "livePageType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->livePageType:I

    .line 48
    const-string v0, "pageDataKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->pageDataKey:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->pageDataKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 50
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->pageDataKey:Ljava/lang/String;

    .line 51
    :cond_c
    const-string v1, "kwaiUserId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->kwaiUserId:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->kwaiUserId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 53
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->kwaiUserId:Ljava/lang/String;

    .line 54
    :cond_d
    const-string v1, "shopItemId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shopItemId:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shopItemId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 56
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shopItemId:Ljava/lang/String;

    .line 57
    :cond_e
    new-instance v1, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    invoke-direct {v1}, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;-><init>()V

    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->rewardInfo:Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    .line 58
    const-string v3, "rewardInfo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 59
    const-string v1, "deeplink"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->deeplink:Ljava/lang/String;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->deeplink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 61
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->deeplink:Ljava/lang/String;

    :cond_f
    :goto_2
    return-void
.end method

.method private static b(Lcom/kwad/sdk/core/response/model/LiveInfo;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->livingLink:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const-string v0, "livingLink"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->livingLink:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shennongjiaLog:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    const-string v0, "shennongjiaLog"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shennongjiaLog:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->nebulaKwaiLink:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    const-string v0, "nebulaKwaiLink"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->nebulaKwaiLink:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->linkCode:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    const-string v0, "linkCode"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->linkCode:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamId:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    const-string v0, "liveStreamId"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamId:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->authorId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 14
    const-string v0, "authorId"

    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    const-string v0, "title"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->title:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->coverUrl:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    const-string v0, "coverUrl"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->coverUrl:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_8
    const-string v0, "user"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->user:Lcom/kwad/sdk/core/response/model/LiveInfo$User;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 20
    const-string v0, "coverUrlCdn"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->coverUrlCdn:Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 21
    iget v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->audienceCount:I

    if-eqz v0, :cond_9

    .line 22
    const-string v2, "audienceCount"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->caption:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    const-string v0, "caption"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->caption:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_a
    const-string v0, "cover_thumbnail_urls"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->cover_thumbnail_urls:Ljava/util/List;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 26
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->exp_tag:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 27
    const-string v0, "exp_tag"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->exp_tag:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_b
    const-string v0, "liveStreamPlayCdnList"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamPlayCdnList:Ljava/util/List;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 29
    iget v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->livePageType:I

    if-eqz v0, :cond_c

    .line 30
    const-string v2, "livePageType"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 31
    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->pageDataKey:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 32
    const-string v0, "pageDataKey"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->pageDataKey:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->kwaiUserId:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 34
    const-string v0, "kwaiUserId"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->kwaiUserId:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shopItemId:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 36
    const-string v0, "shopItemId"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->shopItemId:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_f
    const-string v0, "rewardInfo"

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->rewardInfo:Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 38
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->deeplink:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 39
    const-string v0, "deeplink"

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->deeplink:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/response/model/LiveInfo;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/ia;->a(Lcom/kwad/sdk/core/response/model/LiveInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/response/model/LiveInfo;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/ia;->b(Lcom/kwad/sdk/core/response/model/LiveInfo;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
