.class Lcom/ubix/ssp/ad/e/a0/o$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/o;->a(ID[IIIDZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/o;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o$d;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$d;->a:Lcom/ubix/ssp/ad/e/a0/o;

    const v1, 0xde315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/o;->setShakeSensor(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
