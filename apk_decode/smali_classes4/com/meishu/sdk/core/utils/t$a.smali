.class public Lcom/meishu/sdk/core/utils/t$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/t;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t$a;->a:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/t$a;->a:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_4

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const-string v3, "t"

    .line 16
    .line 17
    const-string v4, "url is null"

    .line 18
    .line 19
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    goto :goto_5

    .line 38
    :cond_1
    const-string v5, "fTemp"

    .line 39
    .line 40
    invoke-static {v3, v5}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v7, Lcom/meishu/sdk/core/utils/t$a$a;

    .line 51
    .line 52
    invoke-direct {v7, p0, v6, v5, v4}, Lcom/meishu/sdk/core/utils/t$a$a;-><init>(Lcom/meishu/sdk/core/utils/t$a;Ljava/util/concurrent/CountDownLatch;Ljava/io/File;Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    sget-object v4, Lcom/meishu/sdk/core/utils/a0;->a:Lokhttp3/OkHttpClient;

    .line 56
    .line 57
    :try_start_0
    new-instance v4, Lokhttp3/Request$Builder;

    .line 58
    .line 59
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sget-object v4, Lcom/meishu/sdk/core/utils/a0;->b:Lokhttp3/OkHttpClient;

    .line 71
    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    invoke-static {}, Lcom/meishu/sdk/core/utils/a0;->b()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v3

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :goto_1
    sget-object v4, Lcom/meishu/sdk/core/utils/a0;->b:Lokhttp3/OkHttpClient;

    .line 81
    .line 82
    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v4, Lcom/meishu/sdk/core/utils/b0;

    .line 87
    .line 88
    invoke-direct {v4, v7, v5}, Lcom/meishu/sdk/core/utils/b0;-><init>(Lcom/meishu/sdk/core/utils/y;Ljava/io/File;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :goto_2
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    .line 96
    .line 97
    const-string v5, "get file error"

    .line 98
    .line 99
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v4}, Lcom/meishu/sdk/core/utils/t$a$a;->onFailure(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :catchall_1
    move-exception v4

    .line 107
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_4
    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    const-wide/16 v7, 0x0

    .line 118
    .line 119
    cmp-long v3, v3, v7

    .line 120
    .line 121
    if-lez v3, :cond_3

    .line 122
    .line 123
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 124
    .line 125
    const-wide/16 v4, 0x32

    .line 126
    .line 127
    invoke-virtual {v6, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :catchall_2
    move-exception v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_4
    return-void
.end method
