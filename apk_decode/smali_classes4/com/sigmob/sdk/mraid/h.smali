.class public Lcom/sigmob/sdk/mraid/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/h$c;,
        Lcom/sigmob/sdk/mraid/h$d;,
        Lcom/sigmob/sdk/mraid/h$b;,
        Lcom/sigmob/sdk/mraid/h$e;,
        Lcom/sigmob/sdk/mraid/h$f;,
        Lcom/sigmob/sdk/mraid/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MraidController"


# instance fields
.field private A:Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

.field private B:Z

.field private C:Lcom/sigmob/sdk/base/common/g;

.field private D:Landroid/view/WindowInsets;

.field private final b:Lcom/sigmob/sdk/base/models/PlacementType;

.field private final c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Lcom/sigmob/sdk/mraid/h$d;

.field private final f:Lcom/sigmob/sdk/mraid/q;

.field private final g:Lcom/sigmob/sdk/mraid/c;

.field private final h:Lcom/sigmob/sdk/mraid/m;

.field private i:Z

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/String;

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/sigmob/sdk/base/models/ViewState;

.field private n:Lcom/sigmob/sdk/mraid/h$a;

.field private o:Lcom/sigmob/sdk/mraid/h$e;

.field private p:Lcom/sigmob/sdk/mraid/x;

.field private q:Lcom/sigmob/sdk/mraid/h$f;

.field private r:Lcom/sigmob/sdk/mraid/v;

.field private s:Lcom/sigmob/sdk/mraid/h$c;

.field private t:Ljava/lang/Integer;

.field private u:Z

.field private v:Lcom/sigmob/sdk/mraid/p;

.field private w:Z

.field private final x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/mraid/n;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/sigmob/sdk/mraid/e;

.field private final z:Lcom/sigmob/sdk/mraid/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/sigmob/sdk/mraid/c;

    invoke-direct {v4, p2, p3}, Lcom/sigmob/sdk/mraid/c;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    new-instance v6, Lcom/sigmob/sdk/mraid/h$d;

    invoke-direct {v6}, Lcom/sigmob/sdk/mraid/h$d;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/c;Lcom/sigmob/sdk/mraid/c;Lcom/sigmob/sdk/mraid/h$d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/c;Lcom/sigmob/sdk/mraid/c;Lcom/sigmob/sdk/mraid/h$d;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/sigmob/sdk/mraid/h;->i:Z

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v1, Lcom/sigmob/sdk/mraid/h$c;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/h$c;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/h$c;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/sdk/mraid/h;->u:Z

    sget-object v1, Lcom/sigmob/sdk/mraid/p;->c:Lcom/sigmob/sdk/mraid/p;

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/h;->v:Lcom/sigmob/sdk/mraid/p;

    iput-boolean p5, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/h;->x:Ljava/util/HashMap;

    new-instance v1, Lcom/sigmob/sdk/mraid/h$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/h$1;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/h;->y:Lcom/sigmob/sdk/mraid/e;

    new-instance v2, Lcom/sigmob/sdk/mraid/h$2;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/h$2;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->z:Lcom/sigmob/sdk/mraid/d;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/h;->b:Lcom/sigmob/sdk/base/models/PlacementType;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iput-object p6, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/mraid/h$d;

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    new-instance p3, Lcom/sigmob/sdk/mraid/q;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p3, p1, p2}, Lcom/sigmob/sdk/mraid/q;-><init>(Landroid/content/Context;F)V

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    invoke-virtual {v3, p5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p3, Lcom/sigmob/sdk/mraid/F;

    invoke-direct {p3}, Lcom/sigmob/sdk/mraid/F;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/h$c;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/mraid/h$c;->a(Landroid/content/Context;)V

    invoke-virtual {p4, v2}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/d;)V

    invoke-virtual {p4, v1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/e;)V

    new-instance p1, Lcom/sigmob/sdk/mraid/m;

    invoke-direct {p1}, Lcom/sigmob/sdk/mraid/m;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->h:Lcom/sigmob/sdk/mraid/m;

    return-void
.end method

.method private synthetic A()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/h$e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sigmob/sdk/mraid/h;->i:Z

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid/h$e;->useCustomCloseChanged(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;F)F
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/v;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    return-object p0
.end method

