.class public Lcom/ubix/ssp/ad/e/w/s/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/w/s/b$c;,
        Lcom/ubix/ssp/ad/e/w/s/b$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/ubix/ssp/ad/e/w/s/b$b;

.field private static c:Lcom/ubix/ssp/ad/e/w/s/b$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/ubix/ssp/ad/e/w/s/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/e/w/s/b;->c:Lcom/ubix/ssp/ad/e/w/s/b$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/w/s/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/w/s/b$c;-><init>(Lcom/ubix/ssp/ad/e/w/s/b$a;)V

    sput-object v0, Lcom/ubix/ssp/ad/e/w/s/b;->c:Lcom/ubix/ssp/ad/e/w/s/b$c;

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    sget-object v1, Lcom/ubix/ssp/ad/e/w/s/b;->c:Lcom/ubix/ssp/ad/e/w/s/b$c;

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method
