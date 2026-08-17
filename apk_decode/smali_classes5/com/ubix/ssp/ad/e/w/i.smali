.class public final Lcom/ubix/ssp/ad/e/w/i;
.super Lcom/ubix/ssp/ad/e/w/a;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/a;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/ubix/ssp/ad/e/w/i;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/w/i;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public a(I)Lcom/ubix/ssp/ad/e/w/i;
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/w/a;->d:I

    return-object p0
.end method

.method public a(J)Lcom/ubix/ssp/ad/e/w/i;
    .locals 2

    .line 3
    const-wide/32 v0, 0x1000000

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/w/a;->e:J

    return-object p0
.end method

.method public a(Z)Lcom/ubix/ssp/ad/e/w/i;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/w/a;->g:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/w/i;->j:Z

    return-object p0
.end method

.method public b()Lcom/ubix/ssp/ad/e/w/i;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/a;->b:Z

    return-object p0
.end method

.method public b(I)Lcom/ubix/ssp/ad/e/w/i;
    .locals 1

    .line 2
    const/4 v0, 0x5

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/w/a;->c:I

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/w/i;->a()Lcom/ubix/ssp/ad/e/w/i;

    move-result-object v0

    return-object v0
.end method
