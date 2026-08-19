.class public Lcom/varbto/utils/anr/AnrHandlerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lk1/r;

.field public c:Lcom/varbto/utils/anr/AnrRecorder;

.field public d:J

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1388

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->d:J

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->e:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->a:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public build()Lcom/varbto/utils/anr/AnrHandler;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->b:Lk1/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lk1/o;

    .line 6
    .line 7
    invoke-direct {v0}, Lk1/o;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->b:Lk1/r;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->c:Lcom/varbto/utils/anr/AnrRecorder;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/varbto/utils/anr/LoggingAnrRecorder;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->f:Z

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/varbto/utils/anr/LoggingAnrRecorder;-><init>(Landroid/content/Context;Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->c:Lcom/varbto/utils/anr/AnrRecorder;

    .line 26
    .line 27
    :cond_1
    new-instance v3, Lcom/varbto/utils/anr/AnrHandler;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->a:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->b:Lk1/r;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->c:Lcom/varbto/utils/anr/AnrRecorder;

    .line 34
    .line 35
    iget-wide v7, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->d:J

    .line 36
    .line 37
    iget-boolean v9, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->f:Z

    .line 38
    .line 39
    invoke-direct/range {v3 .. v9}, Lcom/varbto/utils/anr/AnrHandler;-><init>(Landroid/content/Context;Lk1/r;Lcom/varbto/utils/anr/AnrRecorder;JZ)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->e:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/varbto/utils/anr/AnrHandler;->startMonitoring()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-object v3
.end method

.method public setAnrRecorder(Lcom/varbto/utils/anr/AnrRecorder;)Lcom/varbto/utils/anr/AnrHandlerBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->c:Lcom/varbto/utils/anr/AnrRecorder;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAnrStaceSwitch(Z)Lcom/varbto/utils/anr/AnrHandlerBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setCheckIntervalMs(J)Lcom/varbto/utils/anr/AnrHandlerBuilder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->d:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setErrorService(Lk1/r;)Lcom/varbto/utils/anr/AnrHandlerBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->b:Lk1/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStartImmediately(Z)Lcom/varbto/utils/anr/AnrHandlerBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/varbto/utils/anr/AnrHandlerBuilder;->e:Z

    .line 2
    .line 3
    return-object p0
.end method
