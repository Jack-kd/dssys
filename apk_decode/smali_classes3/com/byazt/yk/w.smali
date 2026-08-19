.class public Lcom/byazt/yk/w;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x5a,
        0x87
    }
.end annotation


# static fields
.field public static l:Ljava/lang/String; = "ResponseHandler"


# instance fields
.field public final a:Lcom/byazt/ip/q;

.field public final b:J

.field public final cx:J

.field public d:J

.field public final di:Z

.field public volatile dy:J

.field public e:Lcom/byazt/fu/w;

.field public eb:Lcom/byazt/yk/e;

.field public final ec:Z

.field public gu:Lcom/byazt/io/BaseException;

.field public hp:Z

.field public hq:J

.field public final j:Ljava/lang/String;

.field public volatile jl:Z

.field public final jx:Lcom/byazt/fu/DownloadInfo;

.field public final k:Lcom/byazt/ez/a;

.field public final n:Lcom/byazt/ei/hp;

.field public final ns:Z

.field public volatile nu:J

.field public o:Z

.field public q:Lcom/byazt/yk/sz;

.field public s:Lcom/byazt/au/gu;

.field public final sz:Lcom/byazt/jb/hp;

.field public u:J

.field public ud:J

.field public v:J

.field public volatile vv:J

.field public final w:Lcom/byazt/fu/l;

.field public wv:J

.field public volatile xs:J

