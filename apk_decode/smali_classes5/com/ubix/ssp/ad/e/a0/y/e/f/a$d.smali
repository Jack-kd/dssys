.class Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/y/e/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:D

.field final synthetic c:Lcom/ubix/ssp/ad/e/a0/y/e/f/a;


# direct methods
.method private constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->c:Lcom/ubix/ssp/ad/e/a0/y/e/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;Lcom/ubix/ssp/ad/e/a0/y/e/f/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;)I
    .locals 4

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->b:D

    iget-wide v2, p1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->b:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->a(Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;)I

    move-result p1

    return p1
.end method
