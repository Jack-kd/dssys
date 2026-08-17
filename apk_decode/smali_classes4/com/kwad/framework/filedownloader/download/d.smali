.class public final Lcom/kwad/framework/filedownloader/download/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/download/d$a;
    }
.end annotation


# instance fields
.field private volatile aAD:Ljava/lang/Thread;

.field private volatile aBC:J

.field private final aBQ:Lcom/kwad/framework/filedownloader/download/d$a;

.field private final aBR:I

.field private final aBS:I

.field private final aBT:I

.field private aBU:J

.field private aBV:Landroid/os/HandlerThread;

.field private volatile aBW:Z

.field private final aBX:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile aBY:Z

.field private aBZ:Z

.field private final aBd:Lcom/kwad/framework/filedownloader/b/a;

.field private final aBi:Lcom/kwad/framework/filedownloader/d/c;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/kwad/framework/filedownloader/d/c;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBW:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBC:J

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBX:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBZ:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 22
    .line 23
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/download/b;->Cc()Lcom/kwad/framework/filedownloader/b/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 32
    .line 33
    const/4 p1, 0x5

    .line 34
    if-ge p3, p1, :cond_0

    .line 35
    .line 36
    move p3, p1

    .line 37
    :cond_0
    iput p3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBS:I

    .line 38
    .line 39
    iput p4, p0, Lcom/kwad/framework/filedownloader/download/d;->aBT:I

    .line 40
    .line 41
    new-instance p1, Lcom/kwad/framework/filedownloader/download/d$a;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/kwad/framework/filedownloader/download/d$a;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBQ:Lcom/kwad/framework/filedownloader/download/d$a;

    .line 47
    .line 48
    iput p2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBR:I

    .line 49
    .line 50
    return-void
.end method

.method private CA()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->isChunked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->ah(J)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "sofar[%d] not equal total[%d]"

    .line 62
    .line 63
    invoke-static {v2, v1}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/kwad/framework/filedownloader/download/d;->c(Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    return v0

    .line 75
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 76
    return v0
.end method

.method private CB()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-interface {v0, v2, v3, v4}, Lcom/kwad/framework/filedownloader/b/a;->d(IJ)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/download/d;->c(B)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private Cy()V
    .locals 10

    .line 1
    const-string v0, "delete the temp file(%s) failed, on completed downloading."

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 21
    .line 22
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    const-string v7, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]"

    .line 42
    .line 43
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    filled-new-array {v2, v5, v6}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {p0, v7, v5}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v2

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    new-instance v4, Ljava/io/IOException;

    .line 66
    .line 67
    const-string v7, "Can\'t delete the old file([%s], [%d]), so can\'t replace it with the new downloaded one."

    .line 68
    .line 69
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v7, v2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v4

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 86
    .line 87
    .line 88
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_2

    .line 102
    .line 103
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void

    .line 111
    :cond_3
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    .line 112
    .line 113
    const-string v5, "Can\'t rename the  temp downloaded file(%s) to the target file(%s)"

    .line 114
    .line 115
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v5, v2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_4

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_4

    .line 138
    .line 139
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    throw v2
.end method

