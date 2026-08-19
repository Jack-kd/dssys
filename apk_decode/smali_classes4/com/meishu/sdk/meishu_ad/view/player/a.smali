.class public Lcom/meishu/sdk/meishu_ad/view/player/a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/view/player/c$a;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLcom/meishu/sdk/meishu_ad/view/player/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a;->a:I

    .line 2
    .line 3
    iput p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/a;->b:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a;->c:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/view/player/a;->d:Lcom/meishu/sdk/meishu_ad/view/player/c$a;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/view/player/a;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    new-array v3, v0, [Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v6, v0, [I

    .line 6
    .line 7
    new-array v4, v0, [Lcom/meishu/sdk/meishu_ad/view/player/e;

    .line 8
    .line 9
    new-instance v5, Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-virtual {v5, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/meishu/sdk/meishu_ad/view/player/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    move-object v2, p0

    .line 21
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/meishu/sdk/meishu_ad/view/player/a$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a;[Z[Lcom/meishu/sdk/meishu_ad/view/player/e;Landroid/media/MediaPlayer;[I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;

    .line 28
    .line 29
    invoke-direct {v0, p0, v6, v3, v5}, Lcom/meishu/sdk/meishu_ad/view/player/a$b;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a;[I[ZLandroid/media/MediaPlayer;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/a$c;

    .line 36
    .line 37
    invoke-direct {v0, p0, v3}, Lcom/meishu/sdk/meishu_ad/view/player/a$c;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a;[Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;

    .line 44
    .line 45
    invoke-direct {v0, p0, v6, v3, v5}, Lcom/meishu/sdk/meishu_ad/view/player/a$d;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a;[I[ZLandroid/media/MediaPlayer;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/meishu/sdk/meishu_ad/view/player/e;

    .line 49
    .line 50
    iget-object v3, v2, Lcom/meishu/sdk/meishu_ad/view/player/a;->e:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v1, v3, v0}, Lcom/meishu/sdk/meishu_ad/view/player/e;-><init>(Ljava/lang/String;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    aput-object v1, v4, v0

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_0

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    move-object v2, p0

    .line 69
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/a$e;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/view/player/a$e;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
