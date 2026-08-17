.class public final Lcom/kwad/components/core/e/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/e/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private QK:Z

.field private QL:Z

.field private QM:Z

.field private QN:Z

.field private QO:Z

.field private QP:Z

.field private QQ:Z

.field private QR:Lcom/kwad/components/core/e/d/a$b;

.field private QS:Lcom/kwad/components/core/e/d/d;

.field private QT:Z

.field private QU:Z

.field private QV:J

.field private QW:Z

.field public QX:I

.field public QY:Ljava/lang/String;

.field public QZ:Lcom/kwad/sdk/core/adlog/a$a;

.field public Ra:I

.field public Rb:I

.field private Rc:Lorg/json/JSONObject;

.field private Rd:Z

.field private Re:Z

.field private Rf:I

.field private Rg:I

.field private Rh:I

.field private Ri:I

.field private Rj:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Rk:Ljava/lang/String;

.field private Rl:Z

.field private Rm:Z

.field private adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private final context:Landroid/content/Context;

.field private needReport:Z

.field private nk:I

.field private nm:I

.field public no:Lcom/kwad/sdk/utils/al$a;

.field public zV:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/kwad/components/core/e/d/a$a;->QX:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/kwad/components/core/e/d/a$a;->Ra:I

    .line 9
    .line 10
    iput v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rb:I

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/kwad/components/core/e/d/a$a;->Rd:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->context:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic o(Lcom/kwad/components/core/e/d/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/e/d/a$a;->QT:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic p(Lcom/kwad/components/core/e/d/a$a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/e/d/a$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final D(J)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/e/d/a$a;->QV:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final E(J)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/e/d/a$a;->zV:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->QR:Lcom/kwad/components/core/e/d/a$b;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/g/a;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/g/a<",
            "Lcom/kwad/sdk/core/track/AdTrackLog;",
            ">;)",
            "Lcom/kwad/components/core/e/d/a$a;"
        }
    .end annotation

    .line 3
    iget-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iget-object p2, p0, Lcom/kwad/components/core/e/d/a$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p3}, Lcom/kwad/sdk/core/adlog/a$a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/g/a;)Lcom/kwad/sdk/core/track/AdTrackLog;

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Callable;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/components/core/e/d/a$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rj:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public final aA(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QM:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final aB(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rl:Z

    .line 3
    .line 4
    return-void
.end method

.method public final aC(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rm:Z

    .line 3
    .line 4
    return-void
.end method

.method public final aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public final aK(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rg:I

    .line 2
    .line 3
    return-void
.end method

.method public final aL(I)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/e/d/a$a;->Ri:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final aM(I)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/e/d/a$a;->nm:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final aN(I)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/e/d/a$a;->nk:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final aO(I)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/e/d/a$a;->Ra:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final aP(I)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rb:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final aQ(I)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rf:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final aR(I)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rh:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final ao(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QU:Z

    .line 3
    .line 4
    return-void
.end method

.method public final ap(Ljava/lang/String;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rk:Ljava/lang/String;

    return-object p0
.end method

.method public final ap(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QP:Z

    return-object p0
.end method

.method public final aq(Ljava/lang/String;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->QY:Ljava/lang/String;

    return-object p0
.end method

.method public final aq(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QQ:Z

    return-object p0
.end method

.method public final ar(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QO:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final as(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QT:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final at(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QW:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final au(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->needReport:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final av(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rd:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final aw(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QL:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final ax(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QN:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final ay(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->QK:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final az(Z)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/e/d/a$a;->Re:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->QS:Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->no:Lcom/kwad/sdk/utils/al$a;

    return-object p0
.end method

.method public final d(Lorg/json/JSONObject;)Lcom/kwad/components/core/e/d/a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/e/d/a$a;->Rc:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final ed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/e/d/a$a;->nk:I

    .line 2
    .line 3
    return v0
.end method

.method public final eg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/e/d/a$a;->nm:I

    .line 2
    .line 3
    return v0
.end method

.method public final getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/a$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/a$a;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final iK()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rc:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final iv()Lcom/kwad/components/core/e/d/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/a$a;->QS:Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final pN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final pO()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rj:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final pP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QU:Z

    .line 2
    .line 3
    return v0
.end method

.method public final pQ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rg:I

    .line 2
    .line 3
    return v0
.end method

.method public final pR()Lcom/kwad/components/core/e/d/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/a$a;->QR:Lcom/kwad/components/core/e/d/a$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final pS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QO:Z

    .line 2
    .line 3
    return v0
.end method

.method public final pT()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/e/d/a$a;->Ri:I

    .line 2
    .line 3
    return v0
.end method

.method public final pU()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QP:Z

    .line 2
    .line 3
    return v0
.end method

.method public final pV()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QQ:Z

    .line 2
    .line 3
    return v0
.end method

.method public final pW()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QT:Z

    .line 2
    .line 3
    return v0
.end method

.method public final pX()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/core/e/d/a$a;->QV:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final pY()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QW:Z

    .line 2
    .line 3
    return v0
.end method

.method public final pZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->needReport:Z

    .line 2
    .line 3
    return v0
.end method

.method public final qa()Lcom/kwad/sdk/core/adlog/c/a;
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/adlog/c/a;->Jf()Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/kwad/components/core/e/d/a$a;->nm:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->dW(I)Lcom/kwad/sdk/core/adlog/c/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kwad/components/core/e/d/a$a;->QY:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->eb(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/kwad/components/core/e/d/a$a;->no:Lcom/kwad/sdk/utils/al$a;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->e(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/kwad/components/core/e/d/a$a;->Ra:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->dX(I)Lcom/kwad/sdk/core/adlog/c/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v1, p0, Lcom/kwad/components/core/e/d/a$a;->Rb:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->dY(I)Lcom/kwad/sdk/core/adlog/c/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-wide v1, p0, Lcom/kwad/components/core/e/d/a$a;->zV:J

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/adlog/c/a;->aA(J)Lcom/kwad/sdk/core/adlog/c/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v1, p0, Lcom/kwad/components/core/e/d/a$a;->QX:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->dZ(I)Lcom/kwad/sdk/core/adlog/c/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public final qb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final qc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QL:Z

    .line 2
    .line 3
    return v0
.end method

.method public final qd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QN:Z

    .line 2
    .line 3
    return v0
.end method

.method public final qe()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QK:Z

    .line 2
    .line 3
    return v0
.end method

.method public final qf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->Re:Z

    .line 2
    .line 3
    return v0
.end method

.method public final qg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rf:I

    .line 2
    .line 3
    return v0
.end method

.method public final qh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rh:I

    .line 2
    .line 3
    return v0
.end method

.method public final qi()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->QM:Z

    .line 2
    .line 3
    return v0
.end method

.method public final qj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rl:Z

    .line 2
    .line 3
    return v0
.end method

.method public final qk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/e/d/a$a;->Rm:Z

    .line 2
    .line 3
    return v0
.end method
