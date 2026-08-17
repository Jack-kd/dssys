.class public Lcom/ubix/ssp/ad/e/t/a/e;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/ubix/ssp/ad/e/t/a/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/t/a/e$c;,
        Lcom/ubix/ssp/ad/e/t/a/e$d;
    }
.end annotation


# instance fields
.field private a:Lcom/ubix/ssp/ad/e/t/a/c;

.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field public h:Z

.field public i:Z

.field private j:Lcom/ubix/ssp/ad/e/t/a/e$c;

.field private k:Lcom/ubix/ssp/ad/e/t/a/e$d;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/RectF;

.field private n:Z

.field private o:Landroid/graphics/PorterDuffXfermode;

.field private p:Landroid/graphics/Rect;

.field q:F

.field r:F

.field s:F

.field t:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->d:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->e:I

    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->f:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->g:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->h:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->i:Z

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->j:Lcom/ubix/ssp/ad/e/t/a/e$c;

    sget-object p1, Lcom/ubix/ssp/ad/e/t/a/e$d;->b:Lcom/ubix/ssp/ad/e/t/a/e$d;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->k:Lcom/ubix/ssp/ad/e/t/a/e$d;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->l:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->n:Z

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->o:Landroid/graphics/PorterDuffXfermode;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->q:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->r:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->s:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->t:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->c:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/ubix/ssp/ad/e/t/a/e;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->e:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->f:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->g:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/ubix/ssp/ad/e/t/a/e;->h:Z

    iput-boolean p3, p0, Lcom/ubix/ssp/ad/e/t/a/e;->i:Z

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->j:Lcom/ubix/ssp/ad/e/t/a/e$c;

    sget-object p1, Lcom/ubix/ssp/ad/e/t/a/e$d;->b:Lcom/ubix/ssp/ad/e/t/a/e$d;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->k:Lcom/ubix/ssp/ad/e/t/a/e$d;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->l:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iput-boolean p3, p0, Lcom/ubix/ssp/ad/e/t/a/e;->n:Z

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->o:Landroid/graphics/PorterDuffXfermode;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->q:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->r:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->s:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->t:F

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/t/a/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/t/a/e;)Lcom/ubix/ssp/ad/e/t/a/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    return-object p0
.end method

.method private a()V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/t/a/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->c:Z

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/t/a/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->d:Z

    return p0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/t/a/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/e;->a()V

    return-void
.end method

