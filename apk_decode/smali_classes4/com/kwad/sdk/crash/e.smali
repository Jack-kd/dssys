.class public final Lcom/kwad/sdk/crash/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/e$a;
    }
.end annotation


# instance fields
.field private beg:Lcom/kwad/sdk/crash/b/b;

.field private beh:Lcom/kwad/sdk/crash/c;

.field private bei:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/kwad/sdk/crash/b/b;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/b/b;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/crash/e;->beg:Lcom/kwad/sdk/crash/b/b;

    .line 4
    new-instance v0, Lcom/kwad/sdk/crash/c$a;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/c$a;-><init>()V

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/c$a;->Qc()Lcom/kwad/sdk/crash/c;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/crash/e;-><init>()V

    return-void
.end method

.method public static Qd()Lcom/kwad/sdk/crash/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/crash/e$a;->Ql()Lcom/kwad/sdk/crash/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final Qe()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beg:Lcom/kwad/sdk/crash/b/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/b/b;->Qq()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final Qf()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beg:Lcom/kwad/sdk/crash/b/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/b/b;->Qf()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final Qg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/crash/c;->bdE:Lcom/kwad/sdk/crash/model/c;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/sdk/crash/model/c;->beK:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public final Qh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/crash/c;->bdE:Lcom/kwad/sdk/crash/model/c;

    .line 4
    .line 5
    iget v0, v0, Lcom/kwad/sdk/crash/model/c;->beO:I

    .line 6
    .line 7
    return v0
.end method

.method public final Qi()Lcom/kwad/sdk/crash/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Qj()Lcom/kwad/sdk/crash/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/crash/c;->bdG:Lcom/kwad/sdk/crash/h;

    .line 4
    .line 5
    return-object v0
.end method

.method public final Qk()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/kwad/sdk/crash/e;->bei:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final a(Lcom/kwad/sdk/crash/c;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/crash/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/kwad/sdk/crash/e;->bei:J

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beg:Lcom/kwad/sdk/crash/b/b;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/kwad/sdk/crash/c;->bdH:[Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/kwad/sdk/crash/c;->bdI:[Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/crash/b/b;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/c;->Qa()Lcom/kwad/sdk/crash/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/crash/f;->a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/crash/c;->bdF:Lcom/kwad/sdk/crash/model/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/sdk/crash/model/a;->mAppId:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/crash/c;->context:Landroid/content/Context;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/crash/c;->bdE:Lcom/kwad/sdk/crash/model/c;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/sdk/crash/model/c;->mSdkVersion:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public final isDebug()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/e;->beh:Lcom/kwad/sdk/crash/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/c;->isDebugMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
