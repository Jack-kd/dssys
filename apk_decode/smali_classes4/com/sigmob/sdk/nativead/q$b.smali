.class Lcom/sigmob/sdk/nativead/q$b;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/nativead/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/q;

.field private b:Z

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/q;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sigmob/sdk/nativead/q$b;->b:Z

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sigmob/sdk/nativead/q$b;->d:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/q;->d(Lcom/sigmob/sdk/nativead/q;)I

    move-result v0

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/q;->e(Lcom/sigmob/sdk/nativead/q;)I

    move-result v2

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/q;->d(Lcom/sigmob/sdk/nativead/q;)I

    move-result v3

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/q;->e(Lcom/sigmob/sdk/nativead/q;)I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lcom/sigmob/sdk/nativead/q$c;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/q;->f(Lcom/sigmob/sdk/nativead/q;)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Lcom/sigmob/sdk/nativead/q$c;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/q;->g(Lcom/sigmob/sdk/nativead/q;)F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string p1, "END"

    invoke-static {p1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxEms(I)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/q$b;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/q;->a(Lcom/sigmob/sdk/nativead/q;Z)Z

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/q$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/q;->h(Lcom/sigmob/sdk/nativead/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/q;->i(Lcom/sigmob/sdk/nativead/q;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/q;->j(Lcom/sigmob/sdk/nativead/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/q;->k(Lcom/sigmob/sdk/nativead/q;)I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/q$b;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/sigmob/sdk/nativead/q$b;->b:Z

    return p0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/q$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/q;->h(Lcom/sigmob/sdk/nativead/q;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/q;->j(Lcom/sigmob/sdk/nativead/q;)I

    move-result v0

    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/q;->m(Lcom/sigmob/sdk/nativead/q;)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/q$b;->b:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/q$b;->a()V

    return-void
.end method

.method public getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/q;->l(Lcom/sigmob/sdk/nativead/q;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/q$b;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/q$b;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$b;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
