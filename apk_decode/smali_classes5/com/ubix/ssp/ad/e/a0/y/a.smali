.class public Lcom/ubix/ssp/ad/e/a0/y/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ubix/ssp/ad/e/a0/y/a;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->a:D

    iput-wide p3, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->b:D

    iput-wide p5, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->c:D

    iput-wide p7, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->d:D

    return-void
.end method


# virtual methods
.method public a()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->c:D

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->d:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/y/a;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/y/a;->a()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/y/a;->a()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->c:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->d:D

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/e/a0/y/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/a;->a(Lcom/ubix/ssp/ad/e/a0/y/a;)I

    move-result p1

    return p1
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->a:D

    return-wide v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/a;->b:D

    return-wide v0
.end method
