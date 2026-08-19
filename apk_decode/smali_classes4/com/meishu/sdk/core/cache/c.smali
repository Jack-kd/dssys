.class public Lcom/meishu/sdk/core/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/cache/image/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/core/cache/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/meishu/sdk/core/cache/d;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Lcom/meishu/sdk/core/cache/d;->a(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-static {p0, v0}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    cmp-long v2, v2, v4

    .line 32
    .line 33
    if-lez v2, :cond_2

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sub-long/2addr v2, v4

    .line 44
    const v4, 0x5265c00

    .line 45
    .line 46
    .line 47
    int-to-long v4, v4

    .line 48
    cmp-long v2, v2, v4

    .line 49
    .line 50
    if-gez v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    array-length v2, v0

    .line 63
    if-lez v2, :cond_2

    .line 64
    .line 65
    array-length v2, v0

    .line 66
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    invoke-interface {p1, v2, v0, p0}, Lcom/meishu/sdk/core/cache/d;->a(Landroid/graphics/Bitmap;[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/meishu/sdk/core/bquery/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v2, Lcom/meishu/sdk/core/cache/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Lcom/meishu/sdk/core/cache/image/a;

    .line 104
    .line 105
    invoke-interface {p0, p1}, Lcom/meishu/sdk/core/cache/image/a;->a(Lcom/meishu/sdk/core/cache/d;)Lcom/meishu/sdk/core/cache/image/c;

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Lcom/meishu/sdk/core/cache/d;->a()V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    new-instance v3, Lcom/meishu/sdk/core/cache/image/c;

    .line 113
    .line 114
    new-instance v4, Lcom/meishu/sdk/core/cache/b;

    .line 115
    .line 116
    invoke-direct {v4, p0}, Lcom/meishu/sdk/core/cache/b;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, p0, v4}, Lcom/meishu/sdk/core/cache/image/c;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/cache/d;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, p1}, Lcom/meishu/sdk/core/cache/image/c;->a(Lcom/meishu/sdk/core/cache/d;)Lcom/meishu/sdk/core/cache/image/c;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v2, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/meishu/sdk/core/cache/image/c;->b:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v2, Lcom/meishu/sdk/core/cache/image/b;

    .line 132
    .line 133
    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/cache/image/b;-><init>(Lcom/meishu/sdk/core/cache/image/c;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v2, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    const/16 p0, 0x9

    .line 144
    .line 145
    invoke-interface {p1, p0}, Lcom/meishu/sdk/core/cache/d;->a(I)V

    .line 146
    .line 147
    .line 148
    :goto_2
    return-void
.end method
