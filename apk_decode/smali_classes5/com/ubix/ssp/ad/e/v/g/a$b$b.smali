.class Lcom/ubix/ssp/ad/e/v/g/a$b$b;
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$b;->a:Lcom/ubix/ssp/ad/e/v/g/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$b;->a:Lcom/ubix/ssp/ad/e/v/g/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->e()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$b;->a:Lcom/ubix/ssp/ad/e/v/g/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
