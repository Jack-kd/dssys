.class public Lcom/meishu/sdk/core/utils/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/f0;->a(Ljava/lang/String;ZLcom/meishu/sdk/core/utils/f0$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/f0$b;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/meishu/sdk/core/utils/f0$b;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/f0$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/f0$a;->b:Lcom/meishu/sdk/core/utils/f0$b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/f0$a;->c:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/f0$a;->d:Ljava/io/File;

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
    sget-object p1, Lcom/meishu/sdk/core/utils/f0;->b:Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/f0$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/f0$a;->b:Lcom/meishu/sdk/core/utils/f0$b;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p1, Lcom/meishu/sdk/core/utils/s0$a;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/s0$a;->a(Z)V

    .line 16
    .line 17
    .line 18
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
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/f0$a;->c:Ljava/io/File;

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
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/f0$a;->c:Ljava/io/File;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/f0$a;->d:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    const-string p1, "ImageUtil"

    .line 39
    .line 40
    const-string v0, "rename error"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :goto_0
    move-object v0, v2

    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    move-object v0, v2

    .line 52
    goto :goto_3

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 56
    .line 57
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    :cond_2
    :try_start_3
    sget-object p1, Lcom/meishu/sdk/core/utils/f0;->b:Ljava/util/List;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/f0$a;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 65
    .line 66
    .line 67
    :catch_1
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/f0$a;->b:Lcom/meishu/sdk/core/utils/f0$b;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 73
    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 78
    .line 79
    .line 80
    :catch_2
    :cond_3
    :try_start_6
    sget-object p1, Lcom/meishu/sdk/core/utils/f0;->b:Ljava/util/List;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/f0$a;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 85
    .line 86
    .line 87
    :catch_3
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/f0$a;->b:Lcom/meishu/sdk/core/utils/f0$b;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    :goto_4
    check-cast p1, Lcom/meishu/sdk/core/utils/s0$a;

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/utils/s0$a;->a(Z)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void

    .line 97
    :catchall_2
    move-exception p1

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 101
    .line 102
    .line 103
    :catch_4
    :cond_5
    :try_start_8
    sget-object v0, Lcom/meishu/sdk/core/utils/f0;->b:Ljava/util/List;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/f0$a;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 108
    .line 109
    .line 110
    :catch_5
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/f0$a;->b:Lcom/meishu/sdk/core/utils/f0$b;

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    check-cast v0, Lcom/meishu/sdk/core/utils/s0$a;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/s0$a;->a(Z)V

    .line 117
    .line 118
    .line 119
    :cond_6
    throw p1
.end method
