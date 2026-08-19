.class public Lcom/meishu/sdk/core/cache/image/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/cache/image/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/cache/image/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/cache/image/b;->a:Lcom/meishu/sdk/core/cache/image/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/meishu/sdk/core/cache/image/b;->a:Lcom/meishu/sdk/core/cache/image/c;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/cache/image/c;->a(Lcom/meishu/sdk/core/cache/image/c;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 5
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
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/core/cache/image/b;->a:Lcom/meishu/sdk/core/cache/image/c;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/meishu/sdk/core/cache/image/c;->c:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 12
    :try_start_1
    iget-object v0, v0, Lcom/meishu/sdk/core/cache/image/c;->a:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/meishu/sdk/core/cache/d;

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/meishu/sdk/core/cache/d;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v2

    .line 41
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p1

    .line 46
    goto :goto_4

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    :try_start_4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, [B

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    array-length v0, p1

    .line 57
    if-lez v0, :cond_4

    .line 58
    .line 59
    array-length v0, p1

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Lcom/meishu/sdk/core/cache/image/b;->a:Lcom/meishu/sdk/core/cache/image/c;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/meishu/sdk/core/cache/image/c;->b:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    :try_start_5
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "temp"

    .line 77
    .line 78
    invoke-static {v1, v3}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_2
    move-exception v1

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    :goto_1
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/io/File;[B)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 98
    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    const-wide/16 v3, 0x0

    .line 113
    .line 114
    cmp-long v1, v1, v3

    .line 115
    .line 116
    if-lez v1, :cond_2

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_2
    sget-object v1, Lcom/meishu/sdk/core/cache/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    const-string v1, "c"

    .line 122
    .line 123
    const-string v2, "image file save error"

    .line 124
    .line 125
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    sget-object v1, Lcom/meishu/sdk/core/cache/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    .line 134
    const-string v1, "c"

    .line 135
    .line 136
    const-string v2, "image file save error"

    .line 137
    .line 138
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_3
    iget-object v1, p0, Lcom/meishu/sdk/core/cache/image/b;->a:Lcom/meishu/sdk/core/cache/image/c;

    .line 142
    .line 143
    invoke-static {v1, v0, p1}, Lcom/meishu/sdk/core/cache/image/c;->a(Lcom/meishu/sdk/core/cache/image/c;Landroid/graphics/Bitmap;[B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_3
    const/4 p1, 0x4

    .line 148
    goto :goto_5

    .line 149
    :goto_4
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 150
    :try_start_8
    throw p1

    .line 151
    :cond_4
    const/4 p1, 0x3

    .line 152
    :goto_5
    iget-object v0, p0, Lcom/meishu/sdk/core/cache/image/b;->a:Lcom/meishu/sdk/core/cache/image/c;

    .line 153
    .line 154
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/cache/image/c;->a(Lcom/meishu/sdk/core/cache/image/c;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :catchall_3
    iget-object p1, p0, Lcom/meishu/sdk/core/cache/image/b;->a:Lcom/meishu/sdk/core/cache/image/c;

    .line 159
    .line 160
    const/16 v0, 0x9

    .line 161
    .line 162
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/cache/image/c;->a(Lcom/meishu/sdk/core/cache/image/c;I)V

    .line 163
    .line 164
    .line 165
    :goto_6
    return-void
.end method
