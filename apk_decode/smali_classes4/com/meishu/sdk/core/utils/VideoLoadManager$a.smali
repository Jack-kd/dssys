.class public Lcom/meishu/sdk/core/utils/VideoLoadManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;IZLcom/meishu/sdk/core/bquery/h;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/VideoLoadManager;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->b:Lcom/meishu/sdk/core/utils/VideoLoadManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->a:Ljava/lang/String;

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
    .locals 3
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->b:Lcom/meishu/sdk/core/utils/VideoLoadManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "load video error: "

    .line 6
    .line 7
    invoke-static {v2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v2, -0x1

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 7
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
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [B

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    array-length v1, p1

    .line 19
    if-lez v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_1
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, p1}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/io/File;[B)V

    .line 29
    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    cmp-long p1, v3, v5

    .line 46
    .line 47
    if-lez p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->b:Lcom/meishu/sdk/core/utils/VideoLoadManager;

    .line 50
    .line 51
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :try_start_2
    iget-object v3, p1, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    sget-object v4, Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;->SUCCESS:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    .line 63
    .line 64
    iput-object v4, v3, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    .line 65
    .line 66
    iput-object v2, v3, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->b:Ljava/io/File;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p1, v1, v2, v3}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit p1

    .line 76
    return-void

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    monitor-exit p1

    .line 80
    throw v1

    .line 81
    :cond_1
    const-string p1, "load file error"

    .line 82
    .line 83
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->b:Lcom/meishu/sdk/core/utils/VideoLoadManager;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2, v0, p1}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    const-string p1, "load file error"

    .line 95
    .line 96
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->b:Lcom/meishu/sdk/core/utils/VideoLoadManager;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v2, v0, p1}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :catchall_2
    move-exception p1

    .line 105
    goto :goto_3

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->b:Lcom/meishu/sdk/core/utils/VideoLoadManager;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->a:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "load video error: empty response"

    .line 111
    .line 112
    invoke-virtual {p1, v1, v0, v2}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->b:Lcom/meishu/sdk/core/utils/VideoLoadManager;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->a:Ljava/lang/String;

    .line 119
    .line 120
    const-string v2, "load video error: unsuccessful response"

    .line 121
    .line 122
    invoke-virtual {p1, v1, v0, v2}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :goto_3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->b:Lcom/meishu/sdk/core/utils/VideoLoadManager;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;->a:Ljava/lang/String;

    .line 129
    .line 130
    const-string v3, "load video error: "

    .line 131
    .line 132
    invoke-static {v3}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v1, v2, v0, v3}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    :goto_4
    return-void
.end method