.method private setGifDecoderImage(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/t/a/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/t/a/c;

    invoke-direct {v0, p1, p0}, Lcom/ubix/ssp/ad/e/t/a/c;-><init>(Ljava/io/InputStream;Lcom/ubix/ssp/ad/e/t/a/b;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setGifDecoderImage([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/t/a/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/t/a/c;

    invoke-direct {v0, p1, p0}, Lcom/ubix/ssp/ad/e/t/a/c;-><init>([BLcom/ubix/ssp/ad/e/t/a/b;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 4
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->e:I

    iput p2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->f:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->g:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 4

    .line 5
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/ubix/ssp/ad/e/t/a/e$b;->b:[I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->k:Lcom/ubix/ssp/ad/e/t/a/e$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_2

    :cond_0
    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->j:Lcom/ubix/ssp/ad/e/t/a/e$c;

    if-nez p1, :cond_8

    new-instance p1, Lcom/ubix/ssp/ad/e/t/a/e$c;

    invoke-direct {p1, p0, v0}, Lcom/ubix/ssp/ad/e/t/a/e$c;-><init>(Lcom/ubix/ssp/ad/e/t/a/e;Lcom/ubix/ssp/ad/e/t/a/e$a;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->j:Lcom/ubix/ssp/ad/e/t/a/e$c;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    if-ne p2, v2, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/t/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/e;->a()V

    return-void

    :cond_4
    if-ne p2, v1, :cond_8

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/t/a/c;->d()I

    move-result p1

    if-le p1, v2, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->j:Lcom/ubix/ssp/ad/e/t/a/e$c;

    if-nez p1, :cond_8

    new-instance p1, Lcom/ubix/ssp/ad/e/t/a/e$c;

    invoke-direct {p1, p0, v0}, Lcom/ubix/ssp/ad/e/t/a/e$c;-><init>(Lcom/ubix/ssp/ad/e/t/a/e;Lcom/ubix/ssp/ad/e/t/a/e$a;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->j:Lcom/ubix/ssp/ad/e/t/a/e$c;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_5
    if-ne p2, v1, :cond_8

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/t/a/c;->d()I

    move-result p1

    if-le p1, v2, :cond_6

    new-instance p1, Lcom/ubix/ssp/ad/e/t/a/e$c;

    invoke-direct {p1, p0, v0}, Lcom/ubix/ssp/ad/e/t/a/e$c;-><init>(Lcom/ubix/ssp/ad/e/t/a/e;Lcom/ubix/ssp/ad/e/t/a/e$a;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/e;->a()V

    return-void

    :cond_7
    const-string p1, "gif parse error"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public a([B)V
    .locals 2

    .line 6
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/t/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->q:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->r:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->s:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->t:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v2, Lcom/ubix/ssp/ad/e/t/a/e$b;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto/16 :goto_2

    :cond_2
    iget v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->q:F

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->r:F

    cmpl-float v2, v2, v4

    const/4 v4, 0x0

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->s:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->s:F

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->t:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->t:F

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->q:F

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->r:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->t:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->t:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/ubix/ssp/ad/e/t/a/e;->t:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->s:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->s:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/ubix/ssp/ad/e/t/a/e;->s:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    :goto_2
    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->n:Z

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->l:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    move-object v4, v1

    :goto_3
    move v1, v2

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->l:Landroid/graphics/Paint;

    move-object v4, v2

    move v2, v0

    move-object v0, v1

    goto :goto_3

    :goto_4
    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->o:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e;->p:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/t/a/e;->l:Landroid/graphics/Paint;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/t/a/e;->l:Landroid/graphics/Paint;

    move-object v2, v1

    :goto_5
    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_6
    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->h:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v4, Lcom/ubix/ssp/ad/e/t/a/c;->a:I

    iget v4, v4, Lcom/ubix/ssp/ad/e/t/a/c;->b:I

    move v9, v5

    move v5, v4

    move v4, v9

    :goto_0
    add-int/2addr v0, v1

    add-int/2addr v4, v0

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean v4, p0, Lcom/ubix/ssp/ad/e/t/a/e;->i:Z

    if-eqz v4, :cond_5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v0, p1, :cond_2

    int-to-double v5, v0

    int-to-double v7, p1

    div-double/2addr v5, v7

    goto :goto_1

    :cond_2
    move-wide v5, v3

    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v1, p1, :cond_3

    int-to-double v7, v1

    int-to-double p1, p1

    div-double/2addr v7, p1

    goto :goto_2

    :cond_3
    move-wide v7, v3

    :goto_2
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    div-double/2addr v3, p1

    int-to-double p1, v0

    mul-double/2addr p1, v3

    double-to-int v2, p1

    int-to-double p1, v1

    mul-double/2addr p1, v3

    double-to-int v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/ubix/ssp/ad/e/t/a/e;->a(II)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    new-instance p1, Lcom/ubix/ssp/ad/e/t/a/e$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/t/a/e$a;-><init>(Lcom/ubix/ssp/ad/e/t/a/e;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_4
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_5

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_5
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->m:Landroid/graphics/RectF;

    return-void
.end method

.method public setGifImage(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/t/a/e;->setGifDecoderImage(Ljava/io/InputStream;)V

    return-void
.end method

.method public setGifImage(Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/t/a/e;->setGifDecoderImage(Ljava/io/InputStream;)V

    return-void
.end method

.method public setGifImage([B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/t/a/e;->setGifDecoderImage([B)V

    return-void
.end method

.method public setGifImageType(Lcom/ubix/ssp/ad/e/t/a/e$d;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->a:Lcom/ubix/ssp/ad/e/t/a/c;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->k:Lcom/ubix/ssp/ad/e/t/a/e$d;

    :cond_0
    return-void
.end method

.method public setRoundImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/e;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/e/t/a/e;->a(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setSupportRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/t/a/e;->n:Z

    return-void
.end method
