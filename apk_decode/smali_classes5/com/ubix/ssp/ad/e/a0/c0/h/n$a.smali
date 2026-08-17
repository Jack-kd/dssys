.class Lcom/ubix/ssp/ad/e/a0/c0/h/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/c0/h/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c0/h/n;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/c0/h/n;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/h/n;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/n$a;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/n$a;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/n;

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/c0/h/n;->a(Lcom/ubix/ssp/ad/e/a0/c0/h/n;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/ubix/ssp/ad/e/a0/c0/e; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {v0, p1}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method
