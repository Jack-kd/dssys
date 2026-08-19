.class Lcom/ubix/ssp/ad/j/b$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b$e;->a:Lcom/ubix/ssp/ad/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$e;->a:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->m(Lcom/ubix/ssp/ad/j/b;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lsat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/j/b$e;->a:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/j/b;->n(Lcom/ubix/ssp/ad/j/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ubix_sp_gold"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    const-string v0, "set lsat by CLICK_TRIGGER_AREA_OOPS_CLICK"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method
