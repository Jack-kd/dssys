.class Lcom/ubix/ssp/ad/e/w/s/b$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/w/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/w/s/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/s/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/b;->a()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/n;->l()Lcom/ubix/ssp/ad/e/w/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/w/n;->f()V

    const-string p1, "---.NetworkUtils"

    const-string v0, "onAvailable is calling"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/b;->a()V

    const-string p1, "---.NetworkUtils"

    const-string p2, "onCapabilitiesChanged is calling"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/b;->a()V

    const-string p1, "---.NetworkUtils"

    const-string v0, "onLost is calling"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