.method private Cz()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/d;->Cy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 5
    .line 6
    const/4 v1, -0x3

    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-interface {v0, v2, v3, v4}, Lcom/kwad/framework/filedownloader/b/a;->c(IJ)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-interface {v0, v2}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/download/d;->c(B)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/e;->Dz()Lcom/kwad/framework/filedownloader/f/e;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-boolean v0, v0, Lcom/kwad/framework/filedownloader/f/e;->aDy:Z

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/services/f;->f(Lcom/kwad/framework/filedownloader/d/c;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v0

    .line 19
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v1, :cond_0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 21
    const-string v2, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly."

    invoke-static {p0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 24
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    invoke-interface {p1, v0}, Lcom/kwad/framework/filedownloader/b/a;->cF(I)Z

    .line 25
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    invoke-interface {p1, v0}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    return-void
.end method

.method private a(Ljava/lang/Exception;I)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/download/d;->d(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBQ:Lcom/kwad/framework/filedownloader/download/d$a;

    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/download/d$a;->f(Ljava/lang/Exception;)V

    .line 28
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBQ:Lcom/kwad/framework/filedownloader/download/d$a;

    iget v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBR:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/download/d$a;->cM(I)V

    .line 29
    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 30
    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    invoke-interface {p2, v1, p1}, Lcom/kwad/framework/filedownloader/b/a;->a(ILjava/lang/Throwable;)V

    .line 32
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/download/d;->c(B)V

    return-void
.end method

.method private ac(J)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBZ:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBZ:Z

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-wide v3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBC:J

    .line 11
    .line 12
    sub-long/2addr p1, v3

    .line 13
    iget-wide v3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBU:J

    .line 14
    .line 15
    const-wide/16 v5, -0x1

    .line 16
    .line 17
    cmp-long v0, v3, v5

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBX:Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    iget-wide v5, p0, Lcom/kwad/framework/filedownloader/download/d;->aBU:J

    .line 28
    .line 29
    cmp-long v0, v3, v5

    .line 30
    .line 31
    if-ltz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBS:I

    .line 34
    .line 35
    int-to-long v3, v0

    .line 36
    cmp-long p1, p1, v3

    .line 37
    .line 38
    if-ltz p1, :cond_1

    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    return v2
.end method

.method private b(JZ)V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p3}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/kwad/framework/filedownloader/b/a;->b(IJ)V

    return-void

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBY:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBY:Z

    .line 16
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    :cond_1
    if-eqz p3, :cond_2

    .line 17
    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBC:J

    .line 18
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/download/d;->c(B)V

    .line 19
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBX:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_2
    return-void
.end method

.method private declared-synchronized b(Landroid/os/Message;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBV:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBV:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_2

    .line 9
    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    .line 11
    :cond_3
    :try_start_3
    throw v0

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private c(B)V
    .locals 3

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 2
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 4
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 5
    const-string v0, "High concurrent cause, Already paused and we don\'t need to call-back to Task in here, %d"

    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/kwad/framework/filedownloader/message/e;->CR()Lcom/kwad/framework/filedownloader/message/e;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBQ:Lcom/kwad/framework/filedownloader/download/d$a;

    .line 7
    invoke-static {p1, v1, v2}, Lcom/kwad/framework/filedownloader/message/f;->a(BLcom/kwad/framework/filedownloader/d/c;Lcom/kwad/framework/filedownloader/download/d$a;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/message/e;->s(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method private d(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->isChunked()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/e;->Dz()Lcom/kwad/framework/filedownloader/f/e;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-boolean v1, v1, Lcom/kwad/framework/filedownloader/f/e;->aDx:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v9, p1

    .line 25
    goto :goto_3

    .line 26
    :cond_1
    :goto_0
    instance-of v1, p1, Ljava/io/IOException;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/h;->getAvailableBytes(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    const-wide/16 v1, 0x1000

    .line 46
    .line 47
    cmp-long v1, v3, v1

    .line 48
    .line 49
    if-gtz v1, :cond_0

    .line 50
    .line 51
    new-instance v1, Ljava/io/File;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string v1, "Exception with: free space isn\'t enough, and the target file not exist."

    .line 66
    .line 67
    invoke-static {p0, p1, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .line 72
    :goto_1
    move-wide v7, v0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    goto :goto_1

    .line 79
    :goto_2
    new-instance v2, Lcom/kwad/framework/filedownloader/exception/FileDownloadOutOfSpaceException;

    .line 80
    .line 81
    const-wide/16 v5, 0x1000

    .line 82
    .line 83
    move-object v9, p1

    .line 84
    invoke-direct/range {v2 .. v9}, Lcom/kwad/framework/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJLjava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :goto_3
    return-object v9
.end method

.method private e(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/download/d;->d(Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/database/sqlite/SQLiteFullException;

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    check-cast p1, Landroid/database/sqlite/SQLiteFullException;

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/download/d;->a(Landroid/database/sqlite/SQLiteFullException;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-interface {p1, v1, v0, v3, v4}, Lcom/kwad/framework/filedownloader/b/a;->a(ILjava/lang/Throwable;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    move-object v0, p1

    .line 51
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/download/d;->a(Landroid/database/sqlite/SQLiteFullException;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBQ:Lcom/kwad/framework/filedownloader/download/d$a;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/kwad/framework/filedownloader/download/d$a;->f(Ljava/lang/Exception;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v2}, Lcom/kwad/framework/filedownloader/download/d;->c(B)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private static h(JJ)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    return-wide v3

    .line 10
    :cond_0
    cmp-long v2, p0, v3

    .line 11
    .line 12
    const-wide/16 v3, 0x1

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    return-wide v3

    .line 17
    :cond_1
    add-long/2addr p2, v3

    .line 18
    div-long/2addr p0, p2

    .line 19
    cmp-long p2, p0, v0

    .line 20
    .line 21
    if-gtz p2, :cond_2

    .line 22
    .line 23
    return-wide v3

    .line 24
    :cond_2
    return-wide p0
.end method


# virtual methods
.method public final Cs()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBV:Landroid/os/HandlerThread;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aAD:Ljava/lang/Thread;

    .line 19
    .line 20
    :goto_0
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBW:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    const-wide/16 v2, 0x64

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aAD:Ljava/lang/Thread;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final Ct()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v0, v2}, Lcom/kwad/framework/filedownloader/b/a;->cG(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/download/d;->c(B)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Cu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/download/d;->c(B)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-interface {v0, v1}, Lcom/kwad/framework/filedownloader/b/a;->cB(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Cv()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "source-status-callback"

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBV:Landroid/os/HandlerThread;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBV:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->handler:Landroid/os/Handler;

    .line 27
    .line 28
    return-void
.end method

.method public final Cw()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/d;->CB()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final Cx()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/d;->CA()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/d;->Cz()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final a(Ljava/lang/Exception;IJ)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBX:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 14
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    neg-long p3, p3

    invoke-virtual {v0, p3, p4}, Lcom/kwad/framework/filedownloader/d/c;->ag(J)V

    .line 15
    iget-object p3, p0, Lcom/kwad/framework/filedownloader/download/d;->handler:Landroid/os/Handler;

    if-nez p3, :cond_0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/download/d;->a(Ljava/lang/Exception;I)V

    return-void

    :cond_0
    const/4 p4, 0x5

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p3, p4, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/download/d;->b(Landroid/os/Message;)V

    return-void
.end method

.method public final a(ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->CY()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback onConnected must with precondition succeed, but the etag is changes(%s != %s)"

    filled-new-array {p4, v0}, [Ljava/lang/Object;

    move-result-object p3

    .line 3
    invoke-static {p2, p3}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBQ:Lcom/kwad/framework/filedownloader/download/d$a;

    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/download/d$a;->bw(Z)V

    .line 5
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 6
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p1, p2, p3}, Lcom/kwad/framework/filedownloader/d/c;->ah(J)V

    .line 7
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p1, p4}, Lcom/kwad/framework/filedownloader/d/c;->cg(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p1, p5}, Lcom/kwad/framework/filedownloader/d/c;->ci(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v2

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/kwad/framework/filedownloader/b/a;->a(IJLjava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/download/d;->c(B)V

    .line 11
    iget p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBT:I

    int-to-long p1, p1

    invoke-static {v3, v4, p1, p2}, Lcom/kwad/framework/filedownloader/download/d;->h(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBU:J

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aBY:Z

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/download/d;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBW:Z

    .line 3
    .line 4
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Exception;

    .line 17
    .line 18
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 19
    .line 20
    invoke-direct {p0, v1, p1}, Lcom/kwad/framework/filedownloader/download/d;->a(Ljava/lang/Exception;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-direct {p0, v1, v2, v0}, Lcom/kwad/framework/filedownloader/download/d;->b(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-boolean v3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBW:Z

    .line 34
    .line 35
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aAD:Ljava/lang/Thread;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/d;->aAD:Ljava/lang/Thread;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return v0

    .line 45
    :goto_1
    iput-boolean v3, p0, Lcom/kwad/framework/filedownloader/download/d;->aBW:Z

    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aAD:Ljava/lang/Thread;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aAD:Ljava/lang/Thread;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    throw p1
.end method

.method public final isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBV:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

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

.method public final onProgress(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBX:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/kwad/framework/filedownloader/d/c;->ag(J)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/download/d;->ac(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/d;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/framework/filedownloader/download/d;->b(JZ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/download/d;->b(Landroid/os/Message;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
