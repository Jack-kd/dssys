.class public Lcom/meishu/sdk/core/utils/a0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/meishu/sdk/core/utils/y;


# direct methods
.method public constructor <init>(ZLcom/meishu/sdk/core/utils/y;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/utils/a0$g;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/a0$g;->b:Lcom/meishu/sdk/core/utils/y;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/meishu/sdk/core/utils/a0$g;->a:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/meishu/sdk/core/utils/a0;->c:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v0, Lcom/meishu/sdk/core/utils/a0$g$a;

    .line 18
    .line 19
    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/core/utils/a0$g$a;-><init>(Lcom/meishu/sdk/core/utils/a0$g;Ljava/io/IOException;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/a0$g;->b:Lcom/meishu/sdk/core/utils/y;

    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/utils/y;->onFailure(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
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
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setResponseBody(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_READ_RESPONSE_ERROR:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "read response error"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 57
    .line 58
    .line 59
    const-string v0, "bad file"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eq p2, v0, :cond_2

    .line 94
    .line 95
    iget-boolean p2, p0, Lcom/meishu/sdk/core/utils/a0$g;->a:Z

    .line 96
    .line 97
    if-eqz p2, :cond_2

    .line 98
    .line 99
    sget-object p2, Lcom/meishu/sdk/core/utils/a0;->c:Landroid/os/Handler;

    .line 100
    .line 101
    new-instance v0, Lcom/meishu/sdk/core/utils/a0$g$b;

    .line 102
    .line 103
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/utils/a0$g$b;-><init>(Lcom/meishu/sdk/core/utils/a0$g;Lcom/meishu/sdk/core/domain/HttpResponse;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/a0$g;->b:Lcom/meishu/sdk/core/utils/y;

    .line 111
    .line 112
    invoke-interface {p2, p1}, Lcom/meishu/sdk/core/utils/y;->onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method
