.class Lcom/octopus/ad/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d$3;->a:Lcom/octopus/ad/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "MediaPlayer OnErrorListener: what: "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, " extra: "

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "OctopusAd_Video"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/16 p1, -0x26

    .line 32
    .line 33
    if-ne p2, p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/octopus/ad/d$3;->a:Lcom/octopus/ad/d;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/octopus/ad/d;->c()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/d$3;->a:Lcom/octopus/ad/d;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/octopus/ad/d$3;->a:Lcom/octopus/ad/d;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const v0, 0x1394a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/e/a;->b(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/d$3;->a:Lcom/octopus/ad/d;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/octopus/ad/d;->d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/octopus/ad/d$3;->a:Lcom/octopus/ad/d;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/octopus/ad/d;->d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, p2, p3}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoError(II)V

    .line 76
    .line 77
    .line 78
    :cond_2
    const/4 p1, 0x0

    .line 79
    return p1
.end method
