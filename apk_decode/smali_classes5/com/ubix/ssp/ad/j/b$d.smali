.class Lcom/ubix/ssp/ad/j/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/b;->c(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/ubix/ssp/ad/j/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/b;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b$d;->b:Lcom/ubix/ssp/ad/j/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/j/b$d;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "14"

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/j/b$d;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/j/b;->i(Lcom/ubix/ssp/ad/j/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/b$d;->a:Ljava/util/HashMap;

    const-string v2, "__CLICK_AREA__"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/b$d;->a:Ljava/util/HashMap;

    const-string v2, "__CLICK_TRIGGER__"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/b$d;->a:Ljava/util/HashMap;

    const-string v2, "__CLICK_UNREAL_TRIGGER__"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$d;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->j(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/j/b$d;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/j/b;->k(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/j/b$d;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v3}, Lcom/ubix/ssp/ad/j/b;->l(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/j/b$d;->a:Ljava/util/HashMap;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ubix/ssp/ad/j/b;->a(Lcom/ubix/ssp/ad/j/b;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
