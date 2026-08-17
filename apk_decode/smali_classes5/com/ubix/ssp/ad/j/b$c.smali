.class Lcom/ubix/ssp/ad/j/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/b;->a(ILandroid/view/View;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/j/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b$c;->a:Lcom/ubix/ssp/ad/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$c;->a:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->a(Lcom/ubix/ssp/ad/j/b;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/j/b$c;->a:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/j/b;->b(Lcom/ubix/ssp/ad/j/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/j/b$c;->a:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/j/b;->h(Lcom/ubix/ssp/ad/j/b;)J

    move-result-wide v2

    const-string v4, "ubix_sp_gold"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    return-void
.end method
