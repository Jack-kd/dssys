.class Lcom/ubix/ssp/ad/e/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/c$b;->a:Lcom/ubix/ssp/ad/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c$b;->a:Lcom/ubix/ssp/ad/e/c;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c$b;->a:Lcom/ubix/ssp/ad/e/c;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
