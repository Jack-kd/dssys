.class public Lcom/ubix/ssp/ad/e/w/s/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/ubix/ssp/ad/e/w/s/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->l:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/w/s/a;->b:Ljava/lang/String;

    sget-object v1, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/w/s/a;->c:Ljava/lang/String;

    sget-object v1, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/w/s/a;->e:Ljava/lang/String;

    sget-object v1, Lcom/ubix/ssp/ad/d/b;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/w/s/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->D()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->f:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->g:Ljava/lang/String;

    const-string v0, "2.10.2.11"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->j:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->k:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->l:Ljava/lang/String;

    return-void
.end method

.method public static f()Lcom/ubix/ssp/ad/e/w/s/a;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/w/s/a;->a:Lcom/ubix/ssp/ad/e/w/s/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/w/s/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/w/s/a;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/w/s/a;->a:Lcom/ubix/ssp/ad/e/w/s/a;

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/w/s/a;->a:Lcom/ubix/ssp/ad/e/w/s/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/s/a;->h:Ljava/lang/String;

    return-object v0
.end method
