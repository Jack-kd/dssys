.class public final Lcom/kwad/sdk/core/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/g/d$a;
    }
.end annotation


# static fields
.field private static aYd:F = 9.81f

.field private static aYe:D = 0.05


# instance fields
.field private volatile aXN:Z

.field private final aYa:Lcom/kwad/sdk/utils/bk$b;

.field private aYc:F

.field private aYf:Lcom/kwad/sdk/core/g/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aYg:Lcom/kwad/sdk/core/g/d$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bidirectionalSwitch:Z

.field private enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d;->enable:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d;->bidirectionalSwitch:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d;->aXN:Z

    .line 11
    .line 12
    new-instance v0, Lcom/kwad/sdk/core/g/d$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/g/d$1;-><init>(Lcom/kwad/sdk/core/g/d;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/kwad/sdk/core/g/d;->aYa:Lcom/kwad/sdk/utils/bk$b;

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/d;->enable:Z

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    cmpg-float p1, p2, p1

    .line 23
    .line 24
    if-gtz p1, :cond_0

    .line 25
    .line 26
    const/high16 p1, 0x40a00000    # 5.0f

    .line 27
    .line 28
    iput p1, p0, Lcom/kwad/sdk/core/g/d;->aYc:F

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iput p2, p0, Lcom/kwad/sdk/core/g/d;->aYc:F

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic NO()F
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/core/g/d;->aYd:F

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic NP()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/kwad/sdk/core/g/d;->aYe:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic a(Lcom/kwad/sdk/core/g/d;)Lcom/kwad/sdk/core/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/core/g/d;->aYf:Lcom/kwad/sdk/core/g/b;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/sdk/core/g/d;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/d;->aXN:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/sdk/core/g/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/sdk/core/g/d;->bidirectionalSwitch:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/kwad/sdk/core/g/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/sdk/core/g/d;->aXN:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/kwad/sdk/core/g/d;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/sdk/core/g/d;->aYc:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final declared-synchronized NJ()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d;->aXN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final a(Lcom/kwad/sdk/core/g/b;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/g/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/kwad/sdk/core/g/d;->aYf:Lcom/kwad/sdk/core/g/b;

    return-void
.end method

.method public final bG(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/d;->bidirectionalSwitch:Z

    .line 2
    .line 3
    return-void
.end method

.method public final cb(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/d;->enable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const-string p1, "ShakeDetector"

    .line 9
    .line 10
    const-string v0, "startDetect context is null"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/d;->aXN:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/sdk/core/g/d;->aYg:Lcom/kwad/sdk/core/g/d$a;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Lcom/kwad/sdk/core/g/d$a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/g/d$a;-><init>(Lcom/kwad/sdk/core/g/d;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/kwad/sdk/core/g/d;->aYg:Lcom/kwad/sdk/core/g/d$a;

    .line 29
    .line 30
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/utils/bk;->Wo()Lcom/kwad/sdk/utils/bk;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/kwad/sdk/core/g/d;->aYg:Lcom/kwad/sdk/core/g/d$a;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/kwad/sdk/core/g/d;->aYa:Lcom/kwad/sdk/utils/bk$b;

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/kwad/sdk/utils/bk;->a(IILandroid/hardware/SensorEventListener;Lcom/kwad/sdk/utils/bk$b;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final declared-synchronized cc(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d;->aYg:Lcom/kwad/sdk/core/g/d$a;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/utils/bk;->Wo()Lcom/kwad/sdk/utils/bk;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/kwad/sdk/core/g/d;->aYg:Lcom/kwad/sdk/core/g/d$a;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/utils/bk;->a(Landroid/hardware/SensorEventListener;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/kwad/sdk/core/g/d;->aYg:Lcom/kwad/sdk/core/g/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    monitor-exit p0

    .line 27
    return-void
.end method

.method public final m(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/g/d;->aYc:F

    .line 2
    .line 3
    return-void
.end method
