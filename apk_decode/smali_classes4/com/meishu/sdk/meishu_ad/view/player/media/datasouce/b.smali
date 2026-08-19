.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/RandomAccessFile;

.field public b:Ljava/io/RandomAccessFile;

.field public c:Ljava/io/File;

.field public d:Ljava/io/File;

.field public e:Ljava/io/File;

.field public volatile f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, -0x80000000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->f:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->c:Ljava/io/File;

    .line 15
    .line 16
    const-string v0, "temp"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->d:Ljava/io/File;

    .line 23
    .line 24
    const-string v0, "last_meta_temp"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->e:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->a()Z

    .line 33
    .line 34
    .line 35
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const-string v0, "r"

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    :try_start_1
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->c:Ljava/io/File;

    .line 43
    .line 44
    invoke-direct {p1, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->a:Ljava/io/RandomAccessFile;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->c:Ljava/io/File;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->f:J

    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->d:Ljava/io/File;

    .line 63
    .line 64
    invoke-direct {p1, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->a:Ljava/io/RandomAccessFile;

    .line 68
    .line 69
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->e:Ljava/io/File;

    .line 72
    .line 73
    invoke-direct {p1, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->b:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    return-void

    .line 79
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->c:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method
