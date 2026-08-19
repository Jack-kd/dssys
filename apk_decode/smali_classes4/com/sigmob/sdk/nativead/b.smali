.class public Lcom/sigmob/sdk/nativead/b;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sigmob/sdk/nativead/v;


# static fields
.field public static final a:Ljava/lang/String; = "DisLikeDialog"


# instance fields
.field private final b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private e:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Lcom/sigmob/sdk/nativead/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/base/k;->e()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/b;->f:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/b;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/b;)Landroid/widget/TextView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/b;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic a(ILjava/lang/String;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/b;->d()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "dislike"

    const-string v2, "report"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/sigmob/sdk/nativead/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->e:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-interface {p1, v0, p2, v1}, Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;Landroid/content/Context;)V
    .locals 3

    .line 6
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/network/d;

    new-instance v2, Lcom/sigmob/sdk/nativead/b$1;

    invoke-direct {v2, p0, p2}, Lcom/sigmob/sdk/nativead/b$1;-><init>(Lcom/sigmob/sdk/nativead/b;Landroid/content/Context;)V

    invoke-direct {v1, v0, p1, v2}, Lcom/sigmob/sdk/base/network/d;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/BidResponse;Lcom/sigmob/sdk/base/network/d$a;)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/nativead/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 8
    instance-of v0, p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setReason(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setContent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setVid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v1, Lcom/sigmob/sdk/nativead/K;

    invoke-direct {v1, p0, p3, p4}, Lcom/sigmob/sdk/nativead/K;-><init>(Lcom/sigmob/sdk/nativead/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/b;Lcom/sigmob/sdk/base/models/rtb/BidResponse;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/nativead/b;->a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)Z
    .locals 3

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42 ID\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/b;->b:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_2

    return v0

    :cond_2
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sigmob/sdk/nativead/c;

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/nativead/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->f:Ljava/util/List;

    const-string v1, "\u8fdd\u6cd5\u8fdd\u89c4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->f:Ljava/util/List;

    const-string v1, "\u7591\u4f3c\u6284\u88ad"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->f:Ljava/util/List;

    const-string v1, "\u865a\u5047\u6b3a\u8bc8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->f:Ljava/util/List;

    const-string v1, "\u4f4e\u4fd7\u8272\u60c5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->f:Ljava/util/List;

    const-string v1, "\u8bf1\u5bfc\u70b9\u51fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/nativead/b;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/nativead/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    const-string v3, "\u611f\u8c22\u53cd\u9988"

    if-nez v1, :cond_0

    invoke-static {v0, v3, v2}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->dislikeReport()V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/nativead/J;

    invoke-direct {v3, p0, v1, v0}, Lcom/sigmob/sdk/nativead/J;-><init>(Lcom/sigmob/sdk/nativead/b;Lcom/sigmob/sdk/base/models/rtb/BidResponse;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-static {v0, v3, v2}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/nativead/b;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/b;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private e()V
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v5, 0x0

    invoke-static {v5, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/4 v5, -0x1

    if-le v4, v3, :cond_1

    sub-int/2addr v3, v1

    move v4, v5

    move v5, v3

    goto :goto_0

    :cond_1
    sub-int/2addr v4, v1

    :goto_0
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Lcom/sigmob/sdk/base/k;->g()I

    move-result v1

    if-gtz v1, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/nativead/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/b;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isDislikeReported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const-string v0, "dislike"

    const-string v1, "click"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/sigmob/sdk/nativead/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u63d0\u4ea4\u53cd\u9988"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/b;->e:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/b;->g:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/b;->h:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/b;->i:Landroid/widget/TextView;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/b;->j:Landroid/widget/TextView;

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->e:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/b;->e:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    :cond_4
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "dislike"

    const-string v3, ""

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "abnormal_show"

    invoke-direct {p0, v2, v0, v3, v3}, Lcom/sigmob/sdk/nativead/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "cannot_close"

    invoke-direct {p0, v2, v0, v3, v3}, Lcom/sigmob/sdk/nativead/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "nointerest_click"

    invoke-direct {p0, v2, v0, v3, v3}, Lcom/sigmob/sdk/nativead/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->k:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u8bf7\u8f93\u5165\u53cd\u9988\u6587\u5b57"

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v4, "advice"

    invoke-direct {p0, v2, v4, v3, v0}, Lcom/sigmob/sdk/nativead/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/b;->d()V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->e:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    if-eqz p1, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p1, v0, v3, v1}, Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v0, "sig_dislike_layout"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v0, "sig_dislike_sv"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v1, "sig_dislike_ll"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v2, Lcom/sigmob/sdk/nativead/G;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/nativead/G;-><init>(Lcom/sigmob/sdk/nativead/b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v2, "sig_not_show_tv"

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/b;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v2, "sig_not_close_tv"

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/b;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v2, "sig_dislike_tv"

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/b;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v2, "sig_commit_sl"

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/b;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v2, "sig_suggest_et"

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/b;->k:Landroid/widget/EditText;

    new-instance v0, Lcom/sigmob/sdk/nativead/H;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/H;-><init>(Lcom/sigmob/sdk/nativead/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->k:Landroid/widget/EditText;

    new-instance v0, Lcom/sigmob/sdk/nativead/b$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/b$2;-><init>(Lcom/sigmob/sdk/nativead/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Lcom/sigmob/sdk/nativead/q;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sigmob/sdk/nativead/q;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/b;->l:Lcom/sigmob/sdk/nativead/q;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/nativead/q;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->l:Lcom/sigmob/sdk/nativead/q;

    new-instance v0, Lcom/sigmob/sdk/nativead/I;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/I;-><init>(Lcom/sigmob/sdk/nativead/b;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/nativead/q;->setOnItemClickListener(Lcom/sigmob/sdk/nativead/q$e;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->c:Landroid/content/Context;

    const-string v0, "sig_flow_sl"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b;->l:Lcom/sigmob/sdk/nativead/q;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/b;->e()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "DisLikeDialog#onDismiss"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->e:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;->onCancel()V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "DisLikeDialog#onShow"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->e:Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;->onShow()V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/b;->l:Lcom/sigmob/sdk/nativead/q;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/q;->b()V

    :cond_1
    return-void
.end method
