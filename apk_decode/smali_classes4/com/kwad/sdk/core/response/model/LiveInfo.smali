.class public Lcom/kwad/sdk/core/response/model/LiveInfo;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/model/LiveInfo$LiveStreamPlayCDNNode;,
        Lcom/kwad/sdk/core/response/model/LiveInfo$CoverThumbnailUrl;,
        Lcom/kwad/sdk/core/response/model/LiveInfo$User;,
        Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5893efc50972f551L


# instance fields
.field public audienceCount:I

.field public authorId:J

.field public caption:Ljava/lang/String;

.field public coverUrl:Ljava/lang/String;

.field public coverUrlCdn:Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;

.field public cover_thumbnail_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/LiveInfo$CoverThumbnailUrl;",
            ">;"
        }
    .end annotation
.end field

.field public deeplink:Ljava/lang/String;

.field public exp_tag:Ljava/lang/String;

.field public kwaiUserId:Ljava/lang/String;

.field public linkCode:Ljava/lang/String;

.field public livePageType:I

.field public liveStreamId:Ljava/lang/String;

.field public liveStreamPlayCdnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/LiveInfo$LiveStreamPlayCDNNode;",
            ">;"
        }
    .end annotation
.end field

.field public livingLink:Ljava/lang/String;

.field public nebulaKwaiLink:Ljava/lang/String;

.field public pageDataKey:Ljava/lang/String;

.field public transient pcursor:Ljava/lang/String;

.field public transient playInfo:Lorg/json/JSONObject;

.field public rewardInfo:Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

.field public shennongjiaLog:Ljava/lang/String;

.field public shopItemId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public user:Lcom/kwad/sdk/core/response/model/LiveInfo$User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/sdk/core/response/model/LiveInfo$User;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/LiveInfo$User;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->user:Lcom/kwad/sdk/core/response/model/LiveInfo$User;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->coverUrlCdn:Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->cover_thumbnail_urls:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamPlayCdnList:Ljava/util/List;

    .line 31
    .line 32
    new-instance v0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->rewardInfo:Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public afterParseJson(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/response/a/a;->afterParseJson(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "playInfo"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->playInfo:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void

    .line 18
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public afterToJson(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/response/a/a;->afterToJson(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->playInfo:Lorg/json/JSONObject;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "playInfo"

    .line 9
    .line 10
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
