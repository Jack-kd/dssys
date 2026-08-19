.class public Lcom/varbto/utils/crash/CrashHandlerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/varbto/utils/crash/CrashAttributionService;

.field public c:Lcom/varbto/utils/crash/CrashRecorder;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->e:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->f:Z

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->a:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public build()Lcom/varbto/utils/crash/CrashHandler;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->b:Lcom/varbto/utils/crash/CrashAttributionService;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lcom/varbto/utils/crash/DefaultCrashAttributionService;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/varbto/utils/crash/DefaultCrashAttributionService;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->b:Lcom/varbto/utils/crash/CrashAttributionService;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->b:Lcom/varbto/utils/crash/CrashAttributionService;

    .line 19
    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->c:Lcom/varbto/utils/crash/CrashRecorder;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Lcom/varbto/utils/crash/LoggingCrashRecorder;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->e:Z

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Lcom/varbto/utils/crash/LoggingCrashRecorder;-><init>(Landroid/content/Context;Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->c:Lcom/varbto/utils/crash/CrashRecorder;

    .line 34
    .line 35
    :cond_2
    new-instance v0, Lcom/varbto/utils/crash/CrashHandler;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->a:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->b:Lcom/varbto/utils/crash/CrashAttributionService;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->c:Lcom/varbto/utils/crash/CrashRecorder;

    .line 42
    .line 43
    invoke-direct {v0, v1, v2, v3}, Lcom/varbto/utils/crash/CrashHandler;-><init>(Landroid/content/Context;Lcom/varbto/utils/crash/CrashAttributionService;Lcom/varbto/utils/crash/CrashRecorder;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->d:Z

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/varbto/utils/crash/CrashHandler;->install()V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-object v0
.end method

.method public setAttributionService(Lcom/varbto/utils/crash/CrashAttributionService;)Lcom/varbto/utils/crash/CrashHandlerBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->b:Lcom/varbto/utils/crash/CrashAttributionService;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCrashRecorder(Lcom/varbto/utils/crash/CrashRecorder;)Lcom/varbto/utils/crash/CrashHandlerBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->c:Lcom/varbto/utils/crash/CrashRecorder;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableAttribution(Z)Lcom/varbto/utils/crash/CrashHandlerBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSaveStackSwitch(Z)Lcom/varbto/utils/crash/CrashHandlerBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setStartImmediately(Z)Lcom/varbto/utils/crash/CrashHandlerBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/varbto/utils/crash/CrashHandlerBuilder;->d:Z

    .line 2
    .line 3
    return-object p0
.end method
