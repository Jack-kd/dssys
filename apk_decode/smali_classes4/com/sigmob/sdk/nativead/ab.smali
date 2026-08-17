.class public Lcom/sigmob/sdk/nativead/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sigmob/sdk/nativead/a;
.implements Lcom/sigmob/sdk/nativead/ac;
.implements Lcom/sigmob/sdk/nativead/g;
.implements Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;


# static fields
.field private static final M:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/sigmob/sdk/nativead/x;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "ab"

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private G:J

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

.field private K:Z

.field private L:Lcom/sigmob/sdk/nativead/x;

.field private N:Lcom/sigmob/sdk/base/views/q$b;

.field protected b:Lcom/sigmob/windad/natives/WindNativeAdData;

.field protected c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field protected d:Lcom/sigmob/sdk/nativead/k;

.field private i:Lcom/sigmob/sdk/base/models/WindAdMetaData;

.field private j:Lcom/sigmob/sdk/nativead/r;

.field private k:Lcom/sigmob/sdk/nativead/p;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/sigmob/sdk/nativead/f;

.field private o:Lcom/sigmob/sdk/nativead/n;

.field private p:Landroid/view/MotionEvent;

.field private q:Lcom/sigmob/sdk/nativead/e;

.field private r:Lcom/sigmob/windad/natives/NativeADEventListener;

.field private s:Z

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/view/ViewGroup$LayoutParams;

.field private v:Landroid/graphics/Bitmap;

.field private w:Lcom/sigmob/sdk/base/views/q;

.field private x:Z

