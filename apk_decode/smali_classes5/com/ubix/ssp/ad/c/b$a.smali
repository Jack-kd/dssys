.class Lcom/ubix/ssp/ad/c/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/c/b;->a(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ubix/ssp/ad/c/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/c/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/b$a;->c:Lcom/ubix/ssp/ad/c/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/c/b$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ubix/ssp/ad/c/b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ubix_sp_capacity"

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "b_cur"

    :try_start_1
    invoke-static {}, Lcom/ubix/ssp/ad/c/b;->B()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "b_cur_time"

    :try_start_2
    iget-object v3, p0, Lcom/ubix/ssp/ad/c/b$a;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
