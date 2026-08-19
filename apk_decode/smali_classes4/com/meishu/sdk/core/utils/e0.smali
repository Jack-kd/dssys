.class public Lcom/meishu/sdk/core/utils/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/e0;->a:Lcom/meishu/sdk/core/utils/i;

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
    sget-object p1, Lcom/meishu/sdk/core/utils/a0;->c:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Lcom/meishu/sdk/core/utils/e0$a;

    .line 14
    .line 15
    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/core/utils/e0$a;-><init>(Lcom/meishu/sdk/core/utils/e0;Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
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
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eq p2, v0, :cond_1

    .line 50
    .line 51
    sget-object p2, Lcom/meishu/sdk/core/utils/a0;->c:Landroid/os/Handler;

    .line 52
    .line 53
    new-instance v0, Lcom/meishu/sdk/core/utils/e0$b;

    .line 54
    .line 55
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/utils/e0$b;-><init>(Lcom/meishu/sdk/core/utils/e0;Lcom/meishu/sdk/core/domain/HttpResponse;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/e0;->a:Lcom/meishu/sdk/core/utils/i;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "onResponse: "

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "DefaultHttpGetWithNoHandlerCallback"

    .line 89
    .line 90
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    return-void
.end method
