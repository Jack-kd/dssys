.class public Lcom/meishu/sdk/core/loader/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/meishu/sdk/core/loader/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/c$a;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/loader/c$a;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/core/loader/c$a;->c:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/core/loader/c$a;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 5
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onFailure: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AdLoader"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/core/loader/c;->access$000(Lcom/meishu/sdk/core/loader/c;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/c;->access$102(Lcom/meishu/sdk/core/loader/c;Z)Z

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "CLEARTEXT"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 51
    .line 52
    const-string v1, "https://sdk.1rtb.net/sdk/req_ad"

    .line 53
    .line 54
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/c$a;->a:Ljava/util/Map;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c$a;->b:Ljava/util/Map;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/c$a;->c:Ljava/util/Map;

    .line 59
    .line 60
    invoke-static {v0, v1, v2, v3, v4}, Lcom/meishu/sdk/core/loader/c;->access$200(Lcom/meishu/sdk/core/loader/c;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Request;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/c$a;->d:Ljava/util/Map;

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/loader/c;->access$300(Lcom/meishu/sdk/core/loader/c;Lokhttp3/Request;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/loader/c;->access$000(Lcom/meishu/sdk/core/loader/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/c;->access$102(Lcom/meishu/sdk/core/loader/c;Z)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/loader/c;->access$402(Lcom/meishu/sdk/core/loader/c;J)J

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v1, 0xc8

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, [B

    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/c$a;->d:Ljava/util/Map;

    .line 43
    .line 44
    invoke-static {v0, p1, v1}, Lcom/meishu/sdk/core/loader/c;->access$500(Lcom/meishu/sdk/core/loader/c;[BLjava/util/Map;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getHeader()Lokhttp3/Headers;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const-string v1, "Err_msg"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    const-string v1, "UTF-8"

    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string v0, ""

    .line 74
    .line 75
    :goto_0
    const-string v1, "http code: "

    .line 76
    .line 77
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, ",errMsg="

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "AdLoader"

    .line 101
    .line 102
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/c$a;->e:Lcom/meishu/sdk/core/loader/c;

    .line 106
    .line 107
    const-string v2, "\u9519\u8bef\u7801\u4e3a\uff1a"

    .line 108
    .line 109
    invoke-static {v2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, ",msg="

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->ERROR_REPORT_URL:[Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    array-length v1, v0

    .line 140
    if-lez v1, :cond_3

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    aget-object v0, v0, v1

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorDescription()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_1
    return-void
.end method
