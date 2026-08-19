.class public Lcom/meishu/sdk/core/loader/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/c;->retryNet(Lokhttp3/Request;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/meishu/sdk/core/loader/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c$c;->b:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/c$c;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 2
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
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$c;->b:Lcom/meishu/sdk/core/loader/c;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
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
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$c;->b:Lcom/meishu/sdk/core/loader/c;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, [B

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/c$c;->a:Ljava/util/Map;

    .line 18
    .line 19
    invoke-static {v0, p1, v1}, Lcom/meishu/sdk/core/loader/c;->access$500(Lcom/meishu/sdk/core/loader/c;[BLjava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getHeader()Lokhttp3/Headers;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v1, "Err_msg"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-string v1, "UTF-8"

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v0, ""

    .line 49
    .line 50
    :goto_0
    const-string v1, "http code: "

    .line 51
    .line 52
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ",errMsg="

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "AdLoader"

    .line 76
    .line 77
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/c$c;->b:Lcom/meishu/sdk/core/loader/c;

    .line 81
    .line 82
    const-string v2, "\u9519\u8bef\u7801\u4e3a\uff1a"

    .line 83
    .line 84
    invoke-static {v2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, ",msg="

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->ERROR_REPORT_URL:[Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    array-length v1, v0

    .line 115
    if-lez v1, :cond_2

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    aget-object v0, v0, v1

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorDescription()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_2
    return-void
.end method
