.class public abstract Lcom/kwad/library/solder/lib/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected aEE:Ljava/io/File;

.field protected aEF:Ljava/lang/String;

.field protected aEG:Ljava/lang/String;

.field private aEH:Z

.field private final aEI:[B

.field private final aEJ:Ljava/lang/String;

.field protected aEK:Lcom/kwad/library/solder/lib/c/b;

.field protected aEj:Lcom/kwad/library/solder/lib/ext/c;

.field protected mVersion:Ljava/lang/String;


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
    new-array v1, v0, [B

    .line 6
    .line 7
    iput-object v1, p0, Lcom/kwad/library/solder/lib/a/a;->aEI:[B

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/library/solder/lib/a/a;->aEH:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/kwad/library/solder/lib/a/a;->aEJ:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/kwad/library/solder/lib/a/a;->aEF:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Lcom/kwad/library/solder/lib/i;->DQ()Lcom/kwad/library/solder/lib/i;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/kwad/library/solder/lib/i;->DK()Lcom/kwad/library/solder/lib/ext/c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/kwad/library/solder/lib/a/a;->aEj:Lcom/kwad/library/solder/lib/ext/c;

    .line 24
    .line 25
    return-void
.end method

.method private DU()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/library/solder/lib/a/a;->aEH:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/library/solder/lib/a/a;->aEI:[B

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_0
    iput-boolean v1, p0, Lcom/kwad/library/solder/lib/a/a;->aEH:Z

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method


# virtual methods
.method public final DV()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/a/a;->aEJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final DW()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/a/a;->aEK:Lcom/kwad/library/solder/lib/c/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/library/solder/lib/c/b;->aFu:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final a(Lcom/kwad/library/solder/lib/c/b;)Lcom/kwad/library/solder/lib/a/a;
    .locals 0
    .param p1    # Lcom/kwad/library/solder/lib/c/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kwad/library/solder/lib/a/a;->aEK:Lcom/kwad/library/solder/lib/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public final cB(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/library/solder/lib/a/a;->mVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final cC(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/library/solder/lib/a/a;->aEG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final cD(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/library/solder/lib/a/a;->aEF:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/a/a;->aEG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/a/a;->mVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isLoaded()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/library/solder/lib/a/a;->aEH:Z

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
    iget-object v0, p0, Lcom/kwad/library/solder/lib/a/a;->aEI:[B

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, p0, Lcom/kwad/library/solder/lib/a/a;->aEH:Z

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public abstract l(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kwad/library/solder/lib/a/a;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/library/solder/lib/a/a;->DU()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Plugin{, ApkPath = \'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/library/solder/lib/a/a;->aEJ:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x27

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x7d

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
