.class public Lcom/sigmob/sdk/mraid2/s;
.super Lcom/sigmob/sdk/videoAd/b;


# static fields
.field public static final f:Ljava/lang/String; = "s"


# instance fields
.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Bundle;

.field private i:I

.field private j:Z

.field private k:Lcom/sigmob/sdk/mraid2/e;

.field private l:Lcom/sigmob/sdk/base/views/ar;

.field private m:Lcom/sigmob/sdk/nativead/b;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/sigmob/sdk/base/views/w;

.field private final s:Landroid/os/Handler;

.field private t:Z

.field private final u:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
    .locals 0

    invoke-direct {p0, p1, p5, p6}, Lcom/sigmob/sdk/videoAd/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/s;->o:Z

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/s;->p:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/s;->q:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->s:Landroid/os/Handler;

    new-instance p1, Lcom/sigmob/sdk/mraid2/s$3;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid2/s$3;-><init>(Lcom/sigmob/sdk/mraid2/s;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/s;->h:Landroid/os/Bundle;

    invoke-static {}, Lcom/sigmob/sdk/mraid2/b;->a()Lcom/sigmob/sdk/mraid2/b;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/b;->a(Ljava/lang/String;)Lcom/sigmob/sdk/mraid2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sigmob/sdk/mraid2/e;

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/sigmob/sdk/mraid2/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    :cond_0
    new-instance p1, Lcom/sigmob/sdk/mraid2/T;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid2/T;-><init>(Lcom/sigmob/sdk/mraid2/s;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/s;)Landroid/view/ViewGroup;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid2/s;->t:Z

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/sdk/mraid2/e;->a(Landroid/view/WindowInsets;Z)V

    return-object p2
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/nativead/b;)Lcom/sigmob/sdk/nativead/b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->m:Lcom/sigmob/sdk/nativead/b;

    return-object p1
.end method

