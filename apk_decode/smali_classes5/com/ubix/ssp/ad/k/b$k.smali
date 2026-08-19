.class Lcom/ubix/ssp/ad/k/b$k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/b;->R()V
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b$k;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$k;->a:Lcom/ubix/ssp/ad/k/b;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;IZ)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$k;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->P()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
