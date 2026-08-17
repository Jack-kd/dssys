.class Lcom/ubix/ssp/ad/e/v/g/a$b$e;
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
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/ubix/ssp/ad/e/v/g/a$b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/v/g/a$b;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$e;->b:Lcom/ubix/ssp/ad/e/v/g/a$b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$e;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$e;->b:Lcom/ubix/ssp/ad/e/v/g/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b$e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
