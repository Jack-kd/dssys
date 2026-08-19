.class public Lorg/eclipse/jetty/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static o:J = 0xe10L


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/text/SimpleDateFormat;

.field public d:Ljava/lang/String;

.field public e:Ljava/text/SimpleDateFormat;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/util/Locale;

.field public n:Ljava/text/DateFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lorg/eclipse/jetty/util/h;->i:J

    .line 3
    iput-wide v0, p0, Lorg/eclipse/jetty/util/h;->j:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/eclipse/jetty/util/h;->k:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->l:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->m:Ljava/util/Locale;

    .line 7
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->n:Ljava/text/DateFormatSymbols;

    .line 8
    iput-object p1, p0, Lorg/eclipse/jetty/util/h;->a:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/h;->e(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lorg/eclipse/jetty/util/h;->i:J

    .line 12
    iput-wide v0, p0, Lorg/eclipse/jetty/util/h;->j:J

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lorg/eclipse/jetty/util/h;->k:I

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->l:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->n:Ljava/text/DateFormatSymbols;

    .line 16
    iput-object p1, p0, Lorg/eclipse/jetty/util/h;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lorg/eclipse/jetty/util/h;->m:Ljava/util/Locale;

    .line 18
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/h;->e(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)Ljava/lang/String;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    .line 4
    :try_start_0
    div-long v0, p1, v0

    .line 5
    .line 6
    iget-wide v2, p0, Lorg/eclipse/jetty/util/h;->j:J

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-ltz v4, :cond_4

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    if-lez v4, :cond_0

    .line 17
    .line 18
    sget-wide v4, Lorg/eclipse/jetty/util/h;->o:J

    .line 19
    .line 20
    add-long/2addr v4, v2

    .line 21
    cmp-long v4, v0, v4

    .line 22
    .line 23
    if-lez v4, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    cmp-long v2, v2, v0

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lorg/eclipse/jetty/util/h;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object p1

    .line 36
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/Date;

    .line 37
    .line 38
    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 39
    .line 40
    .line 41
    const-wide/16 p1, 0x3c

    .line 42
    .line 43
    div-long v3, v0, p1

    .line 44
    .line 45
    iget-wide v5, p0, Lorg/eclipse/jetty/util/h;->i:J

    .line 46
    .line 47
    cmp-long v5, v5, v3

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    iput-wide v3, p0, Lorg/eclipse/jetty/util/h;->i:J

    .line 52
    .line 53
    iget-object v3, p0, Lorg/eclipse/jetty/util/h;->e:Ljava/text/SimpleDateFormat;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, p0, Lorg/eclipse/jetty/util/h;->f:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "ss"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-object v3, p0, Lorg/eclipse/jetty/util/h;->f:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, p0, Lorg/eclipse/jetty/util/h;->g:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v3, p0, Lorg/eclipse/jetty/util/h;->f:Ljava/lang/String;

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x2

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, p0, Lorg/eclipse/jetty/util/h;->h:Ljava/lang/String;

    .line 85
    .line 86
    :cond_2
    iput-wide v0, p0, Lorg/eclipse/jetty/util/h;->j:J

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    iget-object v3, p0, Lorg/eclipse/jetty/util/h;->f:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lorg/eclipse/jetty/util/h;->g:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    rem-long/2addr v0, p1

    .line 105
    long-to-int p1, v0

    .line 106
    const/16 p2, 0xa

    .line 107
    .line 108
    if-ge p1, p2, :cond_3

    .line 109
    .line 110
    const/16 p2, 0x30

    .line 111
    .line 112
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lorg/eclipse/jetty/util/h;->h:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lorg/eclipse/jetty/util/h;->l:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return-object p1

    .line 131
    :cond_4
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/Date;

    .line 132
    .line 133
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lorg/eclipse/jetty/util/h;->c:Ljava/text/SimpleDateFormat;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    monitor-exit p0

    .line 143
    return-object p1

    .line 144
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/util/h;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    rem-long v2, v0, v2

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    iput v2, p0, Lorg/eclipse/jetty/util/h;->k:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/h;->a(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ss.SSS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "ss"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\'ss\'"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->d:Ljava/lang/String;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "ms not supported"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public declared-synchronized e(Ljava/util/TimeZone;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/h;->f(Ljava/util/TimeZone;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/util/h;->m:Ljava/util/Locale;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/eclipse/jetty/util/h;->m:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->c:Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/eclipse/jetty/util/h;->d:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lorg/eclipse/jetty/util/h;->m:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->e:Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/h;->n:Ljava/text/DateFormatSymbols;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 39
    .line 40
    iget-object v1, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lorg/eclipse/jetty/util/h;->n:Ljava/text/DateFormatSymbols;

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->c:Ljava/text/SimpleDateFormat;

    .line 48
    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 50
    .line 51
    iget-object v1, p0, Lorg/eclipse/jetty/util/h;->d:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v2, p0, Lorg/eclipse/jetty/util/h;->n:Ljava/text/DateFormatSymbols;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->e:Ljava/text/SimpleDateFormat;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 62
    .line 63
    iget-object v1, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->c:Ljava/text/SimpleDateFormat;

    .line 69
    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 71
    .line 72
    iget-object v1, p0, Lorg/eclipse/jetty/util/h;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lorg/eclipse/jetty/util/h;->e:Ljava/text/SimpleDateFormat;

    .line 78
    .line 79
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/h;->c:Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/h;->e:Ljava/text/SimpleDateFormat;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v0, -0x1

    .line 90
    .line 91
    iput-wide v0, p0, Lorg/eclipse/jetty/util/h;->j:J

    .line 92
    .line 93
    iput-wide v0, p0, Lorg/eclipse/jetty/util/h;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p1
.end method

.method public final declared-synchronized f(Ljava/util/TimeZone;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/h;->a:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "ZZZ"

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lorg/eclipse/jetty/util/h;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lorg/eclipse/jetty/util/h;->a:Ljava/lang/String;

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x3

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v3, p0, Lorg/eclipse/jetty/util/h;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0xa

    .line 40
    .line 41
    add-int/2addr v3, v4

    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, "\'"

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    if-ltz p1, :cond_0

    .line 54
    .line 55
    const/16 v1, 0x2b

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    neg-int p1, p1

    .line 64
    const/16 v1, 0x2d

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :goto_0
    const v1, 0xea60

    .line 70
    .line 71
    .line 72
    div-int/2addr p1, v1

    .line 73
    div-int/lit8 v1, p1, 0x3c

    .line 74
    .line 75
    rem-int/lit8 p1, p1, 0x3c

    .line 76
    .line 77
    const/16 v3, 0x30

    .line 78
    .line 79
    if-ge v1, v4, :cond_1

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    if-ge p1, v4, :cond_2

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const/16 p1, 0x27

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/util/h;->a:Ljava/lang/String;

    .line 111
    .line 112
    iput-object p1, p0, Lorg/eclipse/jetty/util/h;->b:Ljava/lang/String;

    .line 113
    .line 114
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/h;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    monitor-exit p0

    .line 118
    return-void

    .line 119
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p1
.end method
