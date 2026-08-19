.class Lcom/ubix/ssp/ad/k/b$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/a$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/b;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/k/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b$i;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$i;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
