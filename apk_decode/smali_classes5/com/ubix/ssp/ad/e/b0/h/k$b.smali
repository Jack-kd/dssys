.class Lcom/ubix/ssp/ad/e/b0/h/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/b0/h/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/b0/h/k;


# direct methods
.method private constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/k$b;->a:Lcom/ubix/ssp/ad/e/b0/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/k;Lcom/ubix/ssp/ad/e/b0/h/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/k$b;-><init>(Lcom/ubix/ssp/ad/e/b0/h/k;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/k$b;->a:Lcom/ubix/ssp/ad/e/b0/h/k;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/h/k;->a(Lcom/ubix/ssp/ad/e/b0/h/k;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/h/k$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
