.class Lcom/ubix/ssp/ad/k/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/a;->setTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ubix/ssp/ad/k/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/a;J)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    iput-wide p2, p0, Lcom/ubix/ssp/ad/k/a$b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(J)V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    instance-of v0, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->a()Z

    move-result v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v3

    check-cast v3, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v3}, Lcom/ubix/ssp/ad/g/k/h;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;I)I

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v2}, Lcom/ubix/ssp/ad/g/k/h;->d()I

    move-result v2

    move v4, v0

    move v5, v2

    goto :goto_0

    :cond_0
    move v4, v1

    move v5, v4

    :goto_0
    iget-wide v9, p0, Lcom/ubix/ssp/ad/k/a$b;->a:J

    sub-long v2, v9, p1

    long-to-float v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    long-to-float v3, v9

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v6, v0

    div-float/2addr v6, v2

    mul-float/2addr v6, v3

    float-to-long v2, v6

    const/16 v6, 0x63

    if-gt v0, v6, :cond_2

    const-wide/16 v6, 0x64

    cmp-long p1, p1, v6

    if-gez p1, :cond_1

    goto :goto_2

    :cond_1
    move-wide v7, v2

    :goto_1
    move v6, v0

    goto :goto_3

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;Z)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->w(Lcom/ubix/ssp/ad/k/a;)V

    const/16 v0, 0x64

    move-wide v7, v9

    goto :goto_1

    :goto_3
    iget-object v3, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static/range {v3 .. v10}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;ZIIJJ)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object p1

    move-wide v10, v9

    move-wide v8, v7

    move v7, v6

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ubix/ssp/ad/g/k/j;->a(IJJ)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->l(Lcom/ubix/ssp/ad/k/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$b;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/ubix/ssp/ad/g/k/j;->c(I)V

    :cond_4
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
