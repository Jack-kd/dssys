.class Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/y/e/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:D

.field final synthetic e:Lcom/ubix/ssp/ad/e/a0/y/e/f/a;


# direct methods
.method private constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->e:Lcom/ubix/ssp/ad/e/a0/y/e/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;Lcom/ubix/ssp/ad/e/a0/y/e/f/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;)I
    .locals 6

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->d:D

    iget-wide v2, p1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->d:D

    cmpg-double v4, v0, v2

    const/4 v5, -0x1

    if-gez v4, :cond_0

    return v5

    :cond_0
    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->c:I

    iget p1, p1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->c:I

    if-le v0, p1, :cond_1

    return v5

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->a(Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;)I

    move-result p1

    return p1
.end method
