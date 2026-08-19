.class public final Lcom/kwad/components/core/pfmonitor/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aiq:Lcom/kwad/components/core/pfmonitor/model/e;

.field private final air:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private ais:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final ait:J

.field private final aiu:I

.field private final aiv:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/pfmonitor/model/c;->air:Ljava/util/List;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/kwad/components/core/pfmonitor/model/c;->ais:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/kwad/components/core/pfmonitor/model/c;->t(Ljava/util/List;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/kwad/components/core/pfmonitor/model/c;->ait:J

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-static {p1, p2}, Lcom/kwad/components/core/pfmonitor/model/c;->b(Ljava/util/List;Z)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lcom/kwad/components/core/pfmonitor/model/c;->aiu:I

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-static {p1, p2}, Lcom/kwad/components/core/pfmonitor/model/c;->b(Ljava/util/List;Z)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->aiv:I

    .line 32
    .line 33
    return-void
.end method

.method private static b(Ljava/util/List;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/d;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/kwad/components/core/pfmonitor/model/d;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/kwad/components/core/pfmonitor/model/d;->isDirectory()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-nez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/kwad/components/core/pfmonitor/model/d;->isDirectory()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    return v0
.end method

.method private static t(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/d;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/kwad/components/core/pfmonitor/model/d;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/kwad/components/core/pfmonitor/model/d;->getFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/kwad/components/core/pfmonitor/model/d;->getFile()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    add-long/2addr v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/pfmonitor/model/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->aiq:Lcom/kwad/components/core/pfmonitor/model/e;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScanResult{targetPath=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->aiq:Lcom/kwad/components/core/pfmonitor/model/e;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/kwad/components/core/pfmonitor/model/e;->vv()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x27

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", totalSize="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->ait:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", totalSizeFormat="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->ait:J

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/kwad/components/core/pfmonitor/d;->P(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", fileCount="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->aiu:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", bigFilesCount="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->ais:Ljava/util/List;

    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", directoryCount="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->aiv:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x7d

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method

.method public final vt()Lcom/kwad/components/core/pfmonitor/model/f;
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/core/pfmonitor/model/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/pfmonitor/model/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->aiq:Lcom/kwad/components/core/pfmonitor/model/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/kwad/components/core/pfmonitor/model/e;->vw()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/kwad/components/core/pfmonitor/model/f;->aim:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->aiq:Lcom/kwad/components/core/pfmonitor/model/e;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/kwad/components/core/pfmonitor/model/e;->vv()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/kwad/components/core/pfmonitor/model/f;->aiz:Ljava/lang/String;

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->ait:J

    .line 23
    .line 24
    iput-wide v1, v0, Lcom/kwad/components/core/pfmonitor/model/f;->aiA:J

    .line 25
    .line 26
    return-object v0
.end method

.method public final vu()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/pfmonitor/model/c;->ais:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/kwad/components/core/pfmonitor/model/d;

    .line 23
    .line 24
    :try_start_0
    new-instance v3, Lcom/kwad/components/core/pfmonitor/model/f;

    .line 25
    .line 26
    invoke-direct {v3}, Lcom/kwad/components/core/pfmonitor/model/f;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/kwad/components/core/pfmonitor/model/d;->getFileName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iput-object v4, v3, Lcom/kwad/components/core/pfmonitor/model/f;->aim:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/kwad/components/core/pfmonitor/model/d;->getFile()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iput-object v4, v3, Lcom/kwad/components/core/pfmonitor/model/f;->aiz:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/kwad/components/core/pfmonitor/model/d;->getFile()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    iput-wide v4, v3, Lcom/kwad/components/core/pfmonitor/model/f;->aiA:J

    .line 54
    .line 55
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    invoke-static {v2}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-object v0
.end method
