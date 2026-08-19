.class Lcom/ubix/ssp/ad/e/a0/c0/h/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/c0/h/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c0/h/e;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/c0/h/e;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/h/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/e$a;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c0/i/c/a$a;->a(Landroid/os/IBinder;)Lcom/ubix/ssp/ad/e/a0/c0/i/c/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/c0/i/c/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/ubix/ssp/ad/e/a0/c0/e;

    const-string v0, "IdsSupplier is null"

    invoke-direct {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method
