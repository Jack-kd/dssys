.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJI)Z
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-object p1, v0

    .line 33
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget v0, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->d:I

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iput p6, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->d:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p4

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    cmp-long p6, p4, v0

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-lez p6, :cond_4

    .line 51
    .line 52
    iget-wide v3, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J

    .line 53
    .line 54
    iget p6, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->d:I

    .line 55
    .line 56
    if-nez p6, :cond_3

    .line 57
    .line 58
    const/16 p6, 0x7ec

    .line 59
    .line 60
    :cond_3
    int-to-long v5, p6

    .line 61
    add-long/2addr v5, v3

    .line 62
    cmp-long p6, p2, v5

    .line 63
    .line 64
    if-lez p6, :cond_4

    .line 65
    .line 66
    const-wide/16 v5, 0x4

    .line 67
    .line 68
    div-long/2addr p4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const-wide/16 v5, 0x3

    .line 70
    .line 71
    mul-long/2addr p4, v5

    .line 72
    cmp-long p4, p2, p4

    .line 73
    .line 74
    if-lez p4, :cond_4

    .line 75
    .line 76
    iput-wide p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->a:J

    .line 77
    .line 78
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide p2

    .line 82
    iput-wide p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J

    .line 83
    .line 84
    return v2

    .line 85
    :cond_4
    :try_start_1
    iget-wide p4, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->a:J

    .line 86
    .line 87
    cmp-long p4, p4, v0

    .line 88
    .line 89
    const/4 p5, 0x0

    .line 90
    if-nez p4, :cond_5

    .line 91
    .line 92
    iget-boolean p6, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->c:Z

    .line 93
    .line 94
    if-eqz p6, :cond_5

    .line 95
    .line 96
    iput-boolean p5, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    iput-wide p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->a:J

    .line 99
    .line 100
    iget-wide v0, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J

    .line 101
    .line 102
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide p2

    .line 106
    iput-wide p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J

    .line 107
    .line 108
    return p5

    .line 109
    :cond_5
    if-nez p4, :cond_6

    .line 110
    .line 111
    :try_start_2
    iget-wide v0, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    cmp-long p4, p2, v0

    .line 114
    .line 115
    if-lez p4, :cond_6

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    move v2, p5

    .line 119
    :goto_2
    iput-wide p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->a:J

    .line 120
    .line 121
    iget-wide p4, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J

    .line 122
    .line 123
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide p2

    .line 127
    iput-wide p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J

    .line 128
    .line 129
    return v2

    .line 130
    :goto_3
    iput-wide p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->a:J

    .line 131
    .line 132
    iget-wide p5, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J

    .line 133
    .line 134
    invoke-static {p5, p6, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide p2

    .line 138
    iput-wide p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g$a;->b:J

    .line 139
    .line 140
    throw p4
.end method
