.class Lcom/ubix/ssp/ad/i/c$n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/o;

.field final synthetic c:Lcom/ubix/ssp/ad/d/l;

.field final synthetic d:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/e/a0/o;Lcom/ubix/ssp/ad/d/l;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$n;->d:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$n;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c$n;->b:Lcom/ubix/ssp/ad/e/a0/o;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$n;->b:Lcom/ubix/ssp/ad/e/a0/o;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/c$n;->b:Lcom/ubix/ssp/ad/e/a0/o;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->Z()I

    move-result v5

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->W()D

    move-result-wide v6

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->Z()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->F()[I

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    new-array v0, v1, [I

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->T()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->X()I

    move-result v9

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->U()I

    move-result v10

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->L0()D

    move-result-wide v11

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->C0()Z

    move-result v13

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$n;->c:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->D0()Z

    move-result v14

    invoke-virtual/range {v4 .. v14}, Lcom/ubix/ssp/ad/e/a0/o;->a(ID[IIIDZZ)V

    :cond_1
    return-void
.end method
