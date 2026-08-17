.class Lcom/ubix/ssp/ad/e/b0/c$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/b0/a;

.field final synthetic b:Lcom/ubix/ssp/ad/e/b0/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/c;Lcom/ubix/ssp/ad/e/b0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->b:Lcom/ubix/ssp/ad/e/b0/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->a:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->b:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "setDataSource"

    :try_start_1
    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/util/Map;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->b:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->b:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->a:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->a:Lcom/ubix/ssp/ad/e/b0/a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/b0/a;->d:Ljava/util/HashMap;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->b:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$e;->b:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
