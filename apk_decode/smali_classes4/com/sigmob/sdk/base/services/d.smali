.class public Lcom/sigmob/sdk/base/services/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/services/f$a;


# instance fields
.field a:Lcom/sigmob/sdk/base/services/c;

.field b:Lcom/sigmob/sdk/base/services/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->b:Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/d;->b:Lcom/sigmob/sdk/base/services/g;

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/d;->a:Lcom/sigmob/sdk/base/services/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/services/c;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/services/c;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/d;->a:Lcom/sigmob/sdk/base/services/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/d;->a:Lcom/sigmob/sdk/base/services/c;

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/d;->a:Lcom/sigmob/sdk/base/services/c;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public e()Z
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/services/d;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->a:Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/d;->b:Lcom/sigmob/sdk/base/services/g;

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/sigmob/sdk/base/services/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/services/d;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->b:Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/d;->b:Lcom/sigmob/sdk/base/services/g;

    return-void
.end method

.method public h()Ljava/lang/Error;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