.field private y:Lcom/sigmob/sdk/nativead/v;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/nativead/ab;->M:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->l:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->B:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->C:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->H:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->I:Ljava/util/List;

    new-instance v0, Lcom/sigmob/sdk/nativead/ab$5;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/ab$5;-><init>(Lcom/sigmob/sdk/nativead/ab;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->N:Lcom/sigmob/sdk/base/views/q$b;

    return-void
.end method

.method private N()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private O()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->P()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->d(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sigmob/sdk/base/views/q;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v1, v0, v2}, Lcom/sigmob/sdk/base/views/q;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->N:Lcom/sigmob/sdk/base/views/q$b;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/q;->a(Lcom/sigmob/sdk/base/views/q$b;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "appinfo"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->x:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFourElements fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private P()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private Q()Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isExpiredAd()Z

    move-result v0

    return v0
.end method

.method private R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic S()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/nativead/ab;->a(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/ab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->v:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/ab;)Landroid/view/View;
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->P()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/HashSet;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 6
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p2}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 7
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p2}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/ab;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 9
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private a(ILandroid/view/MotionEvent;)V
    .locals 9

    .line 11
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->P()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/czhj/sdk/common/utils/TouchLocation;->getTouchLocation(Landroid/view/View;Landroid/view/MotionEvent;)Lcom/czhj/sdk/common/utils/TouchLocation;

    move-result-object v0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->P()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->p:Landroid/view/MotionEvent;

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/TouchLocation;->getTouchLocation(Landroid/view/View;Landroid/view/MotionEvent;)Lcom/czhj/sdk/common/utils/TouchLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    iput-object v1, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->down:Lcom/czhj/sdk/common/utils/TouchLocation;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    iput-object v1, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->up:Lcom/czhj/sdk/common/utils/TouchLocation;

    move-object v6, v0

    move-object v5, v1

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "preview"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    const-string v0, "click"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->R()Z

    move-result p1

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    const-string v7, "material"

    iput-object v7, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iput-boolean v2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->z()V

    return-void

    :cond_4
    move p1, v1

    :goto_1
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableWidgetInteraction()Z

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableDevToRender(I)Z

    move-result v0

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    const-string v7, "component"

    iput-object v7, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->aim:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->cpt_render_type:Ljava/lang/Integer;

    move p1, v1

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string v0, "btn"

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    :cond_6
    iget-boolean p1, p0, Lcom/sigmob/sdk/nativead/ab;->K:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    move-result p1

    if-ne p1, v1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iput-boolean v1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result p1

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iput-boolean v2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    :goto_3
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/sigmob/sdk/base/utils/u;->a(Ljava/lang/String;Landroid/view/MotionEvent;)[Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/f;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_DOWNTS_"

    invoke-virtual {p1, v2, v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "_UPTS_"

    invoke-virtual {p1, v0, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v3

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcom/sigmob/sdk/base/a;->e:Lcom/sigmob/sdk/base/a;

    iget-object v8, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual/range {v3 .. v8}, Lcom/sigmob/sdk/nativead/e;->a(Landroid/content/Context;Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string p2, "appinfo"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iput-boolean v2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1, v0, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_b
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->O()V

    return-void
.end method

.method private a(Landroid/view/ViewParent;II)V
    .locals 6

    .line 16
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableWidgetInteraction()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableDevToRender(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p2, 0x1e

    goto :goto_0

    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p3, p2

    invoke-static {p3, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p3

    const/16 v0, 0x64

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v3, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWidget2Show: minViewSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", minViewSizeDp = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", widgetSizeDp = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {v3, p2, p3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p2, v0

    :goto_0
    if-eqz v1, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_1
    sget-object v0, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWidget2Show: widgetSizeDp = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p2}, Lcom/sigmob/sdk/nativead/ab;->a(II)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWidget2Show: containerW = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", containerH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, p3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/ab;ZLcom/sigmob/sdk/base/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/nativead/ab;->a(ZLcom/sigmob/sdk/base/a;)V

    return-void
.end method

.method private synthetic a(ZLcom/sigmob/sdk/base/a;)V
    .locals 1

    .line 23
    sget-object p2, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/utils/d;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/utils/d$a;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/d;->a(Lcom/sigmob/sdk/base/utils/d$a;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->r:Lcom/sigmob/windad/natives/NativeADEventListener;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/sigmob/windad/natives/NativeADEventListener;->onAdClicked()V

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "click"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/nativead/r;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/ab;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/ab;->A:Z

    return p1
.end method

.method private b(Landroid/view/ViewGroup;)Lcom/sigmob/sdk/nativead/r;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sigmob/sdk/nativead/r;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sigmob/sdk/nativead/r;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/ab;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    return p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/ab;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/ab;->C:Z

    return p1
.end method

.method private c(Landroid/view/ViewGroup;)Lcom/sigmob/sdk/nativead/p;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sigmob/sdk/nativead/p;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sigmob/sdk/nativead/p;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/sigmob/sdk/nativead/ab;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/sigmob/sdk/nativead/ab;->B:Z

    return p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/nativead/ab;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/ab;->B:Z

    return p1
.end method

.method public static synthetic d(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/nativead/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/ab;->y:Lcom/sigmob/sdk/nativead/v;

    return-object p0
.end method

.method private synthetic d(Landroid/view/ViewGroup;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/nativead/ab;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/nativead/ab;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/nativead/ab;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/ab;->x:Z

    return p1
.end method

.method public static synthetic e(Lcom/sigmob/sdk/nativead/ab;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/base/views/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    return-object p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/nativead/ab;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/nativead/ab;->x:Z

    return p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/nativead/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    return-object p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/nativead/ab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->S()V

    return-void
.end method

.method public static synthetic j(Lcom/sigmob/sdk/nativead/ab;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/ab;->d(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public B()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCTAText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->v:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public D()V
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public E()V
    .locals 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/sdk/nativead/ab;->A:Z

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->a()V

    return-void
.end method

.method public F()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->u:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->t:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->t:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->t:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->u:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public G()V
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public H()V
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->d()V

    return-void
.end method

.method public I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->ecpm:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->currency:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getNativeVideo()Lcom/sigmob/sdk/base/models/SigVideo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigVideo;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Lcom/sigmob/sdk/base/models/WindAdMetaData;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->i:Lcom/sigmob/sdk/base/models/WindAdMetaData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/WindAdMetaData;->create(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/WindAdMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->i:Lcom/sigmob/sdk/base/models/WindAdMetaData;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->i:Lcom/sigmob/sdk/base/models/WindAdMetaData;

    return-object v0
.end method

.method public M()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSaasOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Landroid/view/View;
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    int-to-float v2, p2

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    new-instance v3, Lcom/sigmob/sdk/nativead/x;

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/sigmob/sdk/nativead/x;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;II)V

    invoke-virtual {v3}, Lcom/sigmob/sdk/nativead/x;->getCreateWidgetViewResult()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/nativead/B;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/nativead/B;-><init>(Lcom/sigmob/sdk/nativead/ab;)V

    invoke-virtual {v3, v1}, Lcom/sigmob/sdk/nativead/x;->setMotionActionListener(Lcom/sigmob/sdk/nativead/d;)V

    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    if-lt p2, v1, :cond_1

    const/16 p1, 0x46

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e

    :goto_0
    int-to-float p1, p1

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 4
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lcom/sigmob/sdk/nativead/r;

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/ab;->I:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v4, v2, :cond_3

    move-object v0, v3

    move v2, v4

    :cond_3
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/nativead/ab;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    instance-of v4, v3, Lcom/sigmob/sdk/nativead/r;

    if-eqz v4, :cond_5

    return-object v3

    :cond_5
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/ab;->I:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v4, v2, :cond_6

    move-object v0, v3

    move v2, v4

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/i;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 3

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroid/widget/FrameLayout;

    const/16 v2, 0x11

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_1
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6

    .line 13
    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    const-string v1, "prepareWidget2Show: container"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, p2

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lcom/sigmob/sdk/nativead/r;

    if-nez p2, :cond_3

    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    const-string p2, "prepareWidget2Show: no material"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    sget-object p2, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    const-string v1, "prepareWidget2Show: material"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sget-object v3, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareWidget2Show: simpleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", measuredHeight = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", measuredWidth = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1, v2}, Lcom/sigmob/sdk/nativead/ab;->a(Landroid/view/ViewParent;II)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/sigmob/windad/natives/NativeADEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/sigmob/windad/natives/NativeADEventListener;",
            ")V"
        }
    .end annotation

    .line 14
    if-nez p1, :cond_0

    if-eqz p5, :cond_1

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_ADCONTAINER_IS_NULL:Lcom/sigmob/windad/WindAdError;

    invoke-interface {p5, p1}, Lcom/sigmob/windad/natives/NativeADEventListener;->onAdError(Lcom/sigmob/windad/WindAdError;)V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    if-eqz p5, :cond_1

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_ADCONTAINER_NOT_VIEWGROUP:Lcom/sigmob/windad/WindAdError;

    invoke-interface {p5, p1}, Lcom/sigmob/windad/natives/NativeADEventListener;->onAdError(Lcom/sigmob/windad/WindAdError;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/b;->i()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->d(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/b;->a(Landroid/app/Activity;)V

    :cond_3
    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->y:Lcom/sigmob/sdk/nativead/v;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sigmob/sdk/nativead/b;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/nativead/b;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->y:Lcom/sigmob/sdk/nativead/v;

    invoke-interface {v0, p0}, Lcom/sigmob/sdk/nativead/v;->a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    :cond_4
    new-instance v0, Lcom/sigmob/sdk/nativead/ab$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/ab$3;-><init>(Lcom/sigmob/sdk/nativead/ab;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p4

    new-instance v0, Lcom/sigmob/sdk/nativead/ab$4;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/nativead/ab$4;-><init>(Lcom/sigmob/sdk/nativead/ab;Landroid/view/ViewGroup;)V

    invoke-virtual {p4, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-class p4, Lcom/sigmob/sdk/nativead/x;

    invoke-static {p1, p4}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/sigmob/sdk/nativead/x;

    if-eqz p4, :cond_6

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-eq p4, v0, :cond_6

    invoke-static {p4}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    :cond_6
    new-instance p4, Lcom/sigmob/sdk/nativead/C;

    invoke-direct {p4, p0, p1}, Lcom/sigmob/sdk/nativead/C;-><init>(Lcom/sigmob/sdk/nativead/ab;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object p4

    new-instance v0, Lcom/sigmob/sdk/nativead/D;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/D;-><init>(Lcom/sigmob/sdk/nativead/ab;)V

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/common/ac;)V

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-direct {p0, p3}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/sigmob/sdk/nativead/ab;->l:Ljava/util/List;

    :cond_7
    iget-object p3, p0, Lcom/sigmob/sdk/nativead/ab;->H:Ljava/util/List;

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object p4, p0, Lcom/sigmob/sdk/nativead/ab;->H:Ljava/util/List;

    invoke-virtual {p3, p4}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->H:Ljava/util/List;

    :cond_9
    iput-object p5, p0, Lcom/sigmob/sdk/nativead/ab;->r:Lcom/sigmob/windad/natives/NativeADEventListener;

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->o()Lcom/sigmob/sdk/nativead/f;

    move-result-object p2

    iget-object p3, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p3}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p2

    iget-object p3, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2, p3, p4}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    const/4 p3, 0x0

    if-nez p2, :cond_a

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/ab;->c(Landroid/view/ViewGroup;)Lcom/sigmob/sdk/nativead/p;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    if-nez p2, :cond_b

    new-instance p2, Lcom/sigmob/sdk/nativead/p;

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/sigmob/sdk/nativead/p;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p4, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_a
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p4, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->H:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/nativead/p;->setAdVisibilityStatusChangeListener(Lcom/sigmob/sdk/nativead/a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/nativead/e;->s()I

    move-result p2

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sigmob/sdk/nativead/e;->t()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/sigmob/sdk/nativead/p;->a(II)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->K:Z

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/nativead/ab;->b(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/natives/WindNativeAdData;)V
    .locals 1

    .line 17
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getNativeAd()Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;->type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/sigmob/sdk/nativead/r;

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/nativead/r;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->a()Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/sigmob/sdk/nativead/ab$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/ab$1;-><init>(Lcom/sigmob/sdk/nativead/ab;)V

    invoke-virtual {p1, p2, v0}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    return-void
.end method

.method public a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->J:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    return-void
.end method

.method public a(Ljava/util/HashSet;Landroid/view/View$OnTouchListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View$OnTouchListener;",
            ")V"
        }
    .end annotation

    .line 19
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getImageUrlList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->I:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/SigImage;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/sigmob/sdk/nativead/ab;->F:Ljava/util/List;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sigmob/sdk/nativead/ab;->F:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v5, p0, Lcom/sigmob/sdk/nativead/ab;->F:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->a()Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/SigImage;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/czhj/sdk/common/utils/ImageManager;->load(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->placeholder(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->error(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->into(Landroid/widget/ImageView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Ljava/util/List;Landroid/view/View$OnTouchListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View$OnTouchListener;",
            ")V"
        }
    .end annotation

    .line 21
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 22
    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/h;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->r:Lcom/sigmob/windad/natives/NativeADEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sigmob/windad/natives/NativeADEventListener;->onAdExposed()V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v1, "ad_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_2
    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/ab;->z:Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/i;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V
    .locals 4

    .line 3
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/sigmob/sdk/nativead/r;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/s;->getAdUnit()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/nativead/r;->a(Lcom/sigmob/sdk/nativead/ac;)V

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/r;->getSigVideoAdController()Lcom/sigmob/sdk/nativead/t;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_6

    :goto_1
    return-void

    :cond_6
    new-instance v0, Lcom/sigmob/sdk/nativead/ab$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/sigmob/sdk/nativead/ab$2;-><init>(Lcom/sigmob/sdk/nativead/ab;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;Lcom/sigmob/sdk/nativead/t;)V

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/nativead/t;->a(Lcom/sigmob/sdk/nativead/l;)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visibilityStatusChange() called with: isVisible = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 0

    .line 5
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/nativead/t;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/x;->b()V

    sget-object v0, Lcom/sigmob/sdk/nativead/ab;->M:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->a()V

    :cond_1
    const-string v0, "-----------onAdViewPauseImpression---------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->D:Z

    :cond_2
    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 3
    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sigmob/sdk/nativead/ab;->M:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/nativead/x;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1}, Lcom/sigmob/sdk/nativead/x;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->D:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->D:Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/sigmob/sdk/nativead/ab;->M:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/x;->a()V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sigmob/sdk/nativead/ab;->A:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/e;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->c()V

    :cond_3
    const-string v0, "------------onAdViewStartImpression------------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 4
    return-void
.end method

.method public e()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->E:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->E:Z

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sigmob/sdk/nativead/x;->b()V

    sget-object v1, Lcom/sigmob/sdk/nativead/ab;->M:Ljava/util/Stack;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------onAdViewRemoved----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sigmob/sdk/nativead/t;->a()V

    :cond_1
    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->D:Z

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->z:Z

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "ad_hide"

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_3
    iget-boolean v2, p0, Lcom/sigmob/sdk/nativead/ab;->B:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/sigmob/sdk/nativead/ab;->C:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    const-string v2, "video_link"

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 3
    return-void
.end method

.method public f()V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->E:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->E:Z

    sget-object v0, Lcom/sigmob/sdk/nativead/ab;->a:Ljava/lang/String;

    const-string v1, "onAdViewShow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/sigmob/sdk/nativead/ab;->A:Z

    iput-boolean v2, p0, Lcom/sigmob/sdk/nativead/ab;->D:Z

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->P()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v3

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/ab;->N:Lcom/sigmob/sdk/base/views/q$b;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sigmob/sdk/base/common/i;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/q$b;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->F:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->F:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->H:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->l:Ljava/util/List;

    invoke-virtual {p0, v1, p0}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/List;Landroid/view/View$OnTouchListener;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {p0, v0, p0}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/HashSet;Landroid/view/View$OnTouchListener;)V

    :cond_7
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const-string v1, "start"

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    const-string v0, "----------onAdDetailShow----------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/nativead/e;->c(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->r:Lcom/sigmob/windad/natives/NativeADEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sigmob/windad/natives/NativeADEventListener;->onAdDetailShow()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 0

    .line 2
    return-void
.end method

.method public i()V
    .locals 4

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->r:Lcom/sigmob/windad/natives/NativeADEventListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sigmob/windad/natives/NativeADEventListener;->onAdDetailDismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/nativead/e;->d(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->F()V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->n:Lcom/sigmob/sdk/nativead/f;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/nativead/f;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_3
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->P()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->N:Lcom/sigmob/sdk/base/views/q$b;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sigmob/sdk/base/common/i;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/q$b;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public j()Lcom/sigmob/sdk/base/common/ah;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/nativead/i;

    invoke-direct {v0}, Lcom/sigmob/sdk/nativead/i;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1
    return-object v0
.end method

.method public k()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method public l()Lcom/sigmob/windad/natives/WindNativeAdData;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-object v0
.end method

.method public m()Lcom/sigmob/sdk/nativead/n;
    .locals 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/ab;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadPrivacy()Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    return-object v0

    :cond_1
    new-instance v0, Lcom/sigmob/sdk/nativead/n;

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->N()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/nativead/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    invoke-virtual {v2, v0, v1}, Lcom/sigmob/sdk/nativead/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->n:Lcom/sigmob/sdk/nativead/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/nativead/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    return v0
.end method

.method public o()Lcom/sigmob/sdk/nativead/f;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->n:Lcom/sigmob/sdk/nativead/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/nativead/f;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/f;-><init>(Lcom/sigmob/sdk/base/common/p;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->n:Lcom/sigmob/sdk/nativead/f;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->n:Lcom/sigmob/sdk/nativead/f;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->J:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;->onCancel()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->J:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->J:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;->onShow()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "preview"

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/sigmob/sdk/nativead/ab;->G:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sigmob/sdk/nativead/ab;->G:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v2, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    iput-object v0, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    const-string v4, "0"

    iput-object v4, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    if-ne p1, v2, :cond_3

    const-string p1, "click mSigAppInfoView"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, v3, p2}, Lcom/sigmob/sdk/nativead/ab;->a(ILandroid/view/MotionEvent;)V

    return v3

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->l:Ljava/util/List;

    const/4 v4, 0x3

    if-eqz v2, :cond_5

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->l:Ljava/util/List;

    invoke-direct {p0, v2, p2}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/List;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    const-string p1, "click ctaClickView"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string v0, "btn"

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-direct {p0, v4, p2}, Lcom/sigmob/sdk/nativead/ab;->a(ILandroid/view/MotionEvent;)V

    return v3

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/HashSet;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_a

    const-string p1, "click mCreativeViews"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/nativead/r;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x2

    :goto_2
    invoke-direct {p0, v4, p2}, Lcom/sigmob/sdk/nativead/ab;->a(ILandroid/view/MotionEvent;)V

    return v3

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sigmob/sdk/nativead/ab;->G:J

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/ab;->p:Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :goto_3
    const-string p2, "onTouch error"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    return v1
.end method

.method public p()I
    .locals 3

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->P()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    const/16 v2, 0x500

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public q()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    return-object v0
.end method

.method public r()Lcom/sigmob/sdk/nativead/t;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/r;->getSigVideoAdController()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->e()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public t()I
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->j()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public u()I
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->f()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->q()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/ab;->P()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2d0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdPercent()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/HashSet;Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->l:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/List;Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->H:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->r:Lcom/sigmob/windad/natives/NativeADEventListener;

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->d:Lcom/sigmob/sdk/nativead/k;

    return-void
.end method

.method public x()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "native ad data %s is Destroy"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->w()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/r;->c()V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v2, "ad_hide"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/ah;->a()V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/x;->c()V

    sget-object v0, Lcom/sigmob/sdk/nativead/ab;->M:Ljava/util/Stack;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->L:Lcom/sigmob/sdk/nativead/x;

    :cond_4
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/h;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->c()V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->w:Lcom/sigmob/sdk/base/views/q;

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->y:Lcom/sigmob/sdk/nativead/v;

    if-eqz v0, :cond_6

    instance-of v2, v0, Lcom/sigmob/sdk/nativead/b;

    if-eqz v2, :cond_6

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/nativead/v;->a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->y:Lcom/sigmob/sdk/nativead/v;

    check-cast v0, Lcom/sigmob/sdk/nativead/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/b;->b()V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->y:Lcom/sigmob/sdk/nativead/v;

    :cond_6
    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->J:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->N:Lcom/sigmob/sdk/base/views/q$b;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/nativead/p;->setAdVisibilityStatusChangeListener(Lcom/sigmob/sdk/nativead/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->k:Lcom/sigmob/sdk/nativead/p;

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->n:Lcom/sigmob/sdk/nativead/f;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/nativead/f;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->n:Lcom/sigmob/sdk/nativead/f;

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->destroy()V

    :cond_9
    return-void
.end method

.method public y()Lcom/sigmob/sdk/nativead/e;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->q:Lcom/sigmob/sdk/nativead/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/nativead/e;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->q:Lcom/sigmob/sdk/nativead/e;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab;->q:Lcom/sigmob/sdk/nativead/e;

    return-object v0
.end method

.method public z()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/nativead/e;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sigmob/sdk/nativead/ae;

    invoke-direct {v1}, Lcom/sigmob/sdk/nativead/ae;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/nativead/ae;->a(I)V

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/nativead/ae;->b(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/nativead/ae;->c(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/nativead/ae;->d(I)V

    const-string v2, "attr"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->t:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->u:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->j:Lcom/sigmob/sdk/nativead/r;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/m;)V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "_SCENE_"

    const-string v4, "3"

    invoke-virtual {v1, v2, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean v3, p0, Lcom/sigmob/sdk/nativead/ab;->s:Z

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab;->o:Lcom/sigmob/sdk/nativead/n;

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ab;->o()Lcom/sigmob/sdk/nativead/f;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2, v0}, Lcom/sigmob/sdk/nativead/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V

    return-void
.end method
