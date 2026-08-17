.class public final Lcom/kwad/components/ad/feed/widget/r;
.super Lcom/kwad/components/core/widget/b;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/widget/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/feed/widget/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/components/core/widget/b<",
        "Lcom/kwad/sdk/core/response/model/AdResultData;",
        "Lcom/kwad/sdk/core/response/model/AdTemplate;",
        ">;",
        "Lcom/kwad/sdk/widget/d;"
    }
.end annotation


# instance fields
.field private ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

.field private dp:Lcom/kwad/components/core/webview/tachikoma/b/o;

.field private fU:Lcom/kwad/components/core/l/a$b;

.field private go:Lcom/kwad/components/core/webview/tachikoma/i;

.field private hC:Lcom/kwad/components/ad/feed/d$b;

.field private hD:Lcom/kwad/components/ad/feed/d$d;

.field private hP:J

.field private hQ:F

.field private hR:F

.field private jB:Lcom/kwad/sdk/widget/KSFrameLayout;

.field private jC:Lcom/kwad/components/core/webview/jshandler/az;

.field private jD:Lcom/kwad/sdk/core/webview/c/c;

.field private jE:Lcom/kwad/components/ad/feed/widget/r$a;

.field private jF:Landroid/widget/FrameLayout$LayoutParams;

.field private jg:Lcom/kwad/components/core/widget/b;

.field private jh:Z

.field private jr:Lcom/kwad/components/core/widget/b$a;

.field private mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

.field private mHeight:I

