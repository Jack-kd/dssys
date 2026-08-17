.class Lcom/ubix/ssp/ad/e/a0/c0/h/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/c0/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/a0/c0/c;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/e;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method
