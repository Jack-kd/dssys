.class public Lcom/meishu/sdk/meishu_ad/view/player/a$a;
.super Lcom/meishu/sdk/core/safe/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/player/a;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:[Lcom/meishu/sdk/meishu_ad/view/player/e;

.field public final synthetic c:Landroid/media/MediaPlayer;

.field public final synthetic d:[I

.field public final synthetic e:Lcom/meishu/sdk/meishu_ad/view/player/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/a;[Z[Lcom/meishu/sdk/meishu_ad/view/player/e;Landroid/media/MediaPlayer;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->e:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->a:[Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->b:[Lcom/meishu/sdk/meishu_ad/view/player/e;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->c:Landroid/media/MediaPlayer;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->d:[I

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/h;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 9

    .line 1
    const-string v0, "CacheMediaPlayerHelper"

    .line 2
    .line 3
    const-string v1, "onPrepared"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->a:[Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-boolean v2, v0, v1

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->e:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 15
    .line 16
    iget v3, v0, Lcom/meishu/sdk/meishu_ad/view/player/a;->a:I

    .line 17
    .line 18
    if-lez v3, :cond_0

    .line 19
    .line 20
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/a;->b:I

    .line 21
    .line 22
    if-le v3, v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->b:[Lcom/meishu/sdk/meishu_ad/view/player/e;

    .line 25
    .line 26
    aget-object v0, v0, v1

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->c:Landroid/media/MediaPlayer;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->b:[Lcom/meishu/sdk/meishu_ad/view/player/e;

    .line 37
    .line 38
    aget-object v3, v3, v1

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/view/player/e;->getSize()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    if-lez v0, :cond_0

    .line 45
    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    cmp-long v5, v3, v5

    .line 49
    .line 50
    if-lez v5, :cond_0

    .line 51
    .line 52
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->e:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 53
    .line 54
    iget v5, v5, Lcom/meishu/sdk/meishu_ad/view/player/a;->a:I

    .line 55
    .line 56
    int-to-double v5, v5

    .line 57
    int-to-double v7, v0

    .line 58
    div-double/2addr v5, v7

    .line 59
    long-to-double v3, v3

    .line 60
    mul-double/2addr v5, v3

    .line 61
    double-to-long v3, v5

    .line 62
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->b:[Lcom/meishu/sdk/meishu_ad/view/player/e;

    .line 63
    .line 64
    aget-object v0, v0, v1

    .line 65
    .line 66
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/e;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-interface {v0, v3, v4}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/a;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->a:[Z

    .line 81
    .line 82
    aget-boolean v3, v0, v2

    .line 83
    .line 84
    if-nez v3, :cond_1

    .line 85
    .line 86
    aget-boolean v0, v0, v1

    .line 87
    .line 88
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->d:[I

    .line 89
    .line 90
    aget v1, v3, v1

    .line 91
    .line 92
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->e:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 93
    .line 94
    iget v3, v3, Lcom/meishu/sdk/meishu_ad/view/player/a;->b:I

    .line 95
    .line 96
    invoke-static {v0, p1, v1, v3}, Lcom/meishu/sdk/meishu_ad/view/player/c;->a(ZLandroid/media/MediaPlayer;II)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->a:[Z

    .line 103
    .line 104
    aput-boolean v2, p1, v2

    .line 105
    .line 106
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/player/a$a$a;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/view/player/a$a$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a$a;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void
.end method
