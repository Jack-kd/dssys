.class public final Lcom/kwad/framework/filedownloader/services/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/services/c$a;,
        Lcom/kwad/framework/filedownloader/services/c$b;
    }
.end annotation


# instance fields
.field private final aCV:Lcom/kwad/framework/filedownloader/services/c$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/services/c;->aCV:Lcom/kwad/framework/filedownloader/services/c$b;

    return-void
.end method

.method public constructor <init>(Lcom/kwad/framework/filedownloader/services/c$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/services/c;->aCV:Lcom/kwad/framework/filedownloader/services/c$b;

    return-void
.end method

.method private static Di()Lcom/kwad/framework/filedownloader/f/c$d;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/services/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/services/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static Dj()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/e;->Dz()Lcom/kwad/framework/filedownloader/f/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/kwad/framework/filedownloader/f/e;->aDw:I

    .line 6
    .line 7
    return v0
.end method

.method private static Dk()Lcom/kwad/framework/filedownloader/f/c$e;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/e/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/e/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static Dl()Lcom/kwad/framework/filedownloader/f/c$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/a/c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/a/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static Dm()Lcom/kwad/framework/filedownloader/f/c$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/a/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/a/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final Cd()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/c;->aCV:Lcom/kwad/framework/filedownloader/services/c$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Dj()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/kwad/framework/filedownloader/services/c$b;->aCX:Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v1, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d"

    .line 19
    .line 20
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {p0, v1, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/f/e;->dd(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_2
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Dj()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method

.method public final Dd()Lcom/kwad/framework/filedownloader/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/c;->aCV:Lcom/kwad/framework/filedownloader/services/c$b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/framework/filedownloader/services/c$b;->aCW:Lcom/kwad/framework/filedownloader/f/c$c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/f/c$c;->Dy()Lcom/kwad/framework/filedownloader/b/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    new-instance v0, Lcom/kwad/framework/filedownloader/b/c;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/b/c;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_2
    :goto_0
    new-instance v0, Lcom/kwad/framework/filedownloader/b/c;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/b/c;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final De()Lcom/kwad/framework/filedownloader/f/c$e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/c;->aCV:Lcom/kwad/framework/filedownloader/services/c$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Dk()Lcom/kwad/framework/filedownloader/f/c$e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/kwad/framework/filedownloader/services/c$b;->aCY:Lcom/kwad/framework/filedownloader/f/c$e;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v1, "initial FileDownloader manager with the customize output stream: %s"

    .line 19
    .line 20
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {p0, v1, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Dk()Lcom/kwad/framework/filedownloader/f/c$e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final Df()Lcom/kwad/framework/filedownloader/f/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/c;->aCV:Lcom/kwad/framework/filedownloader/services/c$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Dl()Lcom/kwad/framework/filedownloader/f/c$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/kwad/framework/filedownloader/services/c$b;->aDa:Lcom/kwad/framework/filedownloader/services/c$a;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/services/c$a;->Cg()Lcom/kwad/framework/filedownloader/f/c$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Dl()Lcom/kwad/framework/filedownloader/f/c$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final Dg()Lcom/kwad/framework/filedownloader/f/c$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/c;->aCV:Lcom/kwad/framework/filedownloader/services/c$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Dm()Lcom/kwad/framework/filedownloader/f/c$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/kwad/framework/filedownloader/services/c$b;->aDb:Lcom/kwad/framework/filedownloader/f/c$a;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v1, "initial FileDownloader manager with the customize connection count adapter: %s"

    .line 19
    .line 20
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {p0, v1, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Dm()Lcom/kwad/framework/filedownloader/f/c$a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final Dh()Lcom/kwad/framework/filedownloader/f/c$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/c;->aCV:Lcom/kwad/framework/filedownloader/services/c$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Di()Lcom/kwad/framework/filedownloader/f/c$d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/kwad/framework/filedownloader/services/c$b;->aDc:Lcom/kwad/framework/filedownloader/f/c$d;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v1, "initial FileDownloader manager with the customize id generator: %s"

    .line 19
    .line 20
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {p0, v1, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/c;->Di()Lcom/kwad/framework/filedownloader/f/c$d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
