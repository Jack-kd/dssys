.class Lcom/ubix/ssp/ad/e/w/s/b$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/w/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/w/s/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/s/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/b;->a()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/n;->l()Lcom/ubix/ssp/ad/e/w/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/w/n;->f()V

    const-string p1, "---.NetworkUtils"

    const-string p2, "UbixBroadcastReceiver is receiving ConnectivityManager.CONNECTIVITY_ACTION broadcast"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
