.class Lcom/ubix/ssp/ad/e/a0/i$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/i;->a(Ljava/lang/String;I)Lcom/ubix/ssp/ad/e/a0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Lcom/ubix/ssp/ad/e/a0/i;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/i;Ljava/lang/Thread;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/i$d;->c:Lcom/ubix/ssp/ad/e/a0/i;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/i$d;->a:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/i$d;->b:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/i$d;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/i$d;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/i$d;->c:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/i;->a(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/i$d;->c:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/i;->a(Lcom/ubix/ssp/ad/e/a0/i;Z)Z

    return-void
.end method
