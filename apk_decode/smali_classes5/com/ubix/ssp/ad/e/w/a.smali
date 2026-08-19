.class public Lcom/ubix/ssp/ad/e/w/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:I

.field d:I

.field e:J

.field f:Z

.field g:Z

.field h:I

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x2000000

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/w/a;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/a;->f:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/ubix/ssp/ad/e/w/a;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/a;->i:Z

    return-void
.end method
