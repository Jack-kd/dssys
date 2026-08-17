.class public final Lcom/kwad/sdk/core/video/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aZt:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static aZu:I = -0x1

.field private static final aZv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static aZx:I = 0x0

.field private static amw:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->aZv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method public static HZ()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/video/a/e;->aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/kwad/framework/a/a;->OB:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public static OK()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/core/video/a/e;->aZx:I

    .line 2
    .line 3
    return v0
.end method

.method public static OL()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/video/a/e;->aZt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->aZt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public static a(Landroid/content/Context;ZZZI)Lcom/kwad/sdk/core/video/a/c;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "MediaPlayerImpl"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->HZ()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->OL()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "constructPlayer KwaiMediaPlayer"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/kwad/sdk/core/video/a/d;

    .line 25
    .line 26
    invoke-direct {v0, p4}, Lcom/kwad/sdk/core/video/a/d;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 p4, 0x2

    .line 30
    sput p4, Lcom/kwad/sdk/core/video/a/e;->aZx:I

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/a/d;->bK(Z)V

    .line 33
    .line 34
    .line 35
    :goto_0
    move v7, v2

    .line 36
    goto :goto_2

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    move-object p1, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string p1, "constructPlayer AndroidMediaPlayer"

    .line 41
    .line 42
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/kwad/sdk/core/video/a/b;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/kwad/sdk/core/video/a/b;-><init>()V

    .line 48
    .line 49
    .line 50
    sput v1, Lcom/kwad/sdk/core/video/a/e;->aZx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    const-string p4, "constructPlayer exception, using AndroidMediaPlayer"

    .line 54
    .line 55
    invoke-static {p0, p4, p1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    sget-boolean p0, Lcom/kwad/sdk/core/video/a/e;->amw:Z

    .line 59
    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    sput-boolean v1, Lcom/kwad/sdk/core/video/a/e;->amw:Z

    .line 63
    .line 64
    invoke-static {p1}, Lcom/kwad/sdk/service/d;->gatherException(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    new-instance v0, Lcom/kwad/sdk/core/video/a/b;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/kwad/sdk/core/video/a/b;-><init>()V

    .line 70
    .line 71
    .line 72
    sput v1, Lcom/kwad/sdk/core/video/a/e;->aZx:I

    .line 73
    .line 74
    move v7, v1

    .line 75
    :goto_2
    const-class p0, Lcom/kwad/sdk/service/a/f;

    .line 76
    .line 77
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Lcom/kwad/sdk/service/a/f;

    .line 88
    .line 89
    invoke-interface {p0}, Lcom/kwad/sdk/service/a/f;->Fu()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_2

    .line 94
    .line 95
    move v4, v1

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    move v4, v2

    .line 98
    :goto_3
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->HZ()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->OL()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->getMediaPlayerType()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    move v5, p2

    .line 111
    move v8, p3

    .line 112
    invoke-static/range {v3 .. v9}, Lcom/kwad/sdk/utils/ax;->a(ZZZZZZI)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string p2, "player v="

    .line 119
    .line 120
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string p2, "KwaiPlayHelper"

    .line 135
    .line 136
    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/c;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget p1, Lcom/kwad/sdk/core/video/a/e;->aZu:I

    .line 140
    .line 141
    if-eq p1, p0, :cond_3

    .line 142
    .line 143
    sput p0, Lcom/kwad/sdk/core/video/a/e;->aZu:I

    .line 144
    .line 145
    invoke-static {p0}, Lcom/kwad/sdk/core/video/a/e;->eL(I)V

    .line 146
    .line 147
    .line 148
    :cond_3
    return-object v0
.end method

.method private static eL(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/report/n;

    .line 2
    .line 3
    const-wide/16 v1, 0x27e4

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/n;-><init>(J)V

    .line 6
    .line 7
    .line 8
    iput p0, v0, Lcom/kwad/sdk/core/report/n;->aVZ:I

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/n;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
