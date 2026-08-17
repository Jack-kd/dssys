.class public final Lcom/kwad/components/ad/interstitial/f/a/b;
.super Lcom/kwad/components/ad/interstitial/f/a/a;
.source "SourceFile"


# static fields
.field private static oe:J = 0x190L


# instance fields
.field private dm:Landroid/widget/FrameLayout;

.field private fF:Lcom/kwad/sdk/core/j/c;

.field private hu:Lcom/kwad/sdk/core/g/d;

.field private hw:Landroid/os/Vibrator;

.field private iY:Lcom/kwad/components/core/webview/jshandler/az;

.field private final nx:Lcom/kwad/components/ad/interstitial/f/c$b;

.field private od:Lcom/kwad/components/ad/h/a/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private of:Z

.field private og:Z

.field private oh:Lcom/kwad/components/core/webview/tachikoma/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->of:Z

    .line 6
    .line 7
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/a/b$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$1;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->nx:Lcom/kwad/components/ad/interstitial/f/c$b;

    .line 13
    .line 14
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/a/b$9;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$9;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->fF:Lcom/kwad/sdk/core/j/c;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic A(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic B(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic C(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic D(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic E(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic F(Lcom/kwad/components/ad/interstitial/f/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic H(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic I(Lcom/kwad/components/ad/interstitial/f/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic K(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic L(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic M(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic N(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic O(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic P(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Q(Lcom/kwad/components/ad/interstitial/f/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lcom/kwad/components/ad/interstitial/f/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eS()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic T(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic U(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic V(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic W(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic X(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Y(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Z(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    return-object p0
.end method

.method private a(Lcom/kwad/sdk/core/webview/b;)Lcom/kwad/components/core/webview/jshandler/z;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 33
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/z;

    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget-object v1, v1, Lcom/kwad/components/ad/interstitial/f/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    new-instance v2, Lcom/kwad/components/ad/interstitial/f/a/b$2;

    invoke-direct {v2, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$2;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/kwad/components/core/webview/jshandler/z;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/e/d/d;Lcom/kwad/sdk/core/webview/d/a/a;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/interstitial/f/a/b;D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/interstitial/f/a/b;->d(D)V

    return-void
.end method

.method private static a(Landroid/app/Dialog;)Z
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/interstitial/f/a/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->of:Z

    return p1
.end method

.method public static synthetic aa(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ab(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/sdk/core/g/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ac(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ad(Lcom/kwad/components/ad/interstitial/f/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/core/webview/tachikoma/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->oh:Lcom/kwad/components/core/webview/tachikoma/e;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/interstitial/f/a/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->og:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private cL()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "vibrator"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/os/Vibrator;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hw:Landroid/os/Vibrator;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dI(Lcom/kwad/sdk/core/response/model/AdTemplate;)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->dX(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/b;->dY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget-object v3, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 54
    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    new-instance v3, Lcom/kwad/sdk/core/g/d;

    .line 58
    .line 59
    invoke-direct {v3, v1, v0}, Lcom/kwad/sdk/core/g/d;-><init>(ZF)V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 63
    .line 64
    invoke-virtual {v3, v2}, Lcom/kwad/sdk/core/g/d;->bG(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 68
    .line 69
    new-instance v2, Lcom/kwad/components/ad/interstitial/f/a/b$7;

    .line 70
    .line 71
    invoke-direct {v2, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$7;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/b;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/g/d;->m(F)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/g/d;->cb(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static synthetic d(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/core/webview/jshandler/az;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    return-object p0
.end method

.method private d(D)V
    .locals 2

    .line 2
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/c$c;

    .line 3
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c$c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c$c;->m(Z)Lcom/kwad/components/ad/interstitial/f/c$c;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/kwad/components/ad/interstitial/f/c$c;->c(D)Lcom/kwad/components/ad/interstitial/f/c$c;

    move-result-object p1

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/interstitial/f/c$c;->W(I)Lcom/kwad/components/ad/interstitial/f/c$c;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget-object p2, p2, Lcom/kwad/components/ad/interstitial/f/c;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 7
    invoke-virtual {p2}, Lcom/kwad/sdk/widget/KSFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/al$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/interstitial/f/c$c;->a(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/components/ad/interstitial/f/c$c;

    move-result-object p1

    const/16 p2, 0x9d

    .line 8
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/interstitial/f/c$c;->X(I)Lcom/kwad/components/ad/interstitial/f/c$c;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    invoke-virtual {p2, p1}, Lcom/kwad/components/ad/interstitial/f/c;->a(Lcom/kwad/components/ad/interstitial/f/c$c;)Z

    .line 10
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hw:Landroid/os/Vibrator;

    sget-wide v0, Lcom/kwad/components/ad/interstitial/f/a/b;->oe:J

    invoke-static {p1, p2, v0, v1}, Lcom/kwad/sdk/utils/by;->vibrate(Landroid/content/Context;Landroid/os/Vibrator;J)V

    return-void
.end method

.method public static synthetic e(Lcom/kwad/components/ad/interstitial/f/a/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->of:Z

    .line 2
    .line 3
    return p0
.end method

.method private eC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/ad/interstitial/f/a/b;->a(Landroid/app/Dialog;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/d;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    return-void

    .line 36
    :goto_1
    invoke-static {v0}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private eK()Lcom/kwad/components/core/webview/tachikoma/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/a/b$14;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$14;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private eL()Lcom/kwad/components/core/webview/tachikoma/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/a/b$15;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$15;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private eM()Lcom/kwad/components/core/webview/tachikoma/b/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/c/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/webview/tachikoma/c/l;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 7
    .line 8
    iget v1, v1, Lcom/kwad/components/ad/interstitial/f/c;->nb:I

    .line 9
    .line 10
    iput v1, v0, Lcom/kwad/components/core/webview/tachikoma/c/l;->auq:I

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/components/core/webview/tachikoma/b/g;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/kwad/components/core/webview/tachikoma/b/g;-><init>(Lcom/kwad/components/core/webview/tachikoma/c/l;)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method private eN()Lcom/kwad/components/ad/h/a/a/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/ad/h/a/a/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/h/a/a/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/kwad/components/ad/interstitial/f/c;->mW:Ljava/util/List;

    .line 9
    .line 10
    new-instance v2, Lcom/kwad/components/ad/interstitial/f/a/b$16;

    .line 11
    .line 12
    invoke-direct {v2, p0, v0}, Lcom/kwad/components/ad/interstitial/f/a/b$16;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;Lcom/kwad/components/ad/h/a/a/a;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private eO()Lcom/kwad/components/core/webview/jshandler/bk;
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/bk;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/kwad/components/core/webview/jshandler/bk;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/a/b$3;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$3;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/jshandler/bk;->a(Lcom/kwad/components/core/webview/jshandler/bk$a;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private eP()Lcom/kwad/components/core/webview/tachikoma/b/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/a/b$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$4;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private eQ()Lcom/kwad/components/core/webview/jshandler/ak;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/ak;

    .line 2
    .line 3
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/a/b$5;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$5;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/ak;-><init>(Lcom/kwad/components/core/webview/jshandler/ak$b;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private eR()Lcom/kwad/components/core/webview/jshandler/x;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/a/b$6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$6;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private eS()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yz()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->od:Lcom/kwad/components/ad/h/a/a/b;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kwad/components/ad/h/a/a/b;->gb()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/h/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->od:Lcom/kwad/components/ad/h/a/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/interstitial/f/a/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->og:Z

    .line 2
    .line 3
    return p0
.end method

.method private getOpenNewPageListener()Lcom/kwad/components/core/webview/jshandler/aq$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/a/b$8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$8;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/interstitial/f/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/kwad/components/ad/interstitial/f/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eC()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/kwad/components/ad/interstitial/f/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->cL()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lcom/kwad/components/ad/interstitial/f/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/kwad/components/ad/interstitial/f/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic w(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic y(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    return-object p0
.end method

.method public static y(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->Lx()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/diskcache/b/a;->cO(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic z(Lcom/kwad/components/ad/interstitial/f/a/b;)Lcom/kwad/components/ad/interstitial/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/jshandler/ae$a;)V
    .locals 6

    .line 34
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->bB(Landroid/content/Context;)F

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->dm:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 37
    iget-object v3, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->dm:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    :goto_0
    cmpl-float v4, v1, v2

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    div-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v2, v3

    .line 38
    iput v2, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->width:I

    div-float/2addr v1, v0

    add-float/2addr v1, v5

    float-to-int v0, v1

    .line 39
    iput v0, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->height:I

    return-void

    .line 40
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/utils/bt;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->width:I

    .line 41
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/utils/bt;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, v5

    float-to-int v0, v1

    iput v0, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->height:I

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/jshandler/az;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/kwad/components/ad/interstitial/f/a/a;->a(Lcom/kwad/components/core/webview/jshandler/az;)V

    .line 32
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->dm:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget-object p1, p1, Lcom/kwad/components/ad/interstitial/f/c;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->getTkTemplateId()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->getTKReaderScene()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/f/b;->x(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/c/u;)V
    .locals 6

    .line 42
    invoke-super {p0, p1}, Lcom/kwad/components/ad/interstitial/f/a/a;->a(Lcom/kwad/components/core/webview/tachikoma/c/u;)V

    .line 43
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget-object p1, p1, Lcom/kwad/components/ad/interstitial/f/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;->onSkippedAd()V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget-object v0, p1, Lcom/kwad/components/ad/interstitial/f/c;->mS:Lcom/kwad/components/ad/interstitial/f/c$a;

    if-eqz v0, :cond_1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    .line 46
    invoke-interface/range {v0 .. v5}, Lcom/kwad/components/ad/interstitial/f/c$a;->a(JJZ)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/kwad/sdk/commercial/model/WebCloseStatus;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget p1, p1, Lcom/kwad/sdk/commercial/model/WebCloseStatus;->closeType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/kwad/components/ad/interstitial/f/c;->a(ZILcom/kwad/sdk/core/video/videoview/a;)V

    .line 50
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eC()V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/components/t;Lcom/kwad/sdk/core/webview/b;)V
    .locals 2

    .line 7
    invoke-super {p0, p1, p2}, Lcom/kwad/components/ad/interstitial/f/a/a;->a(Lcom/kwad/sdk/components/t;Lcom/kwad/sdk/core/webview/b;)V

    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    invoke-static {v0}, Lcom/kwad/components/ad/h/a/a/b;->M(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/ad/h/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->od:Lcom/kwad/components/ad/h/a/a/b;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/a/b$10;

    invoke-direct {v1, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$10;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/h/a/a/b;->a(Lcom/kwad/components/ad/h/a/a/b$b;)V

    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->od:Lcom/kwad/components/ad/h/a/a/b;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->od:Lcom/kwad/components/ad/h/a/a/b;

    invoke-virtual {v0}, Lcom/kwad/components/ad/h/a/a/b;->az()V

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eQ()Lcom/kwad/components/core/webview/jshandler/ak;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 14
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/aq;

    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->getOpenNewPageListener()Lcom/kwad/components/core/webview/jshandler/aq$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/aq;-><init>(Lcom/kwad/components/core/webview/jshandler/aq$a;)V

    invoke-interface {p1, v0}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 16
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dW(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/bb;

    new-instance v1, Lcom/kwad/components/ad/interstitial/f/a/b$11;

    invoke-direct {v1, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$11;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/bb;-><init>(Lcom/kwad/components/core/webview/jshandler/bb$a;)V

    invoke-interface {p1, v0}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eP()Lcom/kwad/components/core/webview/tachikoma/b/n;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 20
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eO()Lcom/kwad/components/core/webview/jshandler/bk;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 21
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eM()Lcom/kwad/components/core/webview/tachikoma/b/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 22
    invoke-direct {p0, p2}, Lcom/kwad/components/ad/interstitial/f/a/b;->a(Lcom/kwad/sdk/core/webview/b;)Lcom/kwad/components/core/webview/jshandler/z;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 23
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eR()Lcom/kwad/components/core/webview/jshandler/x;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 24
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eN()Lcom/kwad/components/ad/h/a/a/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 25
    new-instance p2, Lcom/kwad/components/ad/interstitial/f/a/b$12;

    invoke-direct {p2, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$12;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 26
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eL()Lcom/kwad/components/core/webview/tachikoma/e;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->oh:Lcom/kwad/components/core/webview/tachikoma/e;

    .line 27
    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->nx:Lcom/kwad/components/ad/interstitial/f/c$b;

    invoke-virtual {p2, v0}, Lcom/kwad/components/ad/interstitial/f/c;->a(Lcom/kwad/components/ad/interstitial/f/c$b;)V

    .line 28
    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->oh:Lcom/kwad/components/core/webview/tachikoma/e;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 29
    new-instance p2, Lcom/kwad/components/core/webview/tachikoma/b;

    new-instance v0, Lcom/kwad/components/ad/interstitial/f/a/b$13;

    invoke-direct {v0, p0}, Lcom/kwad/components/ad/interstitial/f/a/b$13;-><init>(Lcom/kwad/components/ad/interstitial/f/a/b;)V

    invoke-direct {p2, v0}, Lcom/kwad/components/core/webview/tachikoma/b;-><init>(Lcom/kwad/components/core/webview/tachikoma/b$a;)V

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 30
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->eK()Lcom/kwad/components/core/webview/tachikoma/c;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    return-void
.end method

.method public final aE()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/c;->eZ()Lcom/kwad/components/ad/interstitial/report/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/report/c;->F(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kwad/components/ad/interstitial/f/a/b;->getTkTemplateId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    invoke-virtual/range {v1 .. v8}, Lcom/kwad/components/core/webview/tachikoma/f/g;->a(Ljava/lang/String;JJJ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/c;->lq:Lcom/kwad/components/ad/interstitial/g/b;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/g/b;->ah()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->of:Z

    .line 47
    .line 48
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yx()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yy()V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/c;->lq:Lcom/kwad/components/ad/interstitial/g/b;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->fF:Lcom/kwad/sdk/core/j/c;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/a/a;->a(Lcom/kwad/sdk/core/j/c;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final aF()V
    .locals 0

    return-void
.end method

.method public final aG()V
    .locals 0

    return-void
.end method

.method public final ay()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/interstitial/f/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getRegisterViewKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTKContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->dm:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTKReaderScene()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "tk_interstitial"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTkTemplateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->ep(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/interstitial/f/a/a;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_tk_view:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->dm:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/interstitial/f/a/a;->onUnbind()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->of:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->og:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hw:Landroid/os/Vibrator;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/by;->b(Landroid/content/Context;Landroid/os/Vibrator;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->hu:Lcom/kwad/sdk/core/g/d;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/g/d;->cc(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/c;->lq:Lcom/kwad/components/ad/interstitial/g/b;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->fF:Lcom/kwad/sdk/core/j/c;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/a/a;->b(Lcom/kwad/sdk/core/j/c;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/b;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/a/b;->nx:Lcom/kwad/components/ad/interstitial/f/c$b;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c;->b(Lcom/kwad/components/ad/interstitial/f/c$b;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
