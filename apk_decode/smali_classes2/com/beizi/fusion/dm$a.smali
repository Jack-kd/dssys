.class final Lcom/beizi/fusion/dm$a;
.super Lcom/beizi/fusion/wa;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/vb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/wa;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getComplain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->w:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getCreateID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->v:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getRequestCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->u:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getPrice()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->t:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getWinPrice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->s:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getBidResult()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->r:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->q:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getAdType()Lcom/beizi/fusion/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->p:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getMaxTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->o:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getMaterialID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->n:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getOrderID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->m:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getErrorCode()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getErrorCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->k:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getInteractiveType()I

    move-result v0

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getInteractiveType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->j:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getInteractionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->i:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getSchemeID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->h:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getPrice()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->g:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getDspID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->f:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getAdType()Lcom/beizi/fusion/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->e:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getSpaceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->d:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getCurrentTripTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getRequestTracSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getCacheRequestTraceSessionID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/dm$a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/beizi/fusion/dm$a;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/beizi/fusion/wa;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->a:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->b:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->c:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->d:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->e:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->f:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->g:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->h:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->i:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->j:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->k:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->l:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->m:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->n:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->o:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->p:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->q:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->r:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->s:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->t:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->u:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/beizi/fusion/dm$a;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$a;->v:Ljava/lang/String;

    .line 48
    iget-object p1, p1, Lcom/beizi/fusion/dm$a;->w:Ljava/lang/String;

    iput-object p1, p0, Lcom/beizi/fusion/dm$a;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/beizi/fusion/dm$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/dm$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/beizi/fusion/dm$a;-><init>(Lcom/beizi/fusion/dm$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
