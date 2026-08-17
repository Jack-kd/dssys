.class Lcom/sigmob/sdk/splash/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/f;-><init>(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/f;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->p()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->d(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/splash/i;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->e(Lcom/sigmob/sdk/splash/f;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->d(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/splash/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/i;->setDuration(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->d(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/splash/i;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/f;->e(Lcom/sigmob/sdk/splash/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/i;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->f(Lcom/sigmob/sdk/splash/f;)I

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->b(Lcom/sigmob/sdk/splash/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f$2;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/f;->g(Lcom/sigmob/sdk/splash/f;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
