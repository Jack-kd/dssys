.class public abstract Lcom/ubix/ssp/ad/e/x/a$f;
.super Lcom/ubix/ssp/ad/e/x/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/x/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ubix/ssp/ad/e/x/a<",
        "Lcom/ubix/ssp/ad/e/y/a/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/x/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/ubix/ssp/ad/e/x/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/x/a$f;->e(Lcom/ubix/ssp/ad/e/x/d;)Lcom/ubix/ssp/ad/e/y/a/g;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/ubix/ssp/ad/e/x/d;)Lcom/ubix/ssp/ad/e/y/a/g;
    .locals 1

    :try_start_0
    iget-object p1, p1, Lcom/ubix/ssp/ad/e/x/d;->f:[B

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/a/g;->a([B)Lcom/ubix/ssp/ad/e/y/a/g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "failure"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
