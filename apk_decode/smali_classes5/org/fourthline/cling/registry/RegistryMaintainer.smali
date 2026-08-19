.class public Lorg/fourthline/cling/registry/RegistryMaintainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final registry:Lorg/fourthline/cling/registry/RegistryImpl;

.field private final sleepIntervalMillis:I

.field private volatile stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 8
    .line 9
    iput p2, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    .line 3
    .line 4
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    .line 5
    .line 6
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Running registry maintenance loop every milliseconds: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->maintain()V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    .line 48
    .line 49
    int-to-long v0, v0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    .line 59
    .line 60
    const-string v1, "Stopped status on thread received, ending maintenance loop"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v1, "Setting stopped status on thread"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    .line 20
    .line 21
    return-void
.end method
