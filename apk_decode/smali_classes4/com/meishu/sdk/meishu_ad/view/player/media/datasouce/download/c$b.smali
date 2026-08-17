.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/RandomAccessFile;JLjava/lang/Object;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a:Ljava/io/InputStream;

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->b:J

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    .line 10
    .line 11
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Range"

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "bytes="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, "-"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {}, Lcom/meishu/sdk/core/utils/a0;->a()Lokhttp3/OkHttpClient;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    .line 59
    move-object v2, p0

    .line 60
    move-object v6, p1

    .line 61
    move-object v8, p2

    .line 62
    move-wide v4, p3

    .line 63
    move-object v7, p5

    .line 64
    move-object v3, p6

    .line 65
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;JLjava/lang/String;Ljava/lang/Object;Ljava/io/RandomAccessFile;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    :goto_0
    move-object p1, v0

    .line 74
    goto :goto_1

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    move-object v3, p6

    .line 77
    goto :goto_0

    .line 78
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    move-object p6, v3

    .line 84
    check-cast p6, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 85
    .line 86
    invoke-virtual {p6}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a()V

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
