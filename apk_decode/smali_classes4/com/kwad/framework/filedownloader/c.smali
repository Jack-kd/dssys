.class public final Lcom/kwad/framework/filedownloader/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/a;
.implements Lcom/kwad/framework/filedownloader/a$a;
.implements Lcom/kwad/framework/filedownloader/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/c$a;
    }
.end annotation


# instance fields
.field private final ayW:Lcom/kwad/framework/filedownloader/x;

.field private final ayX:Lcom/kwad/framework/filedownloader/x$a;

.field private ayY:I

.field private ayZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private aza:Ljava/lang/String;

.field private azb:Ljava/lang/String;

.field private azc:Z

.field private azd:Lcom/kwad/framework/filedownloader/d/b;

.field private aze:Lcom/kwad/framework/filedownloader/i;

.field private azf:Ljava/lang/Object;

.field private azg:I

.field private azh:Z

.field private azi:Z

.field private azj:I

.field private azk:I

.field private azl:Z

.field volatile azm:I

.field private azn:Z

.field private final azo:Ljava/lang/Object;

.field private final azp:Ljava/lang/Object;

.field private volatile azq:Z

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/kwad/framework/filedownloader/c;->azg:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azh:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azi:Z

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    iput v1, p0, Lcom/kwad/framework/filedownloader/c;->azj:I

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    iput v1, p0, Lcom/kwad/framework/filedownloader/c;->azk:I

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azl:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/kwad/framework/filedownloader/c;->azm:I

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azn:Z

    .line 24
    .line 25
    new-instance v1, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/c;->azp:Ljava/lang/Object;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azq:Z

    .line 33
    .line 34
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c;->mUrl:Ljava/lang/String;

    .line 35
    .line 36
    new-instance p1, Ljava/lang/Object;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c;->azo:Ljava/lang/Object;

    .line 42
    .line 43
    new-instance v0, Lcom/kwad/framework/filedownloader/d;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lcom/kwad/framework/filedownloader/d;-><init>(Lcom/kwad/framework/filedownloader/d$a;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayX:Lcom/kwad/framework/filedownloader/x$a;

    .line 51
    .line 52
    return-void
.end method

.method private AZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->AH()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method private Ba()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/c;->AZ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->isRunning()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again."

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->Ay()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->AS()V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->Bg()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    return v0
.end method

.method private Bb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azd:Lcom/kwad/framework/filedownloader/d/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azp:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/c;->azd:Lcom/kwad/framework/filedownloader/d/b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/framework/filedownloader/d/b;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/kwad/framework/filedownloader/d/b;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/c;->azd:Lcom/kwad/framework/filedownloader/d/b;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/kwad/framework/filedownloader/c;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/kwad/framework/filedownloader/c;->azn:Z

    return p1
.end method


# virtual methods
.method public final AA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/c;->azk:I

    .line 2
    .line 3
    return v0
.end method

.method public final AB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azc:Z

    .line 2
    .line 3
    return v0
.end method

.method public final AC()Lcom/kwad/framework/filedownloader/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->aze:Lcom/kwad/framework/filedownloader/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final AD()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getSmallFileSoFarBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final AE()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->Bh()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final AF()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getSmallFileTotalBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final AG()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->getTotalBytes()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final AH()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->AH()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final AI()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azl:Z

    .line 2
    .line 3
    return v0
.end method

.method public final AJ()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->AJ()Ljava/lang/Throwable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final AK()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/c;->azg:I

    .line 2
    .line 3
    return v0
.end method

.method public final AL()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->AL()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final AM()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azh:Z

    .line 2
    .line 3
    return v0
.end method

.method public final AN()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->AN()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final AO()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azi:Z

    .line 2
    .line 3
    return v0
.end method

.method public final AP()Lcom/kwad/framework/filedownloader/a;
    .locals 0

    return-object p0
.end method

.method public final AQ()Lcom/kwad/framework/filedownloader/x$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayX:Lcom/kwad/framework/filedownloader/x$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final AR()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/c;->azm:I

    .line 2
    .line 3
    return v0
.end method

.method public final AS()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->AC()Lcom/kwad/framework/filedownloader/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->AC()Lcom/kwad/framework/filedownloader/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    iput v0, p0, Lcom/kwad/framework/filedownloader/c;->azm:I

    .line 21
    .line 22
    return-void
.end method

.method public final AT()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azq:Z

    .line 2
    .line 3
    return v0
.end method

.method public final AU()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azq:Z

    .line 3
    .line 4
    return-void
.end method

.method public final AV()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/c;->Ba()I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final AW()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayZ:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

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

.method public final Aw()Lcom/kwad/framework/filedownloader/a$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/kwad/framework/filedownloader/c$a;-><init>(Lcom/kwad/framework/filedownloader/c;B)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final Ax()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "This task[%d] is running, if you want start the same task, please create a new one by FileDownloader#create"

    .line 21
    .line 22
    invoke-static {p0, v2, v0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    iput v1, p0, Lcom/kwad/framework/filedownloader/c;->azm:I

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/kwad/framework/filedownloader/c;->azn:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/kwad/framework/filedownloader/c;->azq:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->reset()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0
.end method

.method public final Ay()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/c;->azm:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final Az()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/c;->azj:I

    .line 2
    .line 3
    return v0
.end method

.method public final Bc()Lcom/kwad/framework/filedownloader/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azd:Lcom/kwad/framework/filedownloader/d/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Bd()Lcom/kwad/framework/filedownloader/a$a;
    .locals 0

    return-object p0
.end method

.method public final Be()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayZ:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a(Lcom/kwad/framework/filedownloader/i;)Lcom/kwad/framework/filedownloader/a;
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c;->aze:Lcom/kwad/framework/filedownloader/i;

    .line 3
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "setListener %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final bT(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/kwad/framework/filedownloader/c;->c(Ljava/lang/String;Z)Lcom/kwad/framework/filedownloader/a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final bU(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azd:Lcom/kwad/framework/filedownloader/d/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azp:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/c;->azd:Lcom/kwad/framework/filedownloader/d/b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azd:Lcom/kwad/framework/filedownloader/d/b;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/d/b;->cf(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final bs(Z)Lcom/kwad/framework/filedownloader/a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/framework/filedownloader/c;->azl:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final bt(Z)Lcom/kwad/framework/filedownloader/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/framework/filedownloader/c;->azh:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final bu(Z)Lcom/kwad/framework/filedownloader/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/framework/filedownloader/c;->azi:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Ljava/lang/String;Z)Lcom/kwad/framework/filedownloader/a;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c;->aza:Ljava/lang/String;

    .line 2
    .line 3
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "setPath %s"

    .line 8
    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-boolean p2, p0, Lcom/kwad/framework/filedownloader/c;->azc:Z

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c;->azb:Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance p2, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c;->azb:Ljava/lang/String;

    .line 34
    .line 35
    return-object p0
.end method

.method public final cancel()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->pause()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final cp(I)Lcom/kwad/framework/filedownloader/a;
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/kwad/framework/filedownloader/c;->azg:I

    .line 3
    .line 4
    return-object p0
.end method

.method public final cq(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final free()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->free()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azq:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/c;->ayY:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->aza:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->mUrl:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->mUrl:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/c;->aza:Ljava/lang/String;

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/kwad/framework/filedownloader/c;->azc:Z

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/kwad/framework/filedownloader/f/f;->g(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/kwad/framework/filedownloader/c;->ayY:I

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->aza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSmallFileSoFarBytes()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->Bh()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const v0, 0x7fffffff

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->Bh()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    long-to-int v0, v0

    .line 25
    return v0
.end method

.method public final getSmallFileTotalBytes()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->getTotalBytes()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const v0, 0x7fffffff

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->getTotalBytes()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    long-to-int v0, v0

    .line 25
    return v0
.end method

.method public final getSpeed()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/s$a;->getSpeed()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getStatusUpdateTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/x;->getStatusUpdateTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azf:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTargetFilePath()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->AB()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getFilename()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/kwad/framework/filedownloader/f/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->mUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Lcom/kwad/framework/filedownloader/a;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c;->azf:Ljava/lang/Object;

    .line 2
    .line 3
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "setTag %s"

    .line 8
    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public final isOver()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->AH()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/d/d;->cX(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/r;->BG()Lcom/kwad/framework/filedownloader/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/r;->BK()Lcom/kwad/framework/filedownloader/v;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lcom/kwad/framework/filedownloader/v;->d(Lcom/kwad/framework/filedownloader/a$a;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->AH()B

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/d/d;->cY(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public final pause()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/c;->ayW:Lcom/kwad/framework/filedownloader/x;

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/x;->pause()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c;->azb:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final start()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/c;->azn:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/c;->Ba()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "If you start the task manually, it means this task doesn\'t belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn\'t belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that\'s all. In other words, If this task doesn\'t belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/c;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "%d@%s"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/c;->Bb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c;->azd:Lcom/kwad/framework/filedownloader/d/b;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/kwad/framework/filedownloader/d/b;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