.field private mIsNative:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/ad/feed/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/components/ad/feed/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/core/widget/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/kwad/components/ad/feed/widget/r;->mWidth:I

    .line 5
    iput-boolean p3, p0, Lcom/kwad/components/ad/feed/widget/r;->mIsNative:Z

    .line 6
    new-instance p2, Lcom/kwad/components/ad/feed/widget/r$9;

    invoke-direct {p2, p0}, Lcom/kwad/components/ad/feed/widget/r$9;-><init>(Lcom/kwad/components/ad/feed/widget/r;)V

    iput-object p2, p0, Lcom/kwad/components/ad/feed/widget/r;->jr:Lcom/kwad/components/core/widget/b$a;

    .line 7
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/widget/r;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic A(Lcom/kwad/components/ad/feed/widget/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/feed/widget/r;->mHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic B(Lcom/kwad/components/ad/feed/widget/r;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->getMuteStatus()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic C(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/webview/jshandler/az;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->jC:Lcom/kwad/components/core/webview/jshandler/az;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic D(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/components/core/widget/b;->zO()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic F(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic G(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic H(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic I(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic J(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic K(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cY()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cW()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cU()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->bT()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Q(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic R(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic S(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic T(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic U(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic V(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic W(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic X(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Y(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/webview/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->jD:Lcom/kwad/sdk/core/webview/c/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Z(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/components/core/webview/jshandler/az;)Lcom/kwad/components/core/webview/jshandler/az;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r;->jC:Lcom/kwad/components/core/webview/jshandler/az;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/components/core/webview/tachikoma/b/o;)Lcom/kwad/components/core/webview/tachikoma/b/o;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r;->dp:Lcom/kwad/components/core/webview/tachikoma/b/o;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/sdk/core/webview/c/c;)Lcom/kwad/sdk/core/webview/c/c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r;->jD:Lcom/kwad/sdk/core/webview/c/c;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->onRelease()V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/components/core/webview/tachikoma/f/d;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/widget/r;->a(Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/sdk/core/adlog/c/b;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/b;->c(Lcom/kwad/sdk/core/adlog/c/b;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/webview/tachikoma/f/d;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dy(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    move-result v0

    int-to-float v0, v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/kwad/components/ad/feed/widget/r$3;

    invoke-direct {v1, p0, p1}, Lcom/kwad/components/ad/feed/widget/r$3;-><init>(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    iput-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->dI(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    .line 18
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->dJ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    .line 19
    iget-object v2, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 20
    invoke-static {p1, v0, v2, v3, v1}, Lcom/kwad/components/ad/feed/d;->a(ZFLandroid/content/Context;Lcom/kwad/components/ad/feed/d$d;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/r;ZZ)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/feed/widget/r;->b(ZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/r;ZZLcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;I)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/components/ad/feed/widget/r;->a(ZZLcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;I)Z

    move-result p0

    return p0
.end method

.method private a(ZZLcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    .line 11
    invoke-virtual {p3}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->getDataFlowAutoStartValue()I

    move-result p4

    if-eqz p4, :cond_0

    .line 12
    invoke-virtual {p3}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->isDataFlowAutoStart()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/feed/widget/r;->b(ZZ)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return p2

    :cond_3
    :goto_0
    return p1
.end method

.method public static synthetic aa(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic ab(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ac(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ad(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ae(Lcom/kwad/components/ad/feed/widget/r;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/feed/widget/r;->mIsNative:Z

    return p0
.end method

.method public static synthetic af(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    return-object p0
.end method

.method public static synthetic ag(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ah(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ai(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic aj(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ak(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic al(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic am(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic an(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ao(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ap(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic aq(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ar(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic as(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kwad/components/ad/feed/widget/r;->hQ:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/kwad/components/ad/feed/widget/r;->hR:F

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/components/core/webview/tachikoma/f/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/widget/r;->b(Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    return-void
.end method

.method private b(Lcom/kwad/components/core/webview/tachikoma/f/d;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dM(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hC:Lcom/kwad/components/ad/feed/d$b;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/kwad/components/ad/feed/widget/r$4;

    invoke-direct {v1, p0, p1}, Lcom/kwad/components/ad/feed/widget/r$4;-><init>(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    iput-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hC:Lcom/kwad/components/ad/feed/d$b;

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hC:Lcom/kwad/components/ad/feed/d$b;

    invoke-static {v0, p1, v1}, Lcom/kwad/components/ad/feed/d;->a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;Lcom/kwad/components/ad/feed/d$b;)V

    return-void
.end method

.method private b(ZZ)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->ck(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cl(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->JW()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return p1

    :cond_3
    :goto_1
    return p2
.end method

.method private bT()V
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/c/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/webview/tachikoma/c/n;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->getMuteStatus()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-boolean v1, v0, Lcom/kwad/components/core/webview/tachikoma/c/n;->aut:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    const-string v3, "setVideoMuteStateListener"

    .line 24
    .line 25
    invoke-virtual {v1, v3, v0, v2}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/components/m;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cT()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cL()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dy(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/components/ad/feed/widget/r$11;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/feed/widget/r$11;-><init>(Lcom/kwad/components/ad/feed/widget/r;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->dI(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/b;->dJ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 34
    .line 35
    invoke-static {v1, v0, v3, v4, v2}, Lcom/kwad/components/ad/feed/d;->a(ZFLandroid/content/Context;Lcom/kwad/components/ad/feed/d$d;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private cM()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jh:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-virtual {p0}, Lcom/kwad/components/core/widget/b;->getStayTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private cT()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jF:Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private cU()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    new-instance v1, Lcom/kwad/components/ad/feed/widget/r$6;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/feed/widget/r$6;-><init>(Lcom/kwad/components/ad/feed/widget/r;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "setVideoPlayStatusCallback"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v2, v3, v1}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/components/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private cV()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jD:Lcom/kwad/sdk/core/webview/c/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/kwad/components/ad/feed/widget/r$7;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/feed/widget/r$7;-><init>(Lcom/kwad/components/ad/feed/widget/r;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private cW()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->zl()Lcom/kwad/sdk/components/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/kwad/components/ad/feed/widget/r$8;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/feed/widget/r$8;-><init>(Lcom/kwad/components/ad/feed/widget/r;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private cX()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jg:Lcom/kwad/components/core/widget/b;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/r;->mIsNative:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 17
    .line 18
    iget v4, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    .line 19
    .line 20
    iget v3, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->defaultType:I

    .line 21
    .line 22
    invoke-static {v4, v3}, Lcom/kwad/components/model/FeedType;->fromInt(II)Lcom/kwad/components/model/FeedType;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3, v1}, Lcom/kwad/components/ad/feed/b;->a(Landroid/content/Context;Lcom/kwad/components/model/FeedType;I)Lcom/kwad/components/core/widget/b;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->jg:Lcom/kwad/components/core/widget/b;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const/high16 v2, 0x41800000    # 16.0f

    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r;->jF:Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r;->jg:Lcom/kwad/components/core/widget/b;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lcom/kwad/components/core/widget/b;->setMargin(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->jg:Lcom/kwad/components/core/widget/b;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r;->jr:Lcom/kwad/components/core/widget/b$a;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/kwad/components/core/widget/b;->setInnerAdInteractionListener(Lcom/kwad/components/core/widget/b$a;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r;->jg:Lcom/kwad/components/core/widget/b;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->jE:Lcom/kwad/components/ad/feed/widget/r$a;

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    const-string v2, ""

    .line 80
    .line 81
    invoke-interface {v1, v0, v2}, Lcom/kwad/components/ad/feed/widget/r$a;->e(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jg:Lcom/kwad/components/core/widget/b;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/b;->d(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jg:Lcom/kwad/components/core/widget/b;

    .line 92
    .line 93
    instance-of v1, v0, Lcom/kwad/components/ad/feed/widget/c;

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    check-cast v0, Lcom/kwad/components/ad/feed/widget/c;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/feed/widget/c;->b(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method private cY()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dM(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hC:Lcom/kwad/components/ad/feed/d$b;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/kwad/components/ad/feed/widget/r$12;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/feed/widget/r$12;-><init>(Lcom/kwad/components/ad/feed/widget/r;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hC:Lcom/kwad/components/ad/feed/d$b;

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r;->hC:Lcom/kwad/components/ad/feed/d$b;

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/kwad/components/ad/feed/d;->a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;Lcom/kwad/components/ad/feed/d$b;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private cZ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dy(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/components/ad/feed/widget/r$2;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/feed/widget/r$2;-><init>(Lcom/kwad/components/ad/feed/widget/r;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->dI(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/b;->dJ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 34
    .line 35
    invoke-static {v1, v0, v3, v4, v2}, Lcom/kwad/components/ad/feed/d;->a(ZFLandroid/content/Context;Lcom/kwad/components/ad/feed/d$d;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic d(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/widget/KSFrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cX()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/ad/feed/widget/r$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->jE:Lcom/kwad/components/ad/feed/widget/r$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/webview/tachikoma/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    return-object p0
.end method

.method private getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->fU:Lcom/kwad/components/core/l/a$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/core/l/a$b;

    .line 6
    .line 7
    new-instance v1, Lcom/kwad/components/ad/feed/widget/r$10;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/feed/widget/r$10;-><init>(Lcom/kwad/components/ad/feed/widget/r;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/kwad/components/core/l/a$b;-><init>(Lcom/kwad/components/core/l/a$c;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->fU:Lcom/kwad/components/core/l/a$b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->fU:Lcom/kwad/components/core/l/a$b;

    .line 18
    .line 19
    return-object v0
.end method

.method private getMuteStatus()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->hO()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/kwad/components/core/t/a;->wD()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->fU:Lcom/kwad/components/core/l/a$b;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->fU:Lcom/kwad/components/core/l/a$b;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/kwad/components/core/l/a;->b(Lcom/kwad/components/core/l/a$b;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 38
    .line 39
    instance-of v2, v0, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    check-cast v0, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->getVideoSoundValue()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    xor-int/2addr v0, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->ch(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v1, 0x0

    .line 69
    :goto_0
    move v0, v1

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    xor-int/lit8 v2, v0, 0x1

    .line 75
    .line 76
    iput-boolean v2, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 77
    .line 78
    :cond_4
    return v0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cV()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aPw:Lcom/kwad/sdk/core/config/item/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/l;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/kwad/sdk/wrapper/m;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/kwad/components/core/webview/tachikoma/i;

    .line 17
    .line 18
    invoke-direct {v2, p1, v0, v0}, Lcom/kwad/components/core/webview/tachikoma/i;-><init>(Landroid/content/Context;II)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 22
    .line 23
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/kwad/components/ad/feed/widget/r$1;

    .line 27
    .line 28
    invoke-direct {p1, p0, v1}, Lcom/kwad/components/ad/feed/widget/r$1;-><init>(Lcom/kwad/components/ad/feed/widget/r;Ljava/lang/ref/WeakReference;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/kwad/sdk/core/c/b;->a(Lcom/kwad/sdk/core/c/c;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic j(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/webview/tachikoma/b/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->dp:Lcom/kwad/components/core/webview/tachikoma/b/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/l/a$b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/kwad/components/ad/feed/widget/r;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/feed/widget/r;->hP:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic o(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method private onRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->kV()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jC:Lcom/kwad/components/core/webview/jshandler/az;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/tachikoma/b/w;->onDestroy()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->hD:Lcom/kwad/components/ad/feed/d$d;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/components/ad/feed/d;->a(Lcom/kwad/components/ad/feed/d$d;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->hC:Lcom/kwad/components/ad/feed/d$b;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-static {v0}, Lcom/kwad/components/ad/feed/d;->a(Lcom/kwad/components/ad/feed/d$b;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/components/ad/feed/d;->D(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/kwad/components/ad/feed/d;->E(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static synthetic p(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/l/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->fU:Lcom/kwad/components/core/l/a$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic s(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cL()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/e/d/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/r;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic v(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/widget/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic w(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic y(Lcom/kwad/components/ad/feed/widget/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/feed/widget/r;->mWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic z(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Landroid/view/View;FFFF)V
    .locals 0

    .line 2
    return-void
.end method

.method public final aa()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mHasAdShow:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jC:Lcom/kwad/components/core/webview/jshandler/az;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yx()V

    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jC:Lcom/kwad/components/core/webview/jshandler/az;

    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yy()V

    .line 6
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v1}, Lcom/kwad/components/ad/feed/monitor/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    invoke-virtual {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->zl()Lcom/kwad/sdk/components/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    const-string v0, "showStart"

    invoke-virtual {p0, v0}, Lcom/kwad/components/ad/feed/widget/r;->setLifeStatue(Ljava/lang/String;)V

    .line 9
    const-string v0, "showEnd"

    invoke-virtual {p0, v0}, Lcom/kwad/components/ad/feed/widget/r;->setLifeStatue(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v1}, Lcom/kwad/components/ad/feed/monitor/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->avs:Lcom/kwad/components/core/widget/b$a;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Lcom/kwad/components/core/widget/b$a;->onAdShow()V

    .line 13
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mHasAdShow:Z

    :cond_2
    return-void
.end method

.method public final ae()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->ae()V

    return-void
.end method

.method public final af()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->af()V

    return-void
.end method

.method public final bA()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->bA()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jC:Lcom/kwad/components/core/webview/jshandler/az;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yC()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r;->fU:Lcom/kwad/components/core/l/a$b;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->c(Lcom/kwad/components/core/l/a$b;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string v0, "pageInvisiable"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/kwad/components/ad/feed/widget/r;->setLifeStatue(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final bC()V
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_container:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 10
    .line 11
    return-void
.end method

.method public final bz()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->bz()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->a(Lcom/kwad/components/core/l/a$b;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jC:Lcom/kwad/components/core/webview/jshandler/az;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yB()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string v0, "pageVisiable"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/kwad/components/ad/feed/widget/r;->setLifeStatue(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final d(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .locals 5
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Lcom/kwad/components/core/widget/b;->d(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 3
    new-instance v0, Lcom/kwad/components/core/e/d/d;

    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/e/d/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 4
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/e/d/d;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    invoke-virtual {v0, p0}, Lcom/kwad/components/core/e/d/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/components/ad/feed/widget/r;->hP:J

    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dB(Lcom/kwad/sdk/core/response/model/AdTemplate;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 8
    iget v0, p0, Lcom/kwad/components/ad/feed/widget/r;->mWidth:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/b;->dB(Lcom/kwad/sdk/core/response/model/AdTemplate;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/kwad/components/ad/feed/widget/r;->mHeight:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kwad/components/ad/feed/widget/r;->mHeight:I

    .line 10
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    iget-object v3, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kwad/sdk/wrapper/m;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/kwad/components/ad/feed/widget/r$5;

    invoke-direct {v4, p0, v0, v1}, Lcom/kwad/components/ad/feed/widget/r$5;-><init>(Lcom/kwad/components/ad/feed/widget/r;J)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Landroid/app/Activity;Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/core/webview/tachikoma/j;)V

    return-void
.end method

.method public final getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_feed_tkview:I

    .line 2
    .line 3
    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ki()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/d;->eD(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->cR(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/FeedSlideConf;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/widget/r;->b(Landroid/view/MotionEvent;)V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    if-eq v0, v2, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    if-ne v0, v2, :cond_4

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/r;->mIsNative:Z

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget v2, p0, Lcom/kwad/components/ad/feed/widget/r;->hQ:F

    .line 57
    .line 58
    sub-float/2addr v0, v2

    .line 59
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v2, 0x0

    .line 64
    cmpl-float v0, v0, v2

    .line 65
    .line 66
    if-lez v0, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget v2, p0, Lcom/kwad/components/ad/feed/widget/r;->hQ:F

    .line 79
    .line 80
    sub-float/2addr v0, v2

    .line 81
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iget v3, p0, Lcom/kwad/components/ad/feed/widget/r;->hR:F

    .line 90
    .line 91
    sub-float/2addr v2, v3

    .line 92
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iget v3, v1, Lcom/kwad/sdk/core/response/model/FeedSlideConf;->maxRange:I

    .line 97
    .line 98
    int-to-double v3, v3

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    float-to-double v5, v0

    .line 104
    mul-double/2addr v3, v5

    .line 105
    float-to-double v7, v2

    .line 106
    cmpg-double v0, v3, v7

    .line 107
    .line 108
    if-ltz v0, :cond_3

    .line 109
    .line 110
    iget v0, v1, Lcom/kwad/sdk/core/response/model/FeedSlideConf;->minRange:I

    .line 111
    .line 112
    int-to-double v0, v0

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    mul-double/2addr v0, v5

    .line 118
    cmpg-double v0, v0, v7

    .line 119
    .line 120
    if-gez v0, :cond_4

    .line 121
    .line 122
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jB:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    return p1

    .line 133
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    return p1
.end method

.method public final setLifeStatue(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "setLifeStatus"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/components/m;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final setTKLoadListener(Lcom/kwad/components/ad/feed/widget/r$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r;->jE:Lcom/kwad/components/ad/feed/widget/r$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/kwad/components/ad/feed/widget/r;->mIsNative:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x3

    .line 12
    :goto_0
    const-string v2, ""

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/kwad/components/ad/feed/widget/r$a;->e(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r;->jE:Lcom/kwad/components/ad/feed/widget/r$a;

    .line 18
    .line 19
    return-void
.end method

.method public final setVideoPlayConfig(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cV()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/r;->cW()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17
    .line 18
    :goto_0
    iput p1, p0, Lcom/kwad/components/ad/feed/widget/r;->mWidth:I

    .line 19
    .line 20
    return-void
.end method
