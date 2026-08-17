.class public Lcom/sigmob/sdk/nativead/x;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field public static final a:I = 0x64

.field public static final b:I = 0x46

.field public static final c:I = 0x1e

.field public static final d:I = 0xc

.field private static n:Lcom/sigmob/sdk/base/views/v;

.field private static o:Lcom/sigmob/sdk/base/common/am$a;


# instance fields
.field private e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final f:I

.field private g:Lcom/sigmob/sdk/base/views/v;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/sigmob/sdk/base/common/am$a;

.field private j:Z

.field private k:Lcom/sigmob/sdk/base/models/ClickCommon;

.field private l:Lcom/sigmob/sdk/nativead/d;

.field private m:Z

.field private final p:I

.field private final q:I

.field private final r:I

.field private s:Z

.field private t:Ljava/lang/Boolean;

.field private title:Ljava/lang/String;

.field private final u:I

.field private final v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;II)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/x;->t:Ljava/lang/Boolean;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/nativead/x;->p:I

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/nativead/x;->q:I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/nativead/x;->r:I

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/nativead/x;->f:I

    iput p3, p0, Lcom/sigmob/sdk/nativead/x;->u:I

    iput p4, p0, Lcom/sigmob/sdk/nativead/x;->v:I

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/x;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/x;->k:Lcom/sigmob/sdk/base/models/ClickCommon;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getWidgetId(I)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/nativead/x;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/x;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/sigmob/sdk/nativead/x;->j:Z

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/x;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/x;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/x;->k:Lcom/sigmob/sdk/base/models/ClickCommon;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/views/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->s:Z

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/nativead/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/x;->i()V

    return-void
.end method

.method private e()V
    .locals 4

    new-instance v0, Lcom/sigmob/sdk/base/views/aw;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/aw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    const-string v0, "\u626d\u52a8\u6216\u70b9\u51fb\u524d\u5f80"

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->title:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/nativead/x$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/nativead/x$1;-><init>(Lcom/sigmob/sdk/nativead/x;)V

    sget-object v3, Lcom/sigmob/sdk/base/common/am$d;->b:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/x;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    return-void
.end method

.method private f()V
    .locals 4

    new-instance v0, Lcom/sigmob/sdk/base/views/ac;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    const-string v0, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u524d\u5f80"

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->title:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/nativead/x$2;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/nativead/x$2;-><init>(Lcom/sigmob/sdk/nativead/x;)V

    sget-object v3, Lcom/sigmob/sdk/base/common/am$d;->d:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/x;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Lcom/sigmob/sdk/base/views/am;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    const-string v0, "\u524d\u503e\u6216\u70b9\u51fb\u524d\u5f80"

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->title:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/nativead/x$3;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/nativead/x$3;-><init>(Lcom/sigmob/sdk/nativead/x;)V

    sget-object v3, Lcom/sigmob/sdk/base/common/am$d;->c:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/x;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    return-void
.end method

.method private h()V
    .locals 4

    new-instance v0, Lcom/sigmob/sdk/base/views/ap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    const-string v0, "\u6643\u52a8\u6216\u70b9\u51fb\u524d\u5f80"

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->title:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/nativead/x$4;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/nativead/x$4;-><init>(Lcom/sigmob/sdk/nativead/x;)V

    sget-object v3, Lcom/sigmob/sdk/base/common/am$d;->a:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/x;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->l:Lcom/sigmob/sdk/nativead/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/d;->onAction()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->m:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/nativead/x;->n:Lcom/sigmob/sdk/base/views/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-eq v0, v2, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->b()V

    sput-object v1, Lcom/sigmob/sdk/nativead/x;->n:Lcom/sigmob/sdk/base/views/v;

    :cond_1
    sget-object v0, Lcom/sigmob/sdk/nativead/x;->o:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-eq v0, v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    sput-object v1, Lcom/sigmob/sdk/nativead/x;->o:Lcom/sigmob/sdk/base/common/am$a;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->j:Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->m:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/w;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sigmob/sdk/nativead/x;->o:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-eq v0, v1, :cond_3

    sput-object v1, Lcom/sigmob/sdk/nativead/x;->o:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/sigmob/sdk/nativead/x;->n:Lcom/sigmob/sdk/base/views/v;

    if-eq v0, v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    sput-object v0, Lcom/sigmob/sdk/nativead/x;->n:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->a()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/x;->e()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/x;->f()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/x;->g()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/x;->h()V

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->k:Lcom/sigmob/sdk/base/models/ClickCommon;

    iput p1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->widget_id:I

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/x;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21deb -> :sswitch_3
        0x21ded -> :sswitch_2
        0x21e05 -> :sswitch_1
        0x21e06 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->b()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    :cond_1
    sget-object v0, Lcom/sigmob/sdk/nativead/x;->n:Lcom/sigmob/sdk/base/views/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-ne v0, v2, :cond_2

    sput-object v1, Lcom/sigmob/sdk/nativead/x;->n:Lcom/sigmob/sdk/base/views/v;

    :cond_2
    sget-object v0, Lcom/sigmob/sdk/nativead/x;->o:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-ne v0, v2, :cond_3

    sput-object v1, Lcom/sigmob/sdk/nativead/x;->o:Lcom/sigmob/sdk/base/common/am$a;

    :cond_3
    return-void
.end method

.method public c()V
    .locals 3

    .line 2
    sget-object v0, Lcom/sigmob/sdk/nativead/x;->n:Lcom/sigmob/sdk/base/views/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-ne v0, v2, :cond_0

    sput-object v1, Lcom/sigmob/sdk/nativead/x;->n:Lcom/sigmob/sdk/base/views/v;

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/nativead/x;->o:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-ne v0, v2, :cond_1

    sput-object v1, Lcom/sigmob/sdk/nativead/x;->o:Lcom/sigmob/sdk/base/common/am$a;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->c()V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    :cond_4
    return-void
.end method

.method public getCreateWidgetViewResult()Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->m:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/x;->d()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->m:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->s:Z

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/x;->b()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->s:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/x;->s:Z

    iget v1, p0, Lcom/sigmob/sdk/nativead/x;->u:I

    iget v2, p0, Lcom/sigmob/sdk/nativead/x;->v:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget v2, p0, Lcom/sigmob/sdk/nativead/x;->r:I

    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/x;->t:Ljava/lang/Boolean;

    return-void

    :cond_3
    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v1, :cond_5

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->t:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/v;->a()V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x;->i:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    :cond_6
    iget v2, p0, Lcom/sigmob/sdk/nativead/x;->p:I

    if-ge v1, v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/x;->g:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    const-string v4, "sig_layout_background_radius"

    invoke-static {v2, v4}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v4, p0, Lcom/sigmob/sdk/nativead/x;->f:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/x;->s:Z

    return-void
.end method

.method public setMotionActionListener(Lcom/sigmob/sdk/nativead/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/x;->l:Lcom/sigmob/sdk/nativead/d;

    return-void
.end method
