.class Lcom/ubix/ssp/ad/e/a0/c0/h/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/c0/h/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c0/h/j;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/c0/h/j;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/h/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/j$a;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c0/i/f/a$a;->a(Landroid/os/IBinder;)Lcom/ubix/ssp/ad/e/a0/c0/i/f/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/c0/i/f/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/c0/i/f/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/ubix/ssp/ad/e/a0/c0/e;

    const-string v0, "MsaIdInterface#isSupported return false"

    invoke-direct {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/ubix/ssp/ad/e/a0/c0/e;

    const-string v0, "MsaIdInterface is null"

    invoke-direct {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method
