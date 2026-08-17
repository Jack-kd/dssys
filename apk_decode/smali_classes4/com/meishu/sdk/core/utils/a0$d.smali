.class public Lcom/meishu/sdk/core/utils/a0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0;->a(Lokhttp3/Request;Lcom/meishu/sdk/core/utils/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/y;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/a0$d;->a:Lcom/meishu/sdk/core/utils/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "e="

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "HttpUtil"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/meishu/sdk/core/utils/a0;->c:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v0, Lcom/meishu/sdk/core/utils/a0$d$a;

    .line 26
    .line 27
    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/core/utils/a0$d$a;-><init>(Lcom/meishu/sdk/core/utils/a0$d;Ljava/io/IOException;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/meishu/sdk/core/domain/HttpResponse;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setHeader(Lokhttp3/Headers;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setResponseBody(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 53
    .line 54
    .line 55
    const-string v0, "bad file"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$d;->a:Lcom/meishu/sdk/core/utils/y;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/utils/y;->onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 98
    .line 99
    .line 100
    throw p1
.end method
