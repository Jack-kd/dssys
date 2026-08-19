.class public final Lcom/smartdigimkt/g5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/smartdigimkt/sdk/api/SDMAdRequest;

.field public final c:I

.field public final d:Lcom/smartdigimkt/e5/p;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Lcom/smartdigimkt/h5/a;

.field public j:Lcom/smartdigimkt/x3/b;

.field public k:I

.field public l:Lcom/smartdigimkt/a5/e;

.field public m:Lcom/smartdigimkt/a5/f;

.field public n:Lcom/smartdigimkt/l3/a;

.field public o:Lcom/smartdigimkt/j1/g;

.field public p:Lcom/smartdigimkt/o3/b;

.field public q:Lcom/smartdigimkt/k4/a;

.field public r:Lcom/smartdigimkt/g5/d;

.field public s:Lcom/smartdigimkt/q3/a;

.field public final t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/smartdigimkt/sdk/api/SDMAdRequest;Lcom/smartdigimkt/e5/p;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/smartdigimkt/g5/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput v1, p0, Lcom/smartdigimkt/g5/a;->k:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/smartdigimkt/g5/a;->a:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/smartdigimkt/g5/a;->b:Lcom/smartdigimkt/sdk/api/SDMAdRequest;

    .line 21
    .line 22
    iput p4, p0, Lcom/smartdigimkt/g5/a;->t:I

    .line 23
    .line 24
    iput-object p6, p0, Lcom/smartdigimkt/g5/a;->d:Lcom/smartdigimkt/e5/p;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/smartdigimkt/g5/a;->e:Ljava/lang/String;

    .line 27
    .line 28
    iput p3, p0, Lcom/smartdigimkt/g5/a;->c:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/smartdigimkt/k4/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/g5/a;->q:Lcom/smartdigimkt/k4/a;

    .line 2
    iget-object v0, p0, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 3
    iput-object v0, p1, Lcom/smartdigimkt/k4/a;->a:Lcom/smartdigimkt/q3/a;

    return-void
.end method

.method public final a()Z
    .locals 3

    .line 4
    iget v0, p0, Lcom/smartdigimkt/g5/a;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
