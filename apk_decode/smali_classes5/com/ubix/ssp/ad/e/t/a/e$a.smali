.class Lcom/ubix/ssp/ad/e/t/a/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/t/a/e;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/t/a/e;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/t/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e$a;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e$a;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
