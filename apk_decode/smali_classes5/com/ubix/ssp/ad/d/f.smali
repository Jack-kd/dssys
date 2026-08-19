.class public Lcom/ubix/ssp/ad/d/f;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/ubix/ssp/ad/e/b0/d;

.field private b:Lcom/ubix/ssp/ad/e/t/a/e;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:J

.field private f:J

.field private g:Lcom/ubix/ssp/ad/g/k/g;

.field private h:Z

.field private i:Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

.field private j:Z

.field private k:D

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lcom/ubix/ssp/ad/g/k/g;

.field private r:Z

.field private volatile s:Z

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/Rect;

.field volatile v:Z

.field w:J

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/f;->e:J

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/f;->f:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/d/f;->h:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/d/f;->j:Z

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    iput-wide v4, p0, Lcom/ubix/ssp/ad/d/f;->k:D

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/d/f;->l:Z

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/d/f;->m:Z

    const/4 v4, 0x2

    iput v4, p0, Lcom/ubix/ssp/ad/d/f;->n:I

    const-string v5, ""

    iput-object v5, p0, Lcom/ubix/ssp/ad/d/f;->p:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/d/f;->r:Z

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/d/f;->s:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/ubix/ssp/ad/d/f;->t:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/ubix/ssp/ad/d/f;->u:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/d/f;->v:Z

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/f;->w:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/f;->k:D

    const-string v0, "AUTO_PLAY"

    invoke-virtual {p2, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/d/f;->n:I

    const-string v0, "DO_NOT_RESTRICT_SIZE"

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/f;->j:Z

    const-string v0, "VIDEO_RENDER_TYPE"

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/d/f;->o:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/f;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-direct {v0, p1}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/f;->b:Lcom/ubix/ssp/ad/e/t/a/e;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/f;->c:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->b:Lcom/ubix/ssp/ad/e/t/a/e;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->b:Lcom/ubix/ssp/ad/e/t/a/e;

    const v0, 0x30d58

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->c:Landroid/widget/ImageView;

    const v0, 0x1e8491

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->d:Landroid/widget/ImageView;

    const v0, 0x30d53

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->c:Landroid/widget/ImageView;

    const-string v0, "ubix/ic_auto_play.webp"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "AUTO_MUTE"

    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/f;->l:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/f;->r:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->d:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->b:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "IS_DOWNLOAD"

    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    if-eqz p1, :cond_0

    const-string p1, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "BUTTON_TEXT"

    invoke-virtual {p2, v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    const-string p1, "TEXT_SIZE"

    const/16 v1, 0xa

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/d/f;->a(Ljava/lang/String;I)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/d/f;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/f;->f:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/b0/d;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/d/f;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/f;->m:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/d/f;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/f;->e:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/d/f;)Landroid/widget/ImageView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/d/f;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/d/f;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/f;->h:Z

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/ad/e/t/a/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/d/f;->b:Lcom/ubix/ssp/ad/e/t/a/e;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/d/f;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/f;->s:Z

    return p1
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/d/f;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/d/f;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/d/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/d/f;->m:Z

    return p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/d/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/d/f;->l:Z

    return p0
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/d/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/d/f;->h:Z

    return p0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/d/f;)Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/d/f;->i:Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/widget/RelativeLayout;
    .locals 6

    .line 2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x1ed2a1

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, 0x1e8490

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    int-to-float p2, p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p2, -0x1

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 p1, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, p1

    double-to-int p1, v0

    invoke-virtual {v4, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, -0xbf6101

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p1, 0xd

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "#99000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    return-object v2
.end method

.method public a()V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/d;->p()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 5

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "__DOWN_X__"

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "__DOWN_Y__"

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "__RAW_DOWN_X__"

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "__RAW_DOWN_Y__"

    goto/16 :goto_0

    :cond_0
    :try_start_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "__UP_X__"

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "__UP_Y__"

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "__WIDTH__"

    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v2, "__HEIGHT__"

    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v2, "__RAW_UP_X__"

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v2, "__RAW_UP_Y__"

    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "__CLICK_XY__"

    :goto_0
    :try_start_c
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ubix/ssp/ad/g/k/g;)V
    .locals 1

    .line 6
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/f;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/ubix/ssp/ad/d/f;->q:Lcom/ubix/ssp/ad/g/k/g;

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/d/f;->b(Ljava/lang/String;Lcom/ubix/ssp/ad/g/k/g;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/f;->v:Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/d/f;->setAutoPlay(Z)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/b0/d;->a(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->j()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/ubix/ssp/ad/g/k/g;)V
    .locals 6

    .line 4
    iput-object p2, p0, Lcom/ubix/ssp/ad/d/f;->g:Lcom/ubix/ssp/ad/g/k/g;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz v0, :cond_0

    const-string v1, ""

    const/4 v5, 0x1

    invoke-virtual {v0, p1, v1, v5}, Lcom/ubix/ssp/ad/e/b0/e;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoImageDisplayType(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/f;->e:J

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    new-instance v0, Lcom/ubix/ssp/ad/d/f$a;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ubix/ssp/ad/d/f$a;-><init>(Lcom/ubix/ssp/ad/d/f;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/ubix/ssp/ad/g/k/g;)V

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoViewListener(Lcom/ubix/ssp/ad/g/k/j;)V

    :cond_0
    return-void
.end method

.method public getCoverImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->b:Lcom/ubix/ssp/ad/e/t/a/e;

    return-object v0
.end method

.method public getCurrentDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/f;->f:J

    return-wide v0
.end method

.method public onAttachedToWindow()V
    .locals 8

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/f;->s:Z

    if-nez v0, :cond_4

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, p0, Lcom/ubix/ssp/ad/d/f;->n:I

    const/4 v3, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    iget v0, p0, Lcom/ubix/ssp/ad/d/f;->o:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->isUseTextureView()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    iget-wide v5, p0, Lcom/ubix/ssp/ad/d/f;->w:J

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/b0/d;-><init>(Landroid/content/Context;ZIJ)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    const v0, 0x30d4f

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/d/f;->r:Z

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/d;->setMute(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {p0, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/f;->v:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/f;->q:Lcom/ubix/ssp/ad/g/k/g;

    invoke-virtual {p0, v0, v1}, Lcom/ubix/ssp/ad/d/f;->b(Ljava/lang/String;Lcom/ubix/ssp/ad/g/k/g;)V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x30d53

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->g:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->x:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v0}, Lcom/ubix/ssp/ad/g/k/g;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->d:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    if-nez p1, :cond_1

    const-string p1, "ubix/ic_volume_off.webp"

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "ubix/ic_volume_on.webp"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    iget-boolean p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/f;->r:Z

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/d/f;->setVideoMute(Z)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/f;->w:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/f;->w:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/f;->w:J

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/d;->p()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/f;->v:Z

    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x30d59

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const v8, 0x30d41

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v1, v9, v3, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v4, v8

    sub-int/2addr v8, v6

    sub-int v9, v4, v6

    invoke-virtual {v7, v1, v8, v3, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :sswitch_1
    sub-int v8, v3, v1

    sub-int v9, v4, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    div-int/lit8 v8, v8, 0x5

    sub-int v9, v3, v8

    div-int/lit8 v9, v9, 0x2

    sub-int v10, v4, v8

    div-int/lit8 v10, v10, 0x2

    add-int v11, v3, v8

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :sswitch_2
    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v8

    :goto_1
    sub-int v8, v4, v8

    invoke-virtual {v7, v1, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :sswitch_3
    sub-int v8, v3, v1

    sub-int v10, v4, v2

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    const v10, 0x1ef9b1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    div-int/lit8 v11, v3, 0xe

    int-to-double v11, v11

    iget-wide v13, v0, Lcom/ubix/ssp/ad/d/f;->k:D

    const-wide/high16 v15, 0x4038000000000000L    # 24.0

    mul-double/2addr v13, v15

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    double-to-int v11, v11

    if-eqz v10, :cond_3

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    :cond_2
    div-int/lit8 v8, v8, 0x10

    sub-int v8, v3, v8

    sub-int v9, v8, v11

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v7, v9, v11, v8, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_3
    div-int/lit8 v9, v8, 0x10

    sub-int v10, v3, v9

    sub-int v12, v10, v11

    sub-int v9, v4, v9

    div-int/lit8 v8, v8, 0x1c

    sub-int/2addr v9, v8

    sub-int v8, v9, v11

    invoke-virtual {v7, v12, v8, v10, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :sswitch_4
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :sswitch_5
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x30d41 -> :sswitch_5
        0x30d4f -> :sswitch_4
        0x30d53 -> :sswitch_3
        0x30d58 -> :sswitch_4
        0x30d59 -> :sswitch_2
        0x1e8491 -> :sswitch_1
        0x1ed2a1 -> :sswitch_4
        0x1f47d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/f;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure MeasureSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0x10

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/d/f;->a(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setAutoPlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/d;->setAutoPlay(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e;->j()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/f;->i:Lcom/ubix/ssp/open/nativee/UBiXVideoInteractionListener;

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/f;->r:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->a:Lcom/ubix/ssp/ad/e/b0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/d;->setMute(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/f;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string p1, "ubix/ic_volume_off.webp"

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "ubix/ic_volume_on.webp"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
