.class public Lcom/ubix/ssp/ad/d/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/ubix/ssp/ad/e/y/a/a;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:I

.field public l:J

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:I

.field public p:I

.field public q:J

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/a;->b:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/a;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/a;->j:J

    iput v0, p0, Lcom/ubix/ssp/ad/d/a;->k:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/a;->n:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/ubix/ssp/ad/d/a;->o:I

    iput v2, p0, Lcom/ubix/ssp/ad/d/a;->p:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/a;->r:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/a;->s:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/a;->t:Z

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/a;->u:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/a;->v:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/a;->w:Z

    return-void
.end method
