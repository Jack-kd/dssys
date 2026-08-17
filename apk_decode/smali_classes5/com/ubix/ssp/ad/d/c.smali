.class public Lcom/ubix/ssp/ad/d/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/c;->c:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->w()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/c;->d:Ljava/lang/String;

    const-string v1, "traget_version"

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/c;->f:Z

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPublisherId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/c;->g:Ljava/lang/String;

    const-string v0, "install_time"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->g()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/c;->h:J

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->x()J

    move-result-wide v0

    sput-wide v0, Lcom/ubix/ssp/ad/d/b;->n:J

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/c;->i:J

    return-void
.end method
