.class Lcom/ubix/ssp/ad/e/v/g/a$b$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/v/g/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/v/g/a$b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/v/g/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$d;->a:Lcom/ubix/ssp/ad/e/v/g/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$d;->a:Lcom/ubix/ssp/ad/e/v/g/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    move-object v1, v0

    check-cast v1, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$d;->a:Lcom/ubix/ssp/ad/e/v/g/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/ubix/ssp/ad/e/t/a/e;->a(II)V

    return-void
.end method
