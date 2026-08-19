.class public final Lcom/kwad/sdk/core/adlog/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aMU:Lcom/kwad/sdk/core/adlog/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final Jh()Lcom/kwad/sdk/core/adlog/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final aC(J)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->zV:J

    .line 4
    .line 5
    return-object p0
.end method

.method public final b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    return-object p0
.end method

.method public final b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/g/a;)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/g/a<",
            "Lcom/kwad/sdk/core/track/AdTrackLog;",
            ">;)",
            "Lcom/kwad/sdk/core/adlog/c/b;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwad/sdk/core/adlog/a$a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/g/a;)Lcom/kwad/sdk/core/track/AdTrackLog;

    return-object p0
.end method

.method public final ec(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->nm:I

    return-object p0
.end method

.method public final ec(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    return-object p0
.end method

.method public final ed(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMh:I

    return-object p0
.end method

.method public final ed(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    return-object p0
.end method

.method public final ee(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMi:I

    return-object p0
.end method

.method public final ee(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMC:Ljava/lang/String;

    return-object p0
.end method

.method public final ef(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->downloadSource:I

    return-object p0
.end method

.method public final ef(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMM:Ljava/lang/String;

    return-object p0
.end method

.method public final eg(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMA:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final eh(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMD:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final ei(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aME:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final ej(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMs:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final ek(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMK:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final el(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMO:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final em(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/adlog/c/a;->dV(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final en(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMQ:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final eo(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final ep(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMS:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final eq(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final er(I)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMv:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final f(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->no:Lcom/kwad/sdk/utils/al$a;

    .line 4
    .line 5
    return-object p0
.end method

.method public final j(D)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->np:D

    .line 4
    .line 5
    return-object p0
.end method

.method public final z(II)Lcom/kwad/sdk/core/adlog/c/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/b;->aMU:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ","

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMj:Ljava/lang/String;

    .line 24
    .line 25
    return-object p0
.end method
