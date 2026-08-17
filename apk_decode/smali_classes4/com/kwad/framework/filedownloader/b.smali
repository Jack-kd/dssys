.class public final Lcom/kwad/framework/filedownloader/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/s$a;
.implements Lcom/kwad/framework/filedownloader/s$b;


# instance fields
.field private ayR:J

.field private ayS:J

.field private ayT:J

.field private ayU:I

.field private ayV:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/kwad/framework/filedownloader/b;->ayV:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final aa(J)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/b;->ayV:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 20
    .line 21
    sub-long/2addr v0, v4

    .line 22
    iget v4, p0, Lcom/kwad/framework/filedownloader/b;->ayV:I

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    cmp-long v4, v0, v4

    .line 26
    .line 27
    if-gez v4, :cond_3

    .line 28
    .line 29
    iget v4, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    cmp-long v2, v0, v2

    .line 34
    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    return-void

    .line 39
    :cond_3
    :goto_1
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/b;->ayS:J

    .line 40
    .line 41
    sub-long v2, p1, v2

    .line 42
    .line 43
    div-long/2addr v2, v0

    .line 44
    long-to-int v0, v2

    .line 45
    iput v0, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 53
    .line 54
    :goto_2
    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/b;->ayS:J

    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide p1

    .line 60
    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 61
    .line 62
    return-void
.end method

.method public final end(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->mStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->ayT:J

    .line 11
    .line 12
    sub-long/2addr p1, v0

    .line 13
    iput-wide v2, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/b;->mStartTime:J

    .line 20
    .line 21
    sub-long/2addr v0, v4

    .line 22
    cmp-long v2, v0, v2

    .line 23
    .line 24
    if-gtz v2, :cond_1

    .line 25
    .line 26
    long-to-int p1, p1

    .line 27
    iput p1, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    div-long/2addr p1, v0

    .line 31
    long-to-int p1, p1

    .line 32
    iput p1, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 33
    .line 34
    return-void
.end method

.method public final getSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 2
    .line 3
    return v0
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 7
    .line 8
    return-void
.end method

.method public final start(J)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->mStartTime:J

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/b;->ayT:J

    .line 8
    .line 9
    return-void
.end method
