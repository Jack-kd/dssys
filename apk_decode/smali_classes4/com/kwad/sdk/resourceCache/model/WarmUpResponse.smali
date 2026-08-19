.class public Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;
.super Lcom/kwad/sdk/core/response/model/BaseResultData;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;,
        Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;,
        Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;,
        Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x350b0c57a00de0acL


# instance fields
.field public cleanResourceWarmup:Z

.field public disableFontWarmup:Z

.field public disableImageWarmup:Z

.field public disableResourceWarmup:Z

.field public disableVideoWarmup:Z

.field public disableZipWarmup:Z

.field public minWarmupDiskSize:I

.field public warmupImages:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;

.field public warmupVideos:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;

.field public warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/model/BaseResultData;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupVideos:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupImages:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;

    .line 17
    .line 18
    new-instance v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/response/model/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    const-string v0, "data"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-class v0, Lcom/kwad/sdk/core/a/e;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/kwad/sdk/core/a/e;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kwad/sdk/utils/br;->isNullString(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/a/e;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "disableResourceWarmup"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput-boolean p1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableResourceWarmup:Z

    .line 50
    .line 51
    const-string p1, "disableVideoWarmup"

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableVideoWarmup:Z

    .line 58
    .line 59
    const-string p1, "disableImageWarmup"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput-boolean p1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableImageWarmup:Z

    .line 66
    .line 67
    const-string p1, "disableZipWarmup"

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput-boolean p1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableZipWarmup:Z

    .line 74
    .line 75
    const-string p1, "disableFontWarmup"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput-boolean p1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableFontWarmup:Z

    .line 82
    .line 83
    const-string p1, "minWarmupDiskSize"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->minWarmupDiskSize:I

    .line 90
    .line 91
    const-string p1, "cleanResourceWarmup"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iput-boolean p1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->cleanResourceWarmup:Z

    .line 98
    .line 99
    const-string p1, "warmupVideos"

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    iget-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupVideos:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;->parseJson(Lorg/json/JSONObject;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception p1

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    const-string p1, "warmupImages"

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    iget-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupImages:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;

    .line 124
    .line 125
    invoke-virtual {v1, p1}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;->parseJson(Lorg/json/JSONObject;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    const-string p1, "warmupZips"

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_3

    .line 135
    .line 136
    iget-object v0, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :goto_1
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    :goto_2
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/core/response/model/BaseResultData;->toJson()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "result"

    .line 6
    .line 7
    iget v2, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->result:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "disableResourceWarmup"

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableResourceWarmup:Z

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string v1, "disableVideoWarmup"

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableVideoWarmup:Z

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v1, "disableImageWarmup"

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableImageWarmup:Z

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v1, "disableZipWarmup"

    .line 34
    .line 35
    iget-boolean v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableZipWarmup:Z

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v1, "disableFontWarmup"

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableFontWarmup:Z

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    const-string v1, "minWarmupDiskSize"

    .line 48
    .line 49
    iget v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->minWarmupDiskSize:I

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string v1, "cleanResourceWarmup"

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->cleanResourceWarmup:Z

    .line 57
    .line 58
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupVideos:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;->toJson()Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "warmupVideos"

    .line 68
    .line 69
    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupImages:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;->toJson()Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "warmupImages"

    .line 79
    .line 80
    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;->toJson()Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "warmupZips"

    .line 90
    .line 91
    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method
