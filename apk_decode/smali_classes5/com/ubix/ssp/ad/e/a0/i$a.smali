.class Lcom/ubix/ssp/ad/e/a0/i$a;
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
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/i;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/i;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/i$a;->b:Lcom/ubix/ssp/ad/e/a0/i;

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/i$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/i$a;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i$a;->b:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/i;->a(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i$a;->b:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/i;->a(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :goto_0
    return-void
.end method
