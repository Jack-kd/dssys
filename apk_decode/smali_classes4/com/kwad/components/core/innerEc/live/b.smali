.class public final Lcom/kwad/components/core/innerEc/live/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Tr:Lcom/kwad/components/core/innerEc/live/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static Ts:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/components/core/innerEc/live/b;->Ts:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/logger/a;->aS(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b$1;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/kwad/components/core/innerEc/live/b$1;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/kwad/components/core/innerEc/live/b;->Tr:Lcom/kwad/components/core/innerEc/live/a;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/kwad/components/core/innerEc/e;->getUserId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 36
    .line 37
    iput-object v0, v2, Lcom/kwad/sdk/core/response/model/LiveInfo;->kwaiUserId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->da(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, v2, Lcom/kwad/sdk/core/response/model/LiveInfo;->deeplink:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->fl(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x2

    .line 54
    if-ne v2, v3, :cond_0

    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/kwad/components/core/e/d/a$a;->eg()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    const/16 v2, 0x73

    .line 63
    .line 64
    if-ne p2, v2, :cond_0

    .line 65
    .line 66
    const-wide/16 v2, 0x0

    .line 67
    .line 68
    cmp-long p2, v0, v2

    .line 69
    .line 70
    if-eqz p2, :cond_0

    .line 71
    .line 72
    iget-object p2, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p2, Lcom/kwad/sdk/core/response/model/LiveInfo;->shopItemId:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object p2, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 82
    .line 83
    const-string v0, ""

    .line 84
    .line 85
    iput-object v0, p2, Lcom/kwad/sdk/core/response/model/LiveInfo;->shopItemId:Ljava/lang/String;

    .line 86
    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->createAdResultData()Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p0, p1}, Lcom/kwad/components/core/innerEc/live/slide/LiveDetailActivity;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static c(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/live/b;->Ts:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/kwad/components/core/emotion/a;->a(Landroid/app/Application;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/kwad/components/core/innerEc/live/b;->Ts:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static ru()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "java.lang.String"

    .line 3
    .line 4
    const-string v2, "join"

    .line 5
    .line 6
    const-class v3, Ljava/lang/CharSequence;

    .line 7
    .line 8
    const-class v4, Ljava/lang/Iterable;

    .line 9
    .line 10
    filled-new-array {v3, v4}, [Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :catchall_0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "checkEnv envEnable"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "FullLiveModule"

    .line 36
    .line 37
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v0
.end method
