.class final Lcom/kwad/components/core/pfmonitor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/pfmonitor/b$b;
.implements Ljava/lang/Runnable;


# instance fields
.field private aig:Lcom/kwad/components/core/pfmonitor/model/e;

.field private aih:Lcom/kwad/components/core/pfmonitor/model/c;

.field private aii:I

.field private final aij:I


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/pfmonitor/model/e;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/kwad/components/core/pfmonitor/a;->aii:I

    .line 6
    .line 7
    iput p2, p0, Lcom/kwad/components/core/pfmonitor/a;->aij:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/kwad/components/core/pfmonitor/a;->aig:Lcom/kwad/components/core/pfmonitor/model/e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/pfmonitor/a;->aii:I

    .line 2
    .line 3
    return v0
.end method

.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/kwad/components/core/pfmonitor/a;->aii:I

    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/pfmonitor/a;->aig:Lcom/kwad/components/core/pfmonitor/model/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/kwad/components/core/pfmonitor/model/e;->vv()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    :try_start_0
    iget v2, p0, Lcom/kwad/components/core/pfmonitor/a;->aij:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v0, v3, v2, p0}, Lcom/kwad/components/core/pfmonitor/b;->a(Ljava/io/File;Lcom/kwad/components/core/pfmonitor/b$a;ILcom/kwad/components/core/pfmonitor/b$b;)Lcom/kwad/components/core/pfmonitor/model/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/kwad/components/core/pfmonitor/a;->aih:Lcom/kwad/components/core/pfmonitor/model/c;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/kwad/components/core/pfmonitor/a;->aig:Lcom/kwad/components/core/pfmonitor/model/e;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/pfmonitor/model/c;->a(Lcom/kwad/components/core/pfmonitor/model/e;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/kwad/components/core/pfmonitor/a;->aii:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    iput v1, p0, Lcom/kwad/components/core/pfmonitor/a;->aii:I

    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/pfmonitor/a;->aih:Lcom/kwad/components/core/pfmonitor/model/c;

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    iput v1, p0, Lcom/kwad/components/core/pfmonitor/a;->aii:I

    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final vr()Lcom/kwad/components/core/pfmonitor/model/c;
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/core/pfmonitor/a;->aii:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/core/pfmonitor/a;->aih:Lcom/kwad/components/core/pfmonitor/model/c;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return-object v0
.end method