.method private a(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    .line 5
    const/high16 v0, 0x41200000    # 10.0f

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xb

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 p1, v0, 0x2

    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0x9

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->r:Lcom/sigmob/sdk/base/views/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->r:Lcom/sigmob/sdk/base/views/w;

    const-string v1, "\u53cd\u9988"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->r:Lcom/sigmob/sdk/base/views/w;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/s;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->r:Lcom/sigmob/sdk/base/views/w;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/high16 v0, 0x40400000    # 3.0f

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v3, 0x6

    invoke-virtual {v1, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    neg-int p1, v0

    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->r:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->r:Lcom/sigmob/sdk/base/views/w;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/ClickCommon;Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 1

    .line 9
    instance-of v0, p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_desc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_desc(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setIs_deeplink(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickUrl:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickCoordinate:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setCoordinate(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.2f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setVtime(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cwidth"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cheight"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 11

    .line 10
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/common/an;

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sigmob/sdk/base/common/an;->a(Landroid/net/Uri;I)Z

    move-result v0

    const-class v3, Lcom/sigmob/sdk/base/common/AdActivity;

    const-string v5, "android.intent.action.VIEW"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    if-eqz v0, :cond_3

    if-eqz p7, :cond_1

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRecord(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_0
    invoke-virtual {p2, v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRecord(Z)V

    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v2, v3, v0}, Lcom/sigmob/sdk/base/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/utils/h;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object v6, v8

    goto/16 :goto_c

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/utils/h;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    move-object v7, v0

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object v6, v7

    goto/16 :goto_c

    :cond_3
    :try_start_2
    invoke-static {p2}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez p2, :cond_4

    move-object v9, v7

    goto :goto_4

    :cond_4
    iget-object v9, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMarketPackageNameList()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v0, v10}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p2, v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableSmallWindow(Ljava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v6

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_5
    move v10, v4

    :goto_5
    invoke-static {v2, v0, v9, v10}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_6
    invoke-static {v7}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    :goto_7
    :try_start_3
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v9, "0"

    iput-object v9, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    const-string v0, "open_deeplink_failed"

    invoke-static {p2, v0, p4}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_b

    :cond_6
    :goto_8
    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static/range {p6 .. p6}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p7, :cond_8

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRecord(Z)V

    :goto_9
    move-object/from16 v1, p6

    goto :goto_a

    :cond_7
    invoke-virtual {p2, v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRecord(Z)V

    move-object v0, p2

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v2, v3, v0}, Lcom/sigmob/sdk/base/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v1, p6

    new-instance v0, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/utils/h;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    :cond_9
    move-object v7, v8

    goto/16 :goto_3

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :goto_c
    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    .line 11
    const-string v0, "click"

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object p1

    :try_start_0
    invoke-static {p5}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_failed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_2

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object p5

    const-string v1, "click_lose_rate"

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "click_cb_state"

    sget v3, Lcom/sigmob/sdk/base/utils/d;->b:I

    invoke-virtual {p4, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5, v3, v4}, Lcom/sigmob/sdk/base/utils/d;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p5

    const-string v3, "_ISNC_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v3, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p5, Lcom/sigmob/sdk/base/models/ClickCommon;->click_lose_rate:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p5, Lcom/sigmob/sdk/base/models/ClickCommon;->click_cb_state:Ljava/lang/Integer;

    :cond_2
    :goto_0
    const-string p5, "action.interstitial.click"

    invoke-virtual {p0, p5}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_success"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, ""

    invoke-virtual {p1, p3, p5}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isRecord()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    if-nez p4, :cond_5

    const/4 p3, 0x0

    goto :goto_1

    :cond_5
    const-string p3, "category"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_6

    goto :goto_2

    :cond_6
    sget-object p3, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    :goto_2
    new-instance p5, Lcom/sigmob/sdk/mraid2/U;

    invoke-direct {p5, p2, p1, p4}, Lcom/sigmob/sdk/mraid2/U;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/ClickCommon;Lorg/json/JSONObject;)V

    invoke-static {p3, v0, p2, p5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-static {p4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "click_area"

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "companion"

    invoke-static {p1, p3}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    return-void

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p7}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/s;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/e;->c()Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/mraid2/d;->a(Z)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iput-boolean p2, p0, Lcom/sigmob/sdk/mraid2/s;->o:Z

    iput-boolean p2, p0, Lcom/sigmob/sdk/mraid2/s;->n:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->a()V

    :cond_0
    return p2
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/s;Landroid/app/Dialog;)Z
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/app/Dialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/s;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/s;->t:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/s;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/base/views/ar;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    const/high16 p2, 0x41b00000    # 22.0f

    invoke-static {p2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/s;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    new-instance p2, Lcom/sigmob/sdk/mraid2/S;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/mraid2/S;-><init>(Lcom/sigmob/sdk/mraid2/s;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/ar;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/s;Landroid/app/Dialog;)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/app/Dialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/s;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/s;->o:Z

    return p1
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/nativead/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/s;->m:Lcom/sigmob/sdk/nativead/b;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid2/s;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/s;->j:Z

    return p1
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid2/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/s;->q()V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid2/s;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/s;->p:Z

    return p1
.end method

.method public static synthetic e(Lcom/sigmob/sdk/mraid2/s;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    return-object p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/mraid2/s;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    return-object p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    return-object p0
.end method

.method public static synthetic j(Lcom/sigmob/sdk/mraid2/s;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid2/s;->j:Z

    return p0
.end method

.method public static synthetic k(Lcom/sigmob/sdk/mraid2/s;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic l(Lcom/sigmob/sdk/mraid2/s;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic m(Lcom/sigmob/sdk/mraid2/s;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sigmob/sdk/mraid2/s;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/sigmob/sdk/mraid2/s;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/s;->r()V

    return-void
.end method

.method public static synthetic p(Lcom/sigmob/sdk/mraid2/s;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/s;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private p()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid2/s;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :goto_0
    const-string v2, "h5_state"

    const-string v3, "0"

    invoke-static {v2, v3, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static synthetic p(Lcom/sigmob/sdk/mraid2/s;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/s;->s()V

    return-void
.end method

.method public static synthetic q(Lcom/sigmob/sdk/mraid2/s;)Landroid/app/Activity;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private q()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->m:Lcom/sigmob/sdk/nativead/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->m:Lcom/sigmob/sdk/nativead/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->m:Lcom/sigmob/sdk/nativead/b;

    return-void
.end method

.method public static synthetic q(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/ClickCommon;Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/ClickCommon;Lorg/json/JSONObject;Ljava/lang/Object;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->r:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic r(Lcom/sigmob/sdk/mraid2/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/s;->p()V

    return-void
.end method

.method private s()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid2/s;->b(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->l:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid2/s;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic s(Lcom/sigmob/sdk/mraid2/s;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/s;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/mraid2/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/mraid2/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/base/common/g;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    new-instance v1, Lcom/sigmob/sdk/mraid2/s$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid2/s$1;-><init>(Lcom/sigmob/sdk/mraid2/s;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/f;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    new-instance v1, Lcom/sigmob/sdk/mraid2/s$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid2/s$2;-><init>(Lcom/sigmob/sdk/mraid2/s;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/m;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/e;->e()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid2/e;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 8
    return-void
.end method

.method public e()V
    .locals 4

    .line 2
    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/b;->e()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1000400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/mraid2/s;->i:I

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/s;->h:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/b;->b(Landroid/content/Context;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->theme_data:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateType()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->b()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v2, 0x7f

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/s;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid2/s;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid2/s;->q:Z

    const-string v0, "action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/e;->a()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/e;->b()V

    return-void
.end method

.method public h()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/e;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/s;->q()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid2/s;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ad_close"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->destroy()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid2/s;->o:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid2/s;->q:Z

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid2/s;->q:Z

    const-string v0, "action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/Sigmob;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->clearMacro()V

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/j;->h()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 2
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->k:Lcom/sigmob/sdk/mraid2/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s;->s:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/mraid2/Q;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid2/Q;-><init>(Lcom/sigmob/sdk/mraid2/s;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "action.interstitial.vopen"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method
