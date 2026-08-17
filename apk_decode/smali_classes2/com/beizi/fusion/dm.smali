.class Lcom/beizi/fusion/dm;
.super Lcom/beizi/fusion/asnp/common/analyse/model/IBaseEventReportModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/dm$f;,
        Lcom/beizi/fusion/dm$b;,
        Lcom/beizi/fusion/dm$i;,
        Lcom/beizi/fusion/dm$d;,
        Lcom/beizi/fusion/dm$h;,
        Lcom/beizi/fusion/dm$a;,
        Lcom/beizi/fusion/dm$g;,
        Lcom/beizi/fusion/dm$e;,
        Lcom/beizi/fusion/dm$c;
    }
.end annotation


# instance fields
.field private a:Lcom/beizi/fusion/dm$f;

.field private b:Lcom/beizi/fusion/dm$b;

.field private c:Lcom/beizi/fusion/dm$i;

.field private d:Lcom/beizi/fusion/dm$d;

.field private e:Lcom/beizi/fusion/dm$h;

.field private f:Lcom/beizi/fusion/dm$a;

.field private g:Lcom/beizi/fusion/dm$g;

.field private h:Lcom/beizi/fusion/dm$c;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/asnp/common/analyse/model/IStringEventEnum;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/asnp/common/analyse/model/IBaseEventReportModel;-><init>(Lcom/beizi/fusion/asnp/common/analyse/model/IStringEventEnum;)V

    .line 2
    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    iput-object p1, p0, Lcom/beizi/fusion/dm;->k:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/beizi/fusion/asnp/common/analyse/model/IBaseEventReportModel;->getEventCode()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/beizi/fusion/dm;->l:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "NSDK"

    .line 15
    .line 16
    iput-object v0, p0, Lcom/beizi/fusion/dm;->m:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/beizi/fusion/dm;->i:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/beizi/fusion/dm;->n:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {}, Lcom/beizi/fusion/qn;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/beizi/fusion/dm;->j:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/dm$a;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/beizi/fusion/dm;->f:Lcom/beizi/fusion/dm$a;

    return-void
.end method

.method public a(Lcom/beizi/fusion/dm$b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/dm;->b:Lcom/beizi/fusion/dm$b;

    return-void
.end method

.method public a(Lcom/beizi/fusion/dm$c;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/beizi/fusion/dm;->h:Lcom/beizi/fusion/dm$c;

    return-void
.end method

.method public a(Lcom/beizi/fusion/dm$d;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/dm;->d:Lcom/beizi/fusion/dm$d;

    return-void
.end method

.method public a(Lcom/beizi/fusion/dm$e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/beizi/fusion/dm$f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/dm;->a:Lcom/beizi/fusion/dm$f;

    return-void
.end method

.method public a(Lcom/beizi/fusion/dm$g;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/beizi/fusion/dm;->g:Lcom/beizi/fusion/dm$g;

    return-void
.end method

.method public a(Lcom/beizi/fusion/dm$h;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/beizi/fusion/dm;->e:Lcom/beizi/fusion/dm$h;

    return-void
.end method

.method public a(Lcom/beizi/fusion/dm$i;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/dm;->c:Lcom/beizi/fusion/dm$i;

    return-void
.end method

.method public deepCopy()Lcom/beizi/fusion/dm;
    .locals 2

    .line 2
    new-instance v0, Lcom/beizi/fusion/dm;

    iget-object v1, p0, Lcom/beizi/fusion/asnp/common/analyse/model/IBaseEventReportModel;->event:Lcom/beizi/fusion/asnp/common/analyse/model/IStringEventEnum;

    invoke-direct {v0, v1}, Lcom/beizi/fusion/dm;-><init>(Lcom/beizi/fusion/asnp/common/analyse/model/IStringEventEnum;)V

    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/dm;->a:Lcom/beizi/fusion/dm$f;

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, v0, Lcom/beizi/fusion/dm;->a:Lcom/beizi/fusion/dm$f;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/dm;->b:Lcom/beizi/fusion/dm$b;

    if-eqz v1, :cond_1

    .line 6
    iput-object v1, v0, Lcom/beizi/fusion/dm;->b:Lcom/beizi/fusion/dm$b;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/dm;->c:Lcom/beizi/fusion/dm$i;

    if-eqz v1, :cond_2

    .line 8
    iput-object v1, v0, Lcom/beizi/fusion/dm;->c:Lcom/beizi/fusion/dm$i;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/dm;->d:Lcom/beizi/fusion/dm$d;

    if-eqz v1, :cond_3

    .line 10
    iput-object v1, v0, Lcom/beizi/fusion/dm;->d:Lcom/beizi/fusion/dm$d;

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/dm;->e:Lcom/beizi/fusion/dm$h;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/beizi/fusion/dm$h;->a()Lcom/beizi/fusion/dm$h;

    move-result-object v1

    iput-object v1, v0, Lcom/beizi/fusion/dm;->e:Lcom/beizi/fusion/dm$h;

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/beizi/fusion/dm;->f:Lcom/beizi/fusion/dm$a;

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v1}, Lcom/beizi/fusion/dm$a;->a()Lcom/beizi/fusion/dm$a;

    move-result-object v1

    iput-object v1, v0, Lcom/beizi/fusion/dm;->f:Lcom/beizi/fusion/dm$a;

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/beizi/fusion/dm;->g:Lcom/beizi/fusion/dm$g;

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {v1}, Lcom/beizi/fusion/dm$g;->a()Lcom/beizi/fusion/dm$g;

    move-result-object v1

    iput-object v1, v0, Lcom/beizi/fusion/dm;->g:Lcom/beizi/fusion/dm$g;

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/beizi/fusion/dm;->h:Lcom/beizi/fusion/dm$c;

    if-eqz v1, :cond_7

    .line 18
    iput-object v1, v0, Lcom/beizi/fusion/dm;->h:Lcom/beizi/fusion/dm$c;

    :cond_7
    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/beizi/fusion/vb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/dm;->deepCopy()Lcom/beizi/fusion/dm;

    move-result-object v0

    return-object v0
.end method
