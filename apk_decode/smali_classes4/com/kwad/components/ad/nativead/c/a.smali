.class public final Lcom/kwad/components/ad/nativead/c/a;
.super Lcom/kwad/sdk/widget/KSFrameLayout;
.source "SourceFile"


# instance fields
.field private fF:Lcom/kwad/sdk/core/j/c;

.field private fx:Lcom/kwad/components/core/widget/a/c;

.field private go:Lcom/kwad/components/core/webview/tachikoma/i;

.field private gp:Lcom/kwad/sdk/widget/KSFrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private iY:Lcom/kwad/components/core/webview/jshandler/az;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

.field private mContext:Landroid/content/Context;

.field private pl:Lcom/kwad/components/ad/nativead/b$c;

.field private pm:Lcom/kwad/components/ad/nativead/b$e;

.field private qC:Lcom/kwad/components/ad/nativead/d$a;

.field private qD:Landroid/view/ViewTreeObserver;

.field private qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private qF:Lcom/kwad/components/core/webview/jshandler/ae$d;

.field private qG:I

.field private qH:I

.field private qI:Z

.field private qJ:Z

.field private qK:Z

.field private qL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qG:I

    .line 6
    .line 7
    iput v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qH:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qI:Z

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/nativead/c/a;->B(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_native_tk_card_layout:I

    .line 4
    .line 5
    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/kwad/sdk/R$id;->ksad_native_tk_container:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 17
    .line 18
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aPy:Lcom/kwad/sdk/core/config/item/l;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/l;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v1, Lcom/kwad/components/core/webview/tachikoma/i;

    .line 25
    .line 26
    invoke-direct {v1, p1, v0, v0}, Lcom/kwad/components/core/webview/tachikoma/i;-><init>(Landroid/content/Context;II)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/kwad/sdk/wrapper/m;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/kwad/components/ad/nativead/c/a$1;

    .line 44
    .line 45
    invoke-direct {p1, p0, v0}, Lcom/kwad/components/ad/nativead/c/a$1;-><init>(Lcom/kwad/components/ad/nativead/c/a;Ljava/lang/ref/WeakReference;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/kwad/sdk/core/c/b;->a(Lcom/kwad/sdk/core/c/c;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/c/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/nativead/c/a;->qG:I

    return p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/c/a;Lcom/kwad/components/core/webview/jshandler/ae$d;)Lcom/kwad/components/core/webview/jshandler/ae$d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->qF:Lcom/kwad/components/core/webview/jshandler/ae$d;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/c/a;Lcom/kwad/components/core/webview/jshandler/az;)Lcom/kwad/components/core/webview/jshandler/az;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/c/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/c/a;->release()V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/c/a;Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/nativead/c/a;->a(Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/c/a;Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/nativead/c/a;->a(Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/kwad/components/ad/nativead/c/a$6;

    invoke-direct {v0, p0, p1}, Lcom/kwad/components/ad/nativead/c/a$6;-><init>(Lcom/kwad/components/ad/nativead/c/a;Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    iput-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->pl:Lcom/kwad/components/ad/nativead/b$c;

    .line 23
    invoke-static {}, Lcom/kwad/components/ad/nativead/b;->ft()Lcom/kwad/components/ad/nativead/b;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->pl:Lcom/kwad/components/ad/nativead/b$c;

    invoke-virtual {p1, p2, v0, v1}, Lcom/kwad/components/ad/nativead/b;->a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;Landroid/content/Context;Lcom/kwad/components/ad/nativead/b$c;)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/kwad/components/ad/nativead/c/a;->qL:Z

    return-void
.end method

.method private a(Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;)V
    .locals 6

    if-nez p2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget p2, p2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;->acceleration:I

    int-to-float v2, p2

    const/4 p2, 0x0

    cmpg-float p2, v2, p2

    if-gtz p2, :cond_1

    :goto_0
    return-void

    .line 15
    :cond_1
    new-instance p2, Lcom/kwad/components/ad/nativead/c/a$5;

    invoke-direct {p2, p0, p1}, Lcom/kwad/components/ad/nativead/c/a$5;-><init>(Lcom/kwad/components/ad/nativead/c/a;Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    iput-object p2, p0, Lcom/kwad/components/ad/nativead/c/a;->pm:Lcom/kwad/components/ad/nativead/b$e;

    .line 16
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->dz(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->am(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    move v1, p1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    .line 17
    :goto_2
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 18
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->dK(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v5

    .line 19
    invoke-static {}, Lcom/kwad/components/ad/nativead/b;->ft()Lcom/kwad/components/ad/nativead/b;

    move-result-object v0

    iget-object v3, p0, Lcom/kwad/components/ad/nativead/c/a;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    iget-object v4, p0, Lcom/kwad/components/ad/nativead/c/a;->pm:Lcom/kwad/components/ad/nativead/b$e;

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/components/ad/nativead/b;->a(ZFLandroid/view/View;Lcom/kwad/components/ad/nativead/b$e;Z)V

    .line 21
    iput-boolean p2, p0, Lcom/kwad/components/ad/nativead/c/a;->qK:Z

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/c/a;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/kwad/components/ad/nativead/c/a;->qI:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/nativead/c/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/nativead/c/a;->qH:I

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/core/webview/jshandler/az;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    return-object p0
.end method

.method private bR()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/kwad/sdk/wrapper/m;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 12
    .line 13
    new-instance v3, Lcom/kwad/components/ad/nativead/c/a$4;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/kwad/components/ad/nativead/c/a$4;-><init>(Lcom/kwad/components/ad/nativead/c/a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Landroid/app/Activity;Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/core/webview/tachikoma/j;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/ad/nativead/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/nativead/c/a;->qI:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/widget/KSFrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/nativead/c/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/nativead/c/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/nativead/c/a;->qG:I

    .line 2
    .line 3
    return p0
.end method

.method private fQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/ad/nativead/g;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/kwad/components/ad/nativead/g;-><init>(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->fF:Lcom/kwad/sdk/core/j/c;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lcom/kwad/components/ad/nativead/c/a$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/nativead/c/a$2;-><init>(Lcom/kwad/components/ad/nativead/c/a;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->fF:Lcom/kwad/sdk/core/j/c;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->fF:Lcom/kwad/sdk/core/j/c;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/a/a;->a(Lcom/kwad/sdk/core/j/c;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/kwad/components/ad/nativead/c/a$3;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/nativead/c/a$3;-><init>(Lcom/kwad/components/ad/nativead/c/a;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 43
    .line 44
    return-void
.end method

.method private fx()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/nativead/c/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/nativead/c/a;->qH:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/core/webview/jshandler/ae$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->qF:Lcom/kwad/components/core/webview/jshandler/ae$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/core/e/d/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/core/webview/tachikoma/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/ad/nativead/d$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/c/a;->qC:Lcom/kwad/components/ad/nativead/d$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/kwad/components/ad/nativead/c/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/c/a;->fx()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private release()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yz()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a;->fF:Lcom/kwad/sdk/core/j/c;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/widget/a/a;->b(Lcom/kwad/sdk/core/j/c;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Ab()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->go:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->kV()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qD:Landroid/view/ViewTreeObserver;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qD:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->qD:Landroid/view/ViewTreeObserver;

    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->pm:Lcom/kwad/components/ad/nativead/b$e;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-static {}, Lcom/kwad/components/ad/nativead/b;->ft()Lcom/kwad/components/ad/nativead/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a;->pm:Lcom/kwad/components/ad/nativead/b$e;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/kwad/components/ad/nativead/b;->a(Lcom/kwad/components/ad/nativead/b$e;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->pl:Lcom/kwad/components/ad/nativead/b$c;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-static {}, Lcom/kwad/components/ad/nativead/b;->ft()Lcom/kwad/components/ad/nativead/b;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a;->pl:Lcom/kwad/components/ad/nativead/b$c;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/kwad/components/ad/nativead/b;->a(Lcom/kwad/components/ad/nativead/b$c;)V

    .line 83
    .line 84
    .line 85
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 93
    .line 94
    const/16 v2, 0x8

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 100
    .line 101
    :cond_7
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    return-void

    .line 105
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/core/e/d/d;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 9
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 10
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 11
    iput-object p2, p0, Lcom/kwad/components/ad/nativead/c/a;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 12
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/c/a;->fQ()V

    .line 13
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/c/a;->bR()V

    return-void
.end method

.method public final ae()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->ae()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qD:Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final af()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->af()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qD:Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qD:Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qD:Landroid/view/ViewTreeObserver;

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final fR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qJ:Z

    .line 2
    .line 3
    return v0
.end method

.method public final fS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qK:Z

    .line 2
    .line 3
    return v0
.end method

.method public final fT()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/nativead/c/a;->qL:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAdInteractionListener(Lcom/kwad/components/ad/nativead/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a;->qC:Lcom/kwad/components/ad/nativead/d$a;

    .line 2
    .line 3
    return-void
.end method
