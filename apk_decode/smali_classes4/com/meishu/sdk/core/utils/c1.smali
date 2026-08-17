.class public Lcom/meishu/sdk/core/utils/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/d1$a;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/meishu/sdk/core/utils/d1$a;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/c1;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/c1;->b:Lcom/meishu/sdk/core/utils/d1$a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/c1;->c:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/c1;->d:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 1
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget-object p1, Lcom/meishu/sdk/core/utils/d1;->b:Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/c1;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/c1;->b:Lcom/meishu/sdk/core/utils/d1$a;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/utils/d1$a;->a(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [B

    .line 14
    .line 15
    new-instance v2, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/c1;->c:Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/c1;->c:Ljava/io/File;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/c1;->d:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :goto_0
    move-object v0, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-string p1, "RewardTempUtil"

    .line 42
    .line 43
    const-string v0, "rename error"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    move-object v0, v2

    .line 51
    goto :goto_2

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/c1;->b:Lcom/meishu/sdk/core/utils/d1$a;

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 70
    .line 71
    .line 72
    :catch_1
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/c1;->b:Lcom/meishu/sdk/core/utils/d1$a;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    :goto_3
    invoke-interface {p1, v1}, Lcom/meishu/sdk/core/utils/d1$a;->a(Z)V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void

    .line 80
    :catchall_2
    move-exception p1

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 84
    .line 85
    .line 86
    :catch_2
    :cond_5
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/c1;->b:Lcom/meishu/sdk/core/utils/d1$a;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/d1$a;->a(Z)V

    .line 91
    .line 92
    .line 93
    :cond_6
    throw p1
.end method