.field public volatile zy:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/fu/DownloadInfo;Ljava/lang/String;Lcom/byazt/ip/q;Lcom/byazt/fu/l;Lcom/byazt/ez/a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/yk/w;->hp:Z

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/byazt/yk/w;->nu:J

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/byazt/yk/w;->dy:J

    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/byazt/yk/w;->j:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/yk/jx;->di()Lcom/byazt/yk/e;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/byazt/yk/w;->eb:Lcom/byazt/yk/e;

    .line 22
    .line 23
    instance-of v3, p2, Lcom/byazt/au/j;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    check-cast p2, Lcom/byazt/au/j;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/byazt/au/j;->hp()Lcom/byazt/au/gu;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iput-object v3, p0, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/byazt/au/j;->a()Lcom/byazt/yk/sz;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/byazt/yk/w;->q:Lcom/byazt/yk/sz;

    .line 40
    .line 41
    :cond_0
    iput-object p3, p0, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    .line 44
    .line 45
    iput-object p5, p0, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    .line 46
    .line 47
    invoke-virtual {p4}, Lcom/byazt/fu/l;->k()J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    iput-wide p2, p0, Lcom/byazt/yk/w;->v:J

    .line 52
    .line 53
    iput-wide p2, p0, Lcom/byazt/yk/w;->u:J

    .line 54
    .line 55
    invoke-virtual {p4}, Lcom/byazt/fu/l;->j()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p4}, Lcom/byazt/fu/l;->xs()J

    .line 62
    .line 63
    .line 64
    move-result-wide p2

    .line 65
    iput-wide p2, p0, Lcom/byazt/yk/w;->vv:J

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p4, v0}, Lcom/byazt/fu/l;->jx(Z)J

    .line 69
    .line 70
    .line 71
    move-result-wide p2

    .line 72
    iput-wide p2, p0, Lcom/byazt/yk/w;->vv:J

    .line 73
    .line 74
    :goto_0
    invoke-virtual {p4}, Lcom/byazt/fu/l;->u()J

    .line 75
    .line 76
    .line 77
    move-result-wide p2

    .line 78
    iput-wide p2, p0, Lcom/byazt/yk/w;->xs:J

    .line 79
    .line 80
    invoke-static {}, Lcom/byazt/ei/hp;->hp()Lcom/byazt/ei/hp;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iput-object p2, p0, Lcom/byazt/yk/w;->n:Lcom/byazt/ei/hp;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/byazt/fu/DownloadInfo;->getId()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {p1}, Lcom/byazt/jb/hp;->hp(I)Lcom/byazt/jb/hp;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    .line 95
    .line 96
    const-string p2, "sync_strategy"

    .line 97
    .line 98
    invoke-virtual {p1, p2, v0}, Lcom/byazt/jb/hp;->hp(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    const/4 p3, 0x1

    .line 103
    if-ne p2, p3, :cond_2

    .line 104
    .line 105
    move p2, p3

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move p2, v0

    .line 108
    :goto_1
    iput-boolean p2, p0, Lcom/byazt/yk/w;->ns:Z

    .line 109
    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    const-string p2, "sync_interval_ms_fg"

    .line 113
    .line 114
    const/16 p4, 0x1388

    .line 115
    .line 116
    invoke-virtual {p1, p2, p4}, Lcom/byazt/jb/hp;->hp(Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    int-to-long p4, p2

    .line 121
    const-string p2, "sync_interval_ms_bg"

    .line 122
    .line 123
    const/16 v1, 0x3e8

    .line 124
    .line 125
    invoke-virtual {p1, p2, v1}, Lcom/byazt/jb/hp;->hp(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    int-to-long v1, p2

    .line 130
    const-wide/16 v3, 0x1f4

    .line 131
    .line 132
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide p4

    .line 136
    iput-wide p4, p0, Lcom/byazt/yk/w;->cx:J

    .line 137
    .line 138
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide p4

    .line 142
    iput-wide p4, p0, Lcom/byazt/yk/w;->b:J

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    iput-wide v1, p0, Lcom/byazt/yk/w;->cx:J

    .line 146
    .line 147
    iput-wide v1, p0, Lcom/byazt/yk/w;->b:J

    .line 148
    .line 149
    :goto_2
    const-string p2, "monitor_rw"

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/byazt/jb/hp;->l(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-ne p1, p3, :cond_4

    .line 156
    .line 157
    move v0, p3

    .line 158
    :cond_4
    iput-boolean v0, p0, Lcom/byazt/yk/w;->di:Z

    .line 159
    .line 160
    const/high16 p1, 0x10000

    .line 161
    .line 162
    invoke-static {p1}, Lcom/byazt/xq/hp;->hp(I)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iput-boolean p1, p0, Lcom/byazt/yk/w;->ec:Z

    .line 167
    .line 168
    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yk/w;->jl:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/yk/w;->zy:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method private eb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/yk/jx;->jl()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/yk/w$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/yk/w$1;-><init>(Lcom/byazt/yk/w;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic hp(Lcom/byazt/yk/w;)Lcom/byazt/ip/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    return-object p0
.end method

.method private hp(Ljava/io/InputStream;)Lcom/byazt/zd/l;
    .locals 8

    .line 9
    invoke-static {}, Lcom/byazt/yk/jx;->pu()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    const-string v2, "rw_concurrent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/byazt/jb/hp;->hp(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 11
    iget-object v1, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/fu/DownloadInfo;->getChunkCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    .line 12
    invoke-virtual {v1}, Lcom/byazt/fu/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x1400000

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    const-string v4, "rw_concurrent_max_buffer_count"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Lcom/byazt/jb/hp;->hp(Ljava/lang/String;I)I

    move-result v1

    .line 14
    :try_start_0
    new-instance v4, Lcom/byazt/zd/hp;

    invoke-direct {v4, p1, v0, v1}, Lcom/byazt/zd/hp;-><init>(Ljava/io/InputStream;II)V

    .line 15
    iput-boolean v2, p0, Lcom/byazt/yk/w;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 16
    :catchall_0
    :cond_0
    new-instance v1, Lcom/byazt/zd/jx;

    invoke-direct {v1, p1, v0}, Lcom/byazt/zd/jx;-><init>(Ljava/io/InputStream;I)V

    .line 17
    iput-boolean v3, p0, Lcom/byazt/yk/w;->o:Z

    return-object v1
.end method

.method private hp(Lcom/byazt/yk/e;)V
    .locals 9

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 26
    :cond_0
    instance-of v0, p1, Lcom/byazt/cy/w;

    if-eqz v0, :cond_2

    .line 27
    invoke-static {}, Lcom/byazt/xq/a;->l()Z

    move-result v1

    invoke-static {v1}, Lcom/byazt/au/jl;->hp(Z)Lcom/byazt/yk/zy;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 28
    :goto_1
    iget-object v1, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    invoke-virtual {v1}, Lcom/byazt/fu/l;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    iget-object v1, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    invoke-virtual {v1}, Lcom/byazt/fu/l;->w()Lcom/byazt/fu/l;

    move-result-object v1

    goto :goto_2

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    :goto_2
    if-eqz v1, :cond_8

    .line 31
    iget-wide v3, p0, Lcom/byazt/yk/w;->v:J

    invoke-virtual {v1, v3, v4}, Lcom/byazt/fu/l;->l(J)V

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 32
    invoke-virtual {v1}, Lcom/byazt/fu/l;->gu()I

    move-result v3

    invoke-virtual {v1}, Lcom/byazt/fu/l;->ec()I

    move-result v4

    invoke-virtual {v1}, Lcom/byazt/fu/l;->l()I

    move-result v5

    iget-wide v6, p0, Lcom/byazt/yk/w;->v:J

    invoke-interface/range {v2 .. v7}, Lcom/byazt/yk/zy;->hp(IIIJ)V

    move-object v3, p1

    goto :goto_3

    .line 33
    :cond_4
    invoke-virtual {v1}, Lcom/byazt/fu/l;->gu()I

    move-result v4

    invoke-virtual {v1}, Lcom/byazt/fu/l;->ec()I

    move-result v5

    invoke-virtual {v1}, Lcom/byazt/fu/l;->l()I

    move-result v6

    iget-wide v7, p0, Lcom/byazt/yk/w;->v:J

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/byazt/yk/e;->hp(IIIJ)V

    .line 34
    :goto_3
    invoke-virtual {v1}, Lcom/byazt/fu/l;->s()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 35
    invoke-virtual {v1}, Lcom/byazt/fu/l;->q()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 36
    invoke-virtual {v1}, Lcom/byazt/fu/l;->e()J

    move-result-wide v4

    .line 37
    iget-wide v6, p0, Lcom/byazt/yk/w;->v:J

    cmp-long p1, v4, v6

    if-lez p1, :cond_6

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {v1}, Lcom/byazt/fu/l;->gu()I

    move-result p1

    invoke-virtual {v1}, Lcom/byazt/fu/l;->l()I

    move-result v0

    invoke-interface {v2, p1, v0, v4, v5}, Lcom/byazt/yk/zy;->hp(IIJ)V

    goto :goto_4

    .line 39
    :cond_5
    invoke-virtual {v1}, Lcom/byazt/fu/l;->gu()I

    move-result p1

    invoke-virtual {v1}, Lcom/byazt/fu/l;->l()I

    move-result v0

    invoke-interface {v3, p1, v0, v4, v5}, Lcom/byazt/yk/e;->hp(IIJ)V

    :goto_4
    return-void

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 40
    invoke-virtual {v1}, Lcom/byazt/fu/l;->gu()I

    move-result p1

    invoke-virtual {v1}, Lcom/byazt/fu/l;->l()I

    move-result v0

    iget-wide v3, p0, Lcom/byazt/yk/w;->v:J

    invoke-interface {v2, p1, v0, v3, v4}, Lcom/byazt/yk/zy;->hp(IIJ)V

    return-void

    .line 41
    :cond_7
    invoke-virtual {v1}, Lcom/byazt/fu/l;->gu()I

    move-result p1

    invoke-virtual {v1}, Lcom/byazt/fu/l;->l()I

    move-result v0

    iget-wide v1, p0, Lcom/byazt/yk/w;->v:J

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/byazt/yk/e;->hp(IIJ)V

    return-void

    :cond_8
    move-object v3, p1

    .line 42
    iget-object p1, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    invoke-virtual {p1}, Lcom/byazt/fu/l;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 43
    iget-object p1, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    invoke-virtual {p1}, Lcom/byazt/fu/l;->gu()I

    move-result p1

    iget-object v0, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    invoke-virtual {v0}, Lcom/byazt/fu/l;->ec()I

    move-result v0

    iget-wide v3, p0, Lcom/byazt/yk/w;->v:J

    invoke-interface {v2, p1, v0, v3, v4}, Lcom/byazt/yk/zy;->hp(IIJ)V

    return-void

    .line 44
    :cond_9
    iget-object p1, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    invoke-virtual {p1}, Lcom/byazt/fu/l;->gu()I

    move-result p1

    iget-object v0, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    invoke-virtual {v0}, Lcom/byazt/fu/l;->ec()I

    move-result v0

    iget-wide v1, p0, Lcom/byazt/yk/w;->v:J

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/byazt/yk/e;->hp(IIJ)V

    :cond_a
    :goto_5
    return-void
.end method

.method private hp(Z)V
    .locals 8

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/byazt/yk/w;->dy:J

    sub-long v2, v0, v2

    .line 20
    iget-boolean v4, p0, Lcom/byazt/yk/w;->ns:Z

    if-eqz v4, :cond_1

    .line 21
    iget-object p1, p0, Lcom/byazt/yk/w;->n:Lcom/byazt/ei/hp;

    invoke-virtual {p1}, Lcom/byazt/ei/hp;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lcom/byazt/yk/w;->cx:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/byazt/yk/w;->b:J

    :goto_0
    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    goto :goto_1

    .line 22
    :cond_1
    iget-wide v4, p0, Lcom/byazt/yk/w;->v:J

    iget-wide v6, p0, Lcom/byazt/yk/w;->nu:J

    sub-long/2addr v4, v6

    if-nez p1, :cond_3

    .line 23
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/byazt/yk/w;->l(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 24
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/byazt/yk/w;->s()V

    .line 25
    iput-wide v0, p0, Lcom/byazt/yk/w;->dy:J

    return-void
.end method

.method private l(JJ)Z
    .locals 2

    .line 1
    const-wide/32 v0, 0x10000

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const-wide/16 p1, 0x1f4

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private s()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yk/w;->di:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/byazt/fu/w;->hp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v3}, Lcom/byazt/fu/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/byazt/fu/DownloadInfo;->getChunkCount()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-le v2, v3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_1
    invoke-static {}, Lcom/byazt/xq/a;->l()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Lcom/byazt/au/jl;->hp(Z)Lcom/byazt/yk/zy;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    iget-object v3, p0, Lcom/byazt/yk/w;->q:Lcom/byazt/yk/sz;

    .line 44
    .line 45
    invoke-direct {p0, v3}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 46
    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v3, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    .line 51
    .line 52
    invoke-interface {v2, v3}, Lcom/byazt/yk/zy;->jx(Lcom/byazt/fu/DownloadInfo;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/byazt/yk/w;->q:Lcom/byazt/yk/sz;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/byazt/fu/DownloadInfo;->getId()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/byazt/fu/DownloadInfo;->getCurBytes()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    invoke-interface {v2, v3, v4, v5}, Lcom/byazt/yk/e;->hp(IJ)Lcom/byazt/fu/DownloadInfo;

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    if-eqz v2, :cond_4

    .line 75
    .line 76
    iget-object v3, p0, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    .line 77
    .line 78
    invoke-interface {v2, v3}, Lcom/byazt/yk/zy;->jx(Lcom/byazt/fu/DownloadInfo;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    iget-object v2, p0, Lcom/byazt/yk/w;->q:Lcom/byazt/yk/sz;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/byazt/fu/l;->gu()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    iget-wide v4, p0, Lcom/byazt/yk/w;->v:J

    .line 91
    .line 92
    invoke-interface {v2, v3, v4, v5}, Lcom/byazt/yk/e;->hp(IJ)Lcom/byazt/fu/DownloadInfo;

    .line 93
    .line 94
    .line 95
    :goto_2
    iget-wide v2, p0, Lcom/byazt/yk/w;->v:J

    .line 96
    .line 97
    iput-wide v2, p0, Lcom/byazt/yk/w;->nu:J

    .line 98
    .line 99
    :catch_0
    iget-boolean v2, p0, Lcom/byazt/yk/w;->di:Z

    .line 100
    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    sub-long/2addr v2, v0

    .line 108
    iget-wide v0, p0, Lcom/byazt/yk/w;->hq:J

    .line 109
    .line 110
    add-long/2addr v0, v2

    .line 111
    iput-wide v0, p0, Lcom/byazt/yk/w;->hq:J

    .line 112
    .line 113
    :cond_5
    return-void
.end method


# virtual methods
.method public hp()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/yk/w;->v:J

    return-wide v0
.end method

.method public hp(JJ)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/byazt/yk/w;->xs:J

    .line 8
    iput-wide p3, p0, Lcom/byazt/yk/w;->vv:J

    return-void
.end method

.method public hp(JJJ)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/yk/w;->v:J

    .line 4
    iput-wide p1, p0, Lcom/byazt/yk/w;->u:J

    .line 5
    iput-wide p3, p0, Lcom/byazt/yk/w;->xs:J

    .line 6
    iput-wide p5, p0, Lcom/byazt/yk/w;->vv:J

    return-void
.end method

.method public j()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/io/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-direct {v1}, Lcom/byazt/yk/w;->a()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v1, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    if-nez v0, :cond_0

    goto/16 :goto_2b

    .line 2
    :cond_0
    iget-object v0, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    invoke-static {v0}, Lcom/byazt/xq/a;->hp(Lcom/byazt/ip/eb;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_33

    .line 3
    iget-object v0, v1, Lcom/byazt/yk/w;->w:Lcom/byazt/fu/l;

    invoke-virtual {v0}, Lcom/byazt/fu/l;->jl()J

    move-result-wide v6

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 5
    iget-boolean v10, v1, Lcom/byazt/yk/w;->di:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 6
    :try_start_0
    iget-object v0, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/fu/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v15}, Lcom/byazt/fu/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Lcom/byazt/io/BaseException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move-wide/from16 v29, v4

    :try_start_1
    iget-object v4, v1, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    const-string v5, "flush_buffer_size_byte"

    const/4 v13, -0x1

    .line 7
    invoke-virtual {v4, v5, v13}, Lcom/byazt/jb/hp;->hp(Ljava/lang/String;I)I

    move-result v4

    .line 8
    invoke-static {v0, v14, v15, v4}, Lcom/byazt/xq/a;->hp(Lcom/byazt/fu/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/byazt/fu/w;

    move-result-object v0

    iput-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;
    :try_end_1
    .catch Lcom/byazt/io/BaseException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 9
    :try_start_2
    iget-wide v4, v1, Lcom/byazt/yk/w;->v:J

    invoke-virtual {v0, v4, v5}, Lcom/byazt/fu/w;->hp(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/byazt/io/BaseException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 10
    :try_start_3
    iget-object v0, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    invoke-interface {v0}, Lcom/byazt/ip/q;->hp()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 11
    iget-object v4, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v4}, Lcom/byazt/fu/DownloadInfo;->updateRealStartDownloadTime()V

    .line 12
    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Ljava/io/InputStream;)Lcom/byazt/zd/l;

    move-result-object v4
    :try_end_3
    .catch Lcom/byazt/io/BaseException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 13
    :try_start_4
    iget-object v0, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    iget-boolean v5, v1, Lcom/byazt/yk/w;->o:Z

    invoke-virtual {v0, v5}, Lcom/byazt/fu/DownloadInfo;->setIsRwConcurrent(Z)V

    .line 14
    iget-object v0, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/fu/DownloadInfo;->getOpenLimitSpeed()Z

    move-result v0

    iput-boolean v0, v1, Lcom/byazt/yk/w;->hp:Z

    .line 15
    sget-wide v14, Lcom/byazt/oy/w;->j:J

    .line 16
    sget-wide v16, Lcom/byazt/oy/w;->w:J

    const-wide/16 v18, 0x3e8

    .line 17
    div-long v18, v18, v16

    div-long v14, v14, v18

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v20, v29

    move-wide/from16 v22, v20

    .line 19
    :goto_0
    invoke-direct {v1}, Lcom/byazt/yk/w;->a()Z

    move-result v0
    :try_end_4
    .catch Lcom/byazt/io/BaseException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0}, Lcom/byazt/ip/q;->j()V

    :cond_1
    if-eqz v4, :cond_2

    .line 22
    invoke-interface {v4}, Lcom/byazt/zd/l;->l()V

    .line 23
    :cond_2
    :try_start_5
    iget-boolean v0, v1, Lcom/byazt/yk/w;->ec:Z

    if-eqz v0, :cond_4

    .line 24
    iget-object v2, v1, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 25
    :try_start_6
    iget-boolean v0, v1, Lcom/byazt/yk/w;->zy:Z

    if-nez v0, :cond_3

    .line 26
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 27
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_3

    .line 28
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 29
    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 30
    :cond_4
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 31
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_5

    .line 32
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 33
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    new-array v2, v11, [Ljava/io/Closeable;

    aput-object v0, v2, v12

    invoke-static {v2}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/byazt/yk/w;->ud:J

    move/from16 v21, v10

    .line 35
    :goto_4
    iget-object v10, v1, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    iget-object v11, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    iget-object v12, v1, Lcom/byazt/yk/w;->j:Ljava/lang/String;

    iget-object v13, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    iget-boolean v14, v1, Lcom/byazt/yk/w;->jl:Z

    iget-boolean v15, v1, Lcom/byazt/yk/w;->zy:Z

    iget-object v0, v1, Lcom/byazt/yk/w;->gu:Lcom/byazt/io/BaseException;

    iget-wide v2, v1, Lcom/byazt/yk/w;->v:J

    iget-wide v4, v1, Lcom/byazt/yk/w;->u:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/byazt/yk/w;->ud:J

    iget-wide v4, v1, Lcom/byazt/yk/w;->d:J

    iget-wide v6, v1, Lcom/byazt/yk/w;->wv:J

    iget-wide v8, v1, Lcom/byazt/yk/w;->hq:J

    const/16 v28, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v19, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-static/range {v10 .. v28}, Lcom/byazt/no/hp;->hp(Lcom/byazt/jb/hp;Lcom/byazt/fu/DownloadInfo;Ljava/lang/String;Lcom/byazt/ip/q;ZZLcom/byazt/io/BaseException;JJZJJJLorg/json/JSONObject;)V

    return-void

    .line 36
    :goto_5
    iget-object v2, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    new-array v3, v11, [Ljava/io/Closeable;

    aput-object v2, v3, v12

    invoke-static {v3}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    throw v0

    :cond_6
    move-wide/from16 v24, v20

    move/from16 v21, v10

    if-eqz v21, :cond_7

    .line 37
    :try_start_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24
    :try_end_8
    .catch Lcom/byazt/io/BaseException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-wide/from16 v33, v2

    move-object v13, v4

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v13, v4

    move-wide/from16 v26, v8

    goto/16 :goto_21

    .line 38
    :cond_7
    :goto_6
    :try_start_9
    invoke-interface {v4}, Lcom/byazt/zd/l;->hp()Lcom/byazt/rc/hp;

    move-result-object v0
    :try_end_9
    .catch Lcom/byazt/io/BaseException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v21, :cond_8

    .line 39
    :try_start_a
    iget-wide v11, v1, Lcom/byazt/yk/w;->d:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    sub-long v26, v26, v24

    add-long v11, v11, v26

    iput-wide v11, v1, Lcom/byazt/yk/w;->d:J
    :try_end_a
    .catch Lcom/byazt/io/BaseException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 40
    :cond_8
    :try_start_b
    iget v11, v0, Lcom/byazt/rc/hp;->jx:I
    :try_end_b
    .catch Lcom/byazt/io/BaseException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-eq v11, v13, :cond_14

    .line 41
    :try_start_c
    iget-object v12, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v12}, Lcom/byazt/fu/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v12
    :try_end_c
    .catch Lcom/byazt/io/BaseException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-nez v12, :cond_9

    move-wide/from16 v31, v6

    :try_start_d
    iget-wide v5, v1, Lcom/byazt/yk/w;->vv:J

    iget-wide v12, v1, Lcom/byazt/yk/w;->v:J
    :try_end_d
    .catch Lcom/byazt/io/BaseException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-wide/from16 v26, v8

    :try_start_e
    iget-wide v7, v1, Lcom/byazt/yk/w;->u:J

    sub-long/2addr v12, v7

    cmp-long v5, v5, v12

    if-lez v5, :cond_a

    iget-wide v5, v1, Lcom/byazt/yk/w;->vv:J

    iget-wide v7, v1, Lcom/byazt/yk/w;->v:J

    iget-wide v12, v1, Lcom/byazt/yk/w;->u:J

    sub-long/2addr v7, v12

    int-to-long v12, v11

    add-long/2addr v7, v12

    cmp-long v5, v5, v7

    if-gez v5, :cond_a

    .line 42
    iget-wide v5, v1, Lcom/byazt/yk/w;->vv:J

    iget-wide v7, v1, Lcom/byazt/yk/w;->v:J

    iget-wide v11, v1, Lcom/byazt/yk/w;->u:J

    sub-long/2addr v7, v11

    sub-long/2addr v5, v7

    long-to-int v11, v5

    goto :goto_b

    :catchall_3
    move-exception v0

    :goto_7
    move-wide/from16 v33, v2

    :goto_8
    move-object v13, v4

    goto/16 :goto_16

    :catch_1
    move-exception v0

    :goto_9
    move-object v13, v4

    goto/16 :goto_21

    :catchall_4
    move-exception v0

    :goto_a
    move-wide/from16 v26, v8

    goto :goto_7

    :catch_2
    move-exception v0

    move-wide/from16 v26, v8

    goto :goto_9

    :cond_9
    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    :cond_a
    :goto_b
    if-eqz v21, :cond_b

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-wide/from16 v24, v5

    .line 44
    :cond_b
    iget-object v5, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    iget-object v6, v0, Lcom/byazt/rc/hp;->hp:[B

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12, v11}, Lcom/byazt/fu/w;->hp([BII)V

    if-eqz v21, :cond_c

    .line 45
    iget-wide v6, v1, Lcom/byazt/yk/w;->wv:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v12, v12, v24

    add-long/2addr v6, v12

    iput-wide v6, v1, Lcom/byazt/yk/w;->wv:J

    .line 46
    :cond_c
    invoke-interface {v4, v0}, Lcom/byazt/zd/l;->hp(Lcom/byazt/rc/hp;)V

    .line 47
    iget-wide v6, v1, Lcom/byazt/yk/w;->v:J

    int-to-long v11, v11

    add-long/2addr v6, v11

    iput-wide v6, v1, Lcom/byazt/yk/w;->v:J

    add-long v22, v22, v11

    .line 48
    iget-object v6, v1, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    monitor-enter v6
    :try_end_e
    .catch Lcom/byazt/io/BaseException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 49
    :try_start_f
    iget-boolean v0, v1, Lcom/byazt/yk/w;->ec:Z

    if-eqz v0, :cond_d

    .line 50
    iget-boolean v0, v1, Lcom/byazt/yk/w;->zy:Z

    if-nez v0, :cond_e

    goto :goto_c

    :catchall_5
    move-exception v0

    goto/16 :goto_d

    .line 51
    :cond_d
    :goto_c
    iget-object v0, v1, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    invoke-interface {v0, v11, v12}, Lcom/byazt/ez/a;->l(J)Z

    move-result v0

    .line 52
    iget-object v7, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v7}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 53
    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Z)V

    .line 54
    :cond_e
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 55
    :try_start_10
    iget-object v0, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/fu/DownloadInfo;->isDownloadWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 56
    iget-object v0, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/fu/DownloadInfo;->isPauseReserveWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 57
    iget-object v0, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/fu/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_f

    iget-wide v6, v1, Lcom/byazt/yk/w;->vv:J

    cmp-long v0, v6, v29

    if-ltz v0, :cond_f

    iget-wide v6, v1, Lcom/byazt/yk/w;->vv:J

    iget-wide v11, v1, Lcom/byazt/yk/w;->v:J

    move-wide/from16 v33, v6

    iget-wide v5, v1, Lcom/byazt/yk/w;->u:J

    sub-long/2addr v11, v5

    cmp-long v0, v33, v11

    if-lez v0, :cond_15

    .line 58
    :cond_f
    iget-boolean v0, v1, Lcom/byazt/yk/w;->hp:Z

    if-eqz v0, :cond_11

    cmp-long v0, v22, v14

    if-lez v0, :cond_11

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_10
    .catch Lcom/byazt/io/BaseException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    sub-long v5, v5, v18

    cmp-long v0, v5, v16

    if-gez v0, :cond_10

    sub-long v5, v16, v5

    .line 60
    :try_start_11
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lcom/byazt/io/BaseException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 61
    :catch_3
    :cond_10
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide/from16 v18, v5

    move-wide/from16 v22, v29

    :cond_11
    move/from16 v10, v21

    move-wide/from16 v20, v24

    move-wide/from16 v8, v26

    move-wide/from16 v6, v31

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    goto/16 :goto_0

    .line 62
    :cond_12
    new-instance v0, Lcom/byazt/io/w;

    invoke-direct {v0}, Lcom/byazt/io/w;-><init>()V

    throw v0

    .line 63
    :cond_13
    new-instance v0, Lcom/byazt/io/jx;

    invoke-direct {v0}, Lcom/byazt/io/jx;-><init>()V

    throw v0
    :try_end_12
    .catch Lcom/byazt/io/BaseException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 64
    :goto_d
    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v0
    :try_end_14
    .catch Lcom/byazt/io/BaseException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catchall_6
    move-exception v0

    move-wide/from16 v31, v6

    goto/16 :goto_a

    :cond_14
    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    .line 65
    :cond_15
    iget-object v0, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    if-eqz v0, :cond_16

    .line 66
    invoke-interface {v0}, Lcom/byazt/ip/q;->j()V

    .line 67
    :cond_16
    invoke-interface {v4}, Lcom/byazt/zd/l;->l()V

    .line 68
    :try_start_15
    iget-boolean v0, v1, Lcom/byazt/yk/w;->ec:Z

    if-eqz v0, :cond_18

    .line 69
    iget-object v4, v1, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 70
    :try_start_16
    iget-boolean v0, v1, Lcom/byazt/yk/w;->zy:Z

    if-nez v0, :cond_17

    .line 71
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 72
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_17

    .line 73
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V

    goto :goto_e

    :catchall_7
    move-exception v0

    goto :goto_f

    .line 74
    :cond_17
    :goto_e
    monitor-exit v4

    goto :goto_10

    :goto_f
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    throw v0

    :catchall_8
    move-exception v0

    goto :goto_12

    .line 75
    :cond_18
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 76
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_19

    .line 77
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 78
    :cond_19
    :goto_10
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v26

    iput-wide v4, v1, Lcom/byazt/yk/w;->ud:J

    .line 80
    iget-object v10, v1, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    iget-object v11, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    iget-object v12, v1, Lcom/byazt/yk/w;->j:Ljava/lang/String;

    iget-object v13, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    iget-boolean v14, v1, Lcom/byazt/yk/w;->jl:Z

    iget-boolean v15, v1, Lcom/byazt/yk/w;->zy:Z

    iget-object v0, v1, Lcom/byazt/yk/w;->gu:Lcom/byazt/io/BaseException;

    iget-wide v4, v1, Lcom/byazt/yk/w;->v:J

    iget-wide v6, v1, Lcom/byazt/yk/w;->u:J

    sub-long v17, v4, v6

    iget-wide v4, v1, Lcom/byazt/yk/w;->ud:J

    iget-wide v6, v1, Lcom/byazt/yk/w;->d:J

    iget-wide v8, v1, Lcom/byazt/yk/w;->wv:J

    move-wide/from16 v33, v2

    iget-wide v2, v1, Lcom/byazt/yk/w;->hq:J

    const/16 v28, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v26, v2

    move-wide/from16 v19, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    :goto_11
    invoke-static/range {v10 .. v28}, Lcom/byazt/no/hp;->hp(Lcom/byazt/jb/hp;Lcom/byazt/fu/DownloadInfo;Ljava/lang/String;Lcom/byazt/ip/q;ZZLcom/byazt/io/BaseException;JJZJJJLorg/json/JSONObject;)V

    goto/16 :goto_1f

    .line 81
    :goto_12
    iget-object v2, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    throw v0

    :catchall_9
    move-exception v0

    move-wide/from16 v33, v2

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    goto/16 :goto_8

    :catchall_a
    move-exception v0

    move-wide/from16 v33, v2

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    move/from16 v21, v10

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-wide/from16 v26, v8

    move/from16 v21, v10

    goto/16 :goto_9

    :catchall_b
    move-exception v0

    move-wide/from16 v33, v2

    :goto_13
    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    move/from16 v21, v10

    :goto_14
    const/4 v13, 0x0

    goto :goto_16

    :catch_5
    move-exception v0

    move-wide/from16 v26, v8

    move/from16 v21, v10

    :goto_15
    const/4 v13, 0x0

    goto/16 :goto_21

    :cond_1a
    move-wide/from16 v33, v2

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    move/from16 v21, v10

    .line 82
    :try_start_18
    new-instance v0, Lcom/byazt/io/BaseException;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "inputStream is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x412

    invoke-direct {v0, v3, v2}, Lcom/byazt/io/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_15

    :catch_7
    move-exception v0

    move-wide/from16 v33, v2

    move-wide/from16 v31, v6

    move-wide/from16 v26, v8

    move/from16 v21, v10

    .line 83
    new-instance v2, Lcom/byazt/io/BaseException;

    const/16 v3, 0x41e

    invoke-direct {v2, v3, v0}, Lcom/byazt/io/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_18
    .catch Lcom/byazt/io/BaseException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    :catchall_d
    move-exception v0

    move-wide/from16 v33, v2

    move-wide/from16 v29, v4

    goto :goto_13

    .line 84
    :goto_16
    :try_start_19
    sget-object v2, Lcom/byazt/yk/w;->l:Ljava/lang/String;

    const-string v3, "handleResponse: e = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/nu/hp;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {v1}, Lcom/byazt/yk/w;->a()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    if-eqz v2, :cond_20

    .line 86
    iget-object v0, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    if-eqz v0, :cond_1b

    .line 87
    invoke-interface {v0}, Lcom/byazt/ip/q;->j()V

    :cond_1b
    if-eqz v13, :cond_1c

    .line 88
    invoke-interface {v13}, Lcom/byazt/zd/l;->l()V

    .line 89
    :cond_1c
    :try_start_1a
    iget-boolean v0, v1, Lcom/byazt/yk/w;->ec:Z

    if-eqz v0, :cond_1e

    .line 90
    iget-object v2, v1, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    .line 91
    :try_start_1b
    iget-boolean v0, v1, Lcom/byazt/yk/w;->zy:Z

    if-nez v0, :cond_1d

    .line 92
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 93
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_1d

    .line 94
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V

    goto :goto_17

    :catchall_e
    move-exception v0

    goto :goto_18

    .line 95
    :cond_1d
    :goto_17
    monitor-exit v2

    goto :goto_19

    :goto_18
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    :try_start_1c
    throw v0

    :catchall_f
    move-exception v0

    goto :goto_1b

    .line 96
    :cond_1e
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 97
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_1f

    .line 98
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 99
    :cond_1f
    :goto_19
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    .line 100
    :goto_1a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v26

    iput-wide v2, v1, Lcom/byazt/yk/w;->ud:J

    goto/16 :goto_4

    .line 101
    :goto_1b
    iget-object v2, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    throw v0

    .line 102
    :cond_20
    :try_start_1d
    invoke-static {}, Lcom/byazt/nu/hp;->hp()Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    .line 103
    :try_start_1e
    const-string v2, "ResponseHandler"

    invoke-static {v0, v2}, Lcom/byazt/xq/a;->hp(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1e
    .catch Lcom/byazt/io/BaseException; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    .line 104
    iget-object v0, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    if-eqz v0, :cond_21

    .line 105
    invoke-interface {v0}, Lcom/byazt/ip/q;->j()V

    :cond_21
    if-eqz v13, :cond_22

    .line 106
    invoke-interface {v13}, Lcom/byazt/zd/l;->l()V

    .line 107
    :cond_22
    :try_start_1f
    iget-boolean v0, v1, Lcom/byazt/yk/w;->ec:Z

    if-eqz v0, :cond_24

    .line 108
    iget-object v2, v1, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 109
    :try_start_20
    iget-boolean v0, v1, Lcom/byazt/yk/w;->zy:Z

    if-nez v0, :cond_23

    .line 110
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 111
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_23

    .line 112
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V

    goto :goto_1c

    :catchall_10
    move-exception v0

    goto :goto_1d

    .line 113
    :cond_23
    :goto_1c
    monitor-exit v2

    goto :goto_1e

    :goto_1d
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    :try_start_21
    throw v0

    :catchall_11
    move-exception v0

    goto/16 :goto_20

    .line 114
    :cond_24
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 115
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_25

    .line 116
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    .line 117
    :cond_25
    :goto_1e
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v26

    iput-wide v2, v1, Lcom/byazt/yk/w;->ud:J

    .line 119
    iget-object v10, v1, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    iget-object v11, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    iget-object v12, v1, Lcom/byazt/yk/w;->j:Ljava/lang/String;

    iget-object v13, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    iget-boolean v14, v1, Lcom/byazt/yk/w;->jl:Z

    iget-boolean v15, v1, Lcom/byazt/yk/w;->zy:Z

    iget-object v0, v1, Lcom/byazt/yk/w;->gu:Lcom/byazt/io/BaseException;

    iget-wide v2, v1, Lcom/byazt/yk/w;->v:J

    iget-wide v4, v1, Lcom/byazt/yk/w;->u:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/byazt/yk/w;->ud:J

    iget-wide v4, v1, Lcom/byazt/yk/w;->d:J

    iget-wide v6, v1, Lcom/byazt/yk/w;->wv:J

    iget-wide v8, v1, Lcom/byazt/yk/w;->hq:J

    const/16 v28, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v19, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    goto/16 :goto_11

    .line 120
    :goto_1f
    iget-object v0, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/fu/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_2b

    .line 121
    :cond_26
    iget-wide v2, v1, Lcom/byazt/yk/w;->v:J

    iget-wide v4, v1, Lcom/byazt/yk/w;->u:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v29

    if-ltz v0, :cond_34

    .line 122
    iget-wide v4, v1, Lcom/byazt/yk/w;->vv:J

    cmp-long v0, v4, v29

    if-ltz v0, :cond_34

    iget-wide v4, v1, Lcom/byazt/yk/w;->vv:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_27

    goto/16 :goto_2b

    .line 123
    :cond_27
    new-instance v0, Lcom/byazt/io/BaseException;

    const-string v4, "handle data length[%d] != content length[%d] downloadChunkContentLen[%d], range[%d, %d) , current offset[%d] , handle start from %d"

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v2, v1, Lcom/byazt/yk/w;->vv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 125
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v2, v1, Lcom/byazt/yk/w;->xs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v2, v1, Lcom/byazt/yk/w;->v:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v2, v1, Lcom/byazt/yk/w;->u:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 126
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x41b

    invoke-direct {v0, v3, v2}, Lcom/byazt/io/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 127
    :goto_20
    iget-object v2, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    throw v0

    :catchall_12
    move-exception v0

    goto/16 :goto_26

    :catch_8
    move-exception v0

    .line 128
    :try_start_22
    iput-object v0, v1, Lcom/byazt/yk/w;->gu:Lcom/byazt/io/BaseException;

    .line 129
    throw v0

    .line 130
    :goto_21
    sget-object v2, Lcom/byazt/yk/w;->l:Ljava/lang/String;

    const-string v3, "handleResponse: BaseException e = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/nu/hp;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, v1, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    const-string v3, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v3}, Lcom/byazt/jb/hp;->hp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 132
    invoke-direct {v1}, Lcom/byazt/yk/w;->a()Z

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    if-eqz v2, :cond_2d

    .line 133
    iget-object v0, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    if-eqz v0, :cond_28

    .line 134
    invoke-interface {v0}, Lcom/byazt/ip/q;->j()V

    :cond_28
    if-eqz v13, :cond_29

    .line 135
    invoke-interface {v13}, Lcom/byazt/zd/l;->l()V

    .line 136
    :cond_29
    :try_start_23
    iget-boolean v0, v1, Lcom/byazt/yk/w;->ec:Z

    if-eqz v0, :cond_2b

    .line 137
    iget-object v2, v1, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    .line 138
    :try_start_24
    iget-boolean v0, v1, Lcom/byazt/yk/w;->zy:Z

    if-nez v0, :cond_2a

    .line 139
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 140
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_2a

    .line 141
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V

    goto :goto_22

    :catchall_13
    move-exception v0

    goto :goto_23

    .line 142
    :cond_2a
    :goto_22
    monitor-exit v2

    goto :goto_24

    :goto_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    :try_start_25
    throw v0

    :catchall_14
    move-exception v0

    goto :goto_25

    .line 143
    :cond_2b
    iget-object v0, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v0}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 144
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v0, :cond_2c

    .line 145
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    .line 146
    :cond_2c
    :goto_24
    iget-object v0, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    goto/16 :goto_1a

    :goto_25
    iget-object v2, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    throw v0

    .line 147
    :cond_2d
    :try_start_26
    invoke-static {}, Lcom/byazt/nu/hp;->hp()Z

    .line 148
    iput-object v0, v1, Lcom/byazt/yk/w;->gu:Lcom/byazt/io/BaseException;

    .line 149
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    .line 150
    :goto_26
    iget-object v2, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    if-eqz v2, :cond_2e

    .line 151
    invoke-interface {v2}, Lcom/byazt/ip/q;->j()V

    :cond_2e
    if-eqz v13, :cond_2f

    .line 152
    invoke-interface {v13}, Lcom/byazt/zd/l;->l()V

    .line 153
    :cond_2f
    :try_start_27
    iget-boolean v2, v1, Lcom/byazt/yk/w;->ec:Z

    if-eqz v2, :cond_31

    .line 154
    iget-object v2, v1, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    .line 155
    :try_start_28
    iget-boolean v3, v1, Lcom/byazt/yk/w;->zy:Z

    if-nez v3, :cond_30

    .line 156
    iget-object v3, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v3}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 157
    iget-object v3, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v3, :cond_30

    .line 158
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V

    goto :goto_27

    :catchall_15
    move-exception v0

    goto :goto_28

    .line 159
    :cond_30
    :goto_27
    monitor-exit v2

    goto :goto_29

    :goto_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_15

    :try_start_29
    throw v0

    :catchall_16
    move-exception v0

    goto :goto_2a

    .line 160
    :cond_31
    iget-object v2, v1, Lcom/byazt/yk/w;->s:Lcom/byazt/au/gu;

    invoke-direct {v1, v2}, Lcom/byazt/yk/w;->hp(Lcom/byazt/yk/e;)V

    .line 161
    iget-object v2, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    if-eqz v2, :cond_32

    .line 162
    invoke-direct {v1}, Lcom/byazt/yk/w;->s()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    .line 163
    :cond_32
    :goto_29
    iget-object v2, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v26

    iput-wide v2, v1, Lcom/byazt/yk/w;->ud:J

    .line 165
    iget-object v10, v1, Lcom/byazt/yk/w;->sz:Lcom/byazt/jb/hp;

    iget-object v11, v1, Lcom/byazt/yk/w;->jx:Lcom/byazt/fu/DownloadInfo;

    iget-object v12, v1, Lcom/byazt/yk/w;->j:Ljava/lang/String;

    iget-object v13, v1, Lcom/byazt/yk/w;->a:Lcom/byazt/ip/q;

    iget-boolean v14, v1, Lcom/byazt/yk/w;->jl:Z

    iget-boolean v15, v1, Lcom/byazt/yk/w;->zy:Z

    iget-object v2, v1, Lcom/byazt/yk/w;->gu:Lcom/byazt/io/BaseException;

    iget-wide v3, v1, Lcom/byazt/yk/w;->v:J

    iget-wide v5, v1, Lcom/byazt/yk/w;->u:J

    sub-long v17, v3, v5

    iget-wide v3, v1, Lcom/byazt/yk/w;->ud:J

    iget-wide v5, v1, Lcom/byazt/yk/w;->d:J

    iget-wide v7, v1, Lcom/byazt/yk/w;->wv:J

    move-object/from16 v16, v2

    move-wide/from16 v19, v3

    iget-wide v2, v1, Lcom/byazt/yk/w;->hq:J

    const/16 v28, 0x0

    move-wide/from16 v26, v2

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    invoke-static/range {v10 .. v28}, Lcom/byazt/no/hp;->hp(Lcom/byazt/jb/hp;Lcom/byazt/fu/DownloadInfo;Ljava/lang/String;Lcom/byazt/ip/q;ZZLcom/byazt/io/BaseException;JJZJJJLorg/json/JSONObject;)V

    throw v0

    .line 166
    :goto_2a
    iget-object v2, v1, Lcom/byazt/yk/w;->e:Lcom/byazt/fu/w;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/byazt/xq/a;->hp([Ljava/io/Closeable;)V

    throw v0

    .line 167
    :cond_33
    new-instance v0, Lcom/byazt/io/a;

    const/16 v2, 0x3ec

    const-string v3, "the content-length is 0"

    invoke-direct {v0, v2, v3}, Lcom/byazt/io/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_34
    :goto_2b
    return-void
.end method

.method public jx()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yk/w;->zy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/yk/w;->k:Lcom/byazt/ez/a;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_0
    iput-boolean v1, p0, Lcom/byazt/yk/w;->zy:Z

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-direct {p0}, Lcom/byazt/yk/w;->eb()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v1
.end method

.method public l()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/yk/w;->jl:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/yk/w;->jl:Z

    .line 4
    invoke-direct {p0}, Lcom/byazt/yk/w;->eb()V

    return-void
.end method

.method public w()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/yk/w;->nu:J

    .line 2
    .line 3
    return-wide v0
.end method
