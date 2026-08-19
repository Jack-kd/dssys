.class Lcom/ubix/ssp/ad/i/c$g;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$g;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$g;->a:Lcom/ubix/ssp/ad/i/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Z)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$g;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/ad/i/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/BroadcastReceiver;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "install result onReceived "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$g;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->b(Lcom/ubix/ssp/ad/i/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/d/a;

    iget v1, v0, Lcom/ubix/ssp/ad/d/a;->o:I

    const-string v2, "service_intent_notify_id"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string p1, "service_intent_pkg_extra"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ubix/ssp/ad/d/a;->u:Ljava/lang/String;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$g;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "interaction_listener_key"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdStatusChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
