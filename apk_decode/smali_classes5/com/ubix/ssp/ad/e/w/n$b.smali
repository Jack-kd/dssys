.class Lcom/ubix/ssp/ad/e/w/n$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/w/n;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/w/n;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/w/n;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/n$b;->a:Lcom/ubix/ssp/ad/e/w/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/n$b;->a:Lcom/ubix/ssp/ad/e/w/n;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/w/b;->f:Lcom/ubix/ssp/ad/e/w/c;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/w/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method