.method private synthetic a(Landroid/content/Context;)V
    .locals 10

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    new-instance v1, Lcom/sigmob/sdk/base/models/MraidEnv;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/MraidEnv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/MraidEnv;)V

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->h:Lcom/sigmob/sdk/mraid/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/m;->b(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->h:Lcom/sigmob/sdk/mraid/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/m;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/m;->d(Landroid/content/Context;)Z

    move-result v5

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/m;->c(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->h()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/sigmob/sdk/mraid/c;->a(ZZZZZZZ)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/PlacementType;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->D:Landroid/view/WindowInsets;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->a(Landroid/view/WindowInsets;)Lcom/sigmob/sdk/base/utils/l;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->d()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/mraid/c;->a(IIII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProxyVideoUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_size:Lcom/czhj/sdk/common/models/Size;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/base/models/VideoItem;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_size:Lcom/czhj/sdk/common/models/Size;

    iget-object v1, v1, Lcom/czhj/sdk/common/models/Size;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_size:Lcom/czhj/sdk/common/models/Size;

    iget-object v2, v2, Lcom/czhj/sdk/common/models/Size;->height:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/models/VideoItem;-><init>(Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sigmob/sdk/base/models/VideoItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/sigmob/sdk/base/models/VideoItem;-><init>(Ljava/lang/String;II)V

    :goto_1
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/VideoItem;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->f()Ljava/lang/Integer;

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->has_companion_endcard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->companion(Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    :cond_3
    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->html_snippet(Lcom/czhj/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->html_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->deeplink_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->landing_page(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->web_event_handle(Lcom/sigmob/sdk/base/models/WebEventHandle;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->endcard_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/Ad;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->materials(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_tracking(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSlotAdSetting()Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/rtb/Ad;Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v0, "handleMraidLoad"

    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-boolean p1, p0, Lcom/sigmob/sdk/mraid/h;->B:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->k()V

    :cond_4
    return-void
.end method

.method public static a(Lcom/sigmob/sdk/mraid/h$a;Lcom/sigmob/sdk/base/models/ViewState;Lcom/sigmob/sdk/base/models/ViewState;)V
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/czhj/sdk/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 10

    .line 23
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/mraid/h$d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h$d;->a()V

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->w()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->g()Lcom/sigmob/sdk/mraid/v;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->C:Lcom/sigmob/sdk/base/common/g;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3, v0}, Lcom/sigmob/sdk/mraid/q;->a(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/g;->a()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->C:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/g;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/mraid/q;->a(II)V

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->z()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v3, v5, v7, v8, v9}, Lcom/sigmob/sdk/mraid/q;->a(IIII)V

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    aget v5, v0, v4

    aget v7, v0, v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v3, v5, v7, v8, v2}, Lcom/sigmob/sdk/mraid/q;->c(IIII)V

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    aget v3, v0, v4

    aget v0, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/sigmob/sdk/mraid/q;->b(IIII)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getOrientationInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    const-string v0, "portrait"

    goto :goto_1

    :cond_2
    const-string v0, "landscape"

    :goto_1
    new-instance v1, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;

    invoke-direct {v1, v0, v6}, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/q;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    const-string v0, "ext"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctime"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "showSkipTime"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v7

    goto :goto_1

    :sswitch_1
    const-string v2, "voice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_1

    :sswitch_2
    const-string v2, "skipAd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "reward"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v8

    goto :goto_1

    :sswitch_4
    const-string v2, "companionClick"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "endcardShow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz p1, :cond_9

    if-eq p1, v8, :cond_8

    if-eq p1, v6, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$a;->b()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/mraid/h$a;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$a;->a()V

    return-void

    :cond_5
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v5, v8

    :cond_7
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    invoke-interface {p1, v5}, Lcom/sigmob/sdk/mraid/h$a;->a(Z)V

    return-void

    :cond_8
    invoke-direct {p0, v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;F)F

    move-result p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/mraid/h$a;->a(F)V

    return-void

    :cond_9
    invoke-direct {p0, v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;F)F

    move-result p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/mraid/h$a;->b(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_a
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ff9bff8 -> :sswitch_5
        -0x41b70624 -> :sswitch_4
        -0x37b0b0d1 -> :sswitch_3
        -0x35ad75fe -> :sswitch_2
        0x6b2e132 -> :sswitch_1
        0x4d18c709 -> :sswitch_0
    .end sparse-switch
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 33
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/h;->x:Ljava/util/HashMap;

    return-object p0
.end method

.method private b(Lcom/sigmob/sdk/base/models/ViewState;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    if-eqz v1, :cond_0

    invoke-static {v1, v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h$a;Lcom/sigmob/sdk/base/models/ViewState;Lcom/sigmob/sdk/base/models/ViewState;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewState state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "AdPlaying"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "AdClickThru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "AdVideoStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "AdError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "AdVideoFirstQuartile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "AdVideoComplete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "AdVideoMidpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "AdVideoThirdQuartile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "AdImpression"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "AdPaused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$f;->c()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/mraid/h$f;->a(Ljava/util/Map;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$f;->h()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/mraid/h$f;->b(Ljava/util/Map;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$f;->e()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$f;->d()V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$f;->g()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$f;->f()V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$f;->a()V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/h$f;->b()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67d2f0af -> :sswitch_9
        -0x648cc154 -> :sswitch_8
        -0x5b14d70e -> :sswitch_7
        -0x369ee9a0 -> :sswitch_6
        0x754eb51 -> :sswitch_5
        0x160d1d3b -> :sswitch_4
        0x1d1b8b85 -> :sswitch_3
        0x332b014a -> :sswitch_2
        0x3d13385c -> :sswitch_1
        0x7f231e6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    return-object p0
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 4

    .line 3
    :try_start_0
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->j:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/h$f;->a(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    return-object p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/mraid/h;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    return p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/mraid/h;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->x()I

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/mraid/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->A()V

    return-void
.end method

.method public static synthetic j(Lcom/sigmob/sdk/mraid/h;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic k(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private w()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private x()I
    .locals 2

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->w()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/v;->destroy()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detachMraidWebView: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MraidController"

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    :cond_1
    :goto_1
    return-void
.end method

.method private z()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->w()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    :goto_0
    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public a(III)I
    .locals 0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOrientationChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/sigmob/sdk/mraid/q;->a(IIII)V

    return-void
.end method

.method public a(IIIILcom/sigmob/sdk/mraid/b$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/mraid/f;
        }
    .end annotation

    .line 8
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sigmob/sdk/mraid/G;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/G;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    const/16 v1, 0x1388

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/view/WindowInsets;)V
    .locals 4

    .line 11
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->D:Landroid/view/WindowInsets;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWindowInsets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->B:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->a(Landroid/view/WindowInsets;)Lcom/sigmob/sdk/base/utils/l;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->d()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/mraid/c;->a(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/ValueCallback;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/g;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->C:Lcom/sigmob/sdk/base/common/g;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/ViewState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/h$a;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/h$c;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/h$c;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/h$e;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/h$e;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/h$f;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/x;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/x;

    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/h$a;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/h$b;)V
    .locals 3

    .line 25
    new-instance v0, Lcom/sigmob/sdk/mraid/v;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->w()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/g;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/v;

    invoke-interface {p2, v0, v1}, Lcom/sigmob/sdk/mraid/h$b;->onReady(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/v;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->w()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/net/URI;ILjava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/h$a;->a(Ljava/net/URI;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/mraid/f;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 31
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/c;->f()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/c;->g()V

    return-void
.end method

.method public a(ZLcom/sigmob/sdk/mraid/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/mraid/f;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/p;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/h;->u:Z

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/h;->v:Lcom/sigmob/sdk/mraid/p;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object p2, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->b:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object p2, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->o()V

    return-void

    :cond_2
    new-instance p1, Lcom/sigmob/sdk/mraid/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to force orientation to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/mraid/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/x;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/mraid/p;)Z
    .locals 6

    .line 35
    sget-object v0, Lcom/sigmob/sdk/mraid/p;->c:Lcom/sigmob/sdk/mraid/p;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/p;->a()I

    move-result p1

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    return v1

    :catch_0
    return v2
.end method

.method public a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/x;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 2

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Z)V

    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/mraid/f;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->v:Lcom/sigmob/sdk/mraid/p;

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->t:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/h;->t:Ljava/lang/Integer;

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lockOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Lcom/sigmob/sdk/mraid/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->v:Lcom/sigmob/sdk/mraid/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sigmob/sdk/mraid/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/mraid/h$b;)V
    .locals 3

    .line 7
    new-instance v0, Lcom/sigmob/sdk/mraid/v;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->w()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/g;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/v;

    invoke-interface {p2, v0, v1}, Lcom/sigmob/sdk/mraid/h$b;->onReady(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/v;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/mraid/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 9
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/c;->h()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/c;->g()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/c;->i()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/ExposureChange;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->z()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->z()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {v0, v3, v1, v2}, Lcom/sigmob/sdk/base/models/ExposureChange;-><init>(FLandroid/graphics/Rect;Ljava/util/List;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/ExposureChange;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/g;->b(Z)V

    :cond_0
    return-void
.end method

.method public e()Lcom/sigmob/sdk/mraid/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    return-object v0
.end method

.method public e(Z)V
    .locals 1

    .line 3
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/h;->i:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/h$e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/h$e;->useCustomCloseChanged(Z)V

    return-void
.end method

.method public f()Ljava/lang/Integer;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    new-instance v1, Lcom/sigmob/sdk/mraid/H;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/H;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->b(Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/sigmob/sdk/mraid/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    return-object v0
.end method

.method public h()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->g()Lcom/sigmob/sdk/mraid/v;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->b:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v2, Lcom/sigmob/sdk/base/models/PlacementType;->INLINE:Lcom/sigmob/sdk/base/models/PlacementType;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->h:Lcom/sigmob/sdk/mraid/m;

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->g()Lcom/sigmob/sdk/mraid/v;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/mraid/m;->a(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->w()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getOrientationInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "portrait"

    goto :goto_0

    :cond_1
    const-string v1, "landscape"

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->C:Lcom/sigmob/sdk/base/common/g;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4, v0}, Lcom/sigmob/sdk/mraid/q;->a(II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/g;->a()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->C:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/g;->b()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sigmob/sdk/mraid/q;->a(II)V

    :goto_1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->z()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v0}, Lcom/sigmob/sdk/mraid/q;->a(IIII)V

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    invoke-virtual {v4, v5, v5, v3, v0}, Lcom/sigmob/sdk/mraid/q;->c(IIII)V

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    invoke-virtual {v4, v5, v5, v3, v0}, Lcom/sigmob/sdk/mraid/q;->b(IIII)V

    new-instance v0, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->f:Lcom/sigmob/sdk/mraid/q;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/q;)V

    return-void
.end method

.method public j()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->w()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid/E;

    invoke-direct {v2, p0, v0}, Lcom/sigmob/sdk/mraid/E;-><init>(Lcom/sigmob/sdk/mraid/h;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->B:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->i()V

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/base/models/ViewState;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->d()V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/c;->e()V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/c;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->j()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->o()V

    invoke-static {}, Lcom/sigmob/sdk/b;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->g:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/c;->a(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :try_start_2
    const-string v0, "Failed to apply orientation."

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "handlePageLoad error"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 6

    const-string v0, "destroy: error = "

    const-string v1, "MraidController"

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/mraid/h$d;

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/h$d;->a()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/h$e;

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->x:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/mraid/n;

    invoke-virtual {v4}, Lcom/sigmob/sdk/mraid/n;->b()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/h$c;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/h$c;

    invoke-virtual {v4}, Lcom/sigmob/sdk/mraid/h$c;->a()V

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/h$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->A:Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->A:Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

    invoke-virtual {v4, v4}, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->A:Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/h;->d(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->y()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->p()V

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/h$a;

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/h$f;

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/h$e;

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/x;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/mraid/h$d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h$d;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/h;->l:Landroid/view/ViewGroup;

    return-void
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v3, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->p()V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v3, Lcom/sigmob/sdk/base/models/ViewState;->RESIZED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/base/models/ViewState;)V

    return-void

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/base/models/ViewState;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/mraid/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->v:Lcom/sigmob/sdk/mraid/p;

    sget-object v1, Lcom/sigmob/sdk/mraid/p;->c:Lcom/sigmob/sdk/mraid/p;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->p()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/czhj/sdk/common/ClientMetadata;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/h;->b(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/sigmob/sdk/mraid/f;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/p;->a()I

    move-result v0

    goto :goto_0
.end method

.method public p()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->t:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unApplyOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public q()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public r()Lcom/sigmob/sdk/base/models/ViewState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/base/models/ViewState;

    return-object v0
.end method

.method public s()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->t:Ljava/lang/Integer;

    return-object v0
.end method

.method public t()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->u:Z

    return v0
.end method

.method public u()Lcom/sigmob/sdk/mraid/p;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->v:Lcom/sigmob/sdk/mraid/p;

    return-object v0
.end method

.method public v()Lcom/sigmob/sdk/mraid/v;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/v;

    return-object v0
.end method
