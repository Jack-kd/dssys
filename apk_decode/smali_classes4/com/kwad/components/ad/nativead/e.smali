.class public final Lcom/kwad/components/ad/nativead/e;
.super Lcom/kwad/sdk/widget/KSRelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/j/c;


# instance fields
.field private cA:Z

.field private cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

.field private cv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ey:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

.field private fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

.field private fI:Lcom/kwad/components/core/offline/a/c/a;

.field private fU:Lcom/kwad/components/core/l/a$b;

.field private fh:Lcom/kwad/components/core/webview/a;

.field private fi:Lcom/kwad/sdk/core/webview/b;

.field private fj:I

.field private fo:Lcom/kwad/components/core/webview/jshandler/as$b;

.field private fx:Lcom/kwad/components/core/widget/a/c;

.field private iX:Lcom/kwad/components/core/webview/jshandler/be;

.field private iY:Lcom/kwad/components/core/webview/jshandler/az;

.field private iZ:Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveMessageListener;

.field private ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

.field public ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

.field private ja:Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveShopListener;

.field private je:Lcom/kwad/components/core/webview/jshandler/ba$b;

.field private jf:Lcom/kwad/components/core/webview/jshandler/ba$a;

.field private js:Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

.field private mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

.field private mContext:Landroid/content/Context;

.field private mIsAudioEnable:Z

.field private final mNetworking:Lcom/kwad/sdk/core/network/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/core/network/l<",
            "Lcom/kwad/components/core/liveEnd/a;",
            "Lcom/kwad/components/core/liveEnd/AdLiveEndCommonResultData;",
            ">;"
        }
    .end annotation
.end field

.field private pD:Lcom/kwad/components/ad/nativead/d$a;

.field private pP:Landroid/widget/ImageView;

.field private pQ:Landroid/widget/RelativeLayout;

.field private pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

.field private pS:Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

.field private pv:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

.field private px:I

.field private py:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KSRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/kwad/components/ad/nativead/e;->px:I

    .line 6
    .line 7
    iput p1, p0, Lcom/kwad/components/ad/nativead/e;->py:I

    .line 8
    .line 9
    new-instance p1, Lcom/kwad/components/ad/nativead/e$10;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/nativead/e$10;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->fo:Lcom/kwad/components/core/webview/jshandler/as$b;

    .line 15
    .line 16
    new-instance p1, Lcom/kwad/components/ad/nativead/e$12;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/nativead/e$12;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->mNetworking:Lcom/kwad/sdk/core/network/l;

    .line 22
    .line 23
    new-instance p1, Lcom/kwad/components/ad/nativead/e$2;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/nativead/e$2;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->ey:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

    .line 29
    .line 30
    new-instance p1, Lcom/kwad/components/ad/nativead/e$3;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/nativead/e$3;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->initView()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/nativead/e;->fj:I

    return p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveMessageListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->iZ:Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveMessageListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e;Lcom/kwad/components/core/webview/jshandler/ba$a;)Lcom/kwad/components/core/webview/jshandler/ba$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->jf:Lcom/kwad/components/core/webview/jshandler/ba$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e;Lcom/kwad/components/core/webview/jshandler/ba$b;)Lcom/kwad/components/core/webview/jshandler/ba$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->je:Lcom/kwad/components/core/webview/jshandler/ba$b;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e;Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;)Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->js:Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e;J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/nativead/e;->c(J)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e;Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/nativead/e;->c(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/webview/a;)V
    .locals 5

    .line 22
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/be;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/be;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->iX:Lcom/kwad/components/core/webview/jshandler/be;

    .line 23
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/az;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/az;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->iY:Lcom/kwad/components/core/webview/jshandler/az;

    .line 24
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 25
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/ac;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 26
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->getClickListener()Lcom/kwad/sdk/core/webview/d/a/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/components/core/webview/jshandler/ac;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/e/d/d;Lcom/kwad/sdk/core/webview/d/a/a;B)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 28
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/z;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 29
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->getClickListener()Lcom/kwad/sdk/core/webview/d/a/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/components/core/webview/jshandler/z;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/e/d/d;Lcom/kwad/sdk/core/webview/d/a/a;)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 31
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/b/f;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/tachikoma/b/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 32
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/af;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/af;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 33
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/ai;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/ai;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 34
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/ae;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/ae;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 35
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/as;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fo:Lcom/kwad/components/core/webview/jshandler/as$b;

    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 36
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/b;->ds(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kwad/components/core/webview/jshandler/as;-><init>(Lcom/kwad/components/core/webview/jshandler/as$b;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 38
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/bc;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    invoke-direct {v0, v1, v2}, Lcom/kwad/components/core/webview/jshandler/bc;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/e/d/d;)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 40
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/am;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/am;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 41
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/o;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/o;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->b(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 42
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/n;

    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/n;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->b(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 43
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->iX:Lcom/kwad/components/core/webview/jshandler/be;

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 44
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/aq;

    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->getOpenNewPageListener()Lcom/kwad/components/core/webview/jshandler/aq$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/aq;-><init>(Lcom/kwad/components/core/webview/jshandler/aq$a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 45
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/g;

    iget v1, p0, Lcom/kwad/components/ad/nativead/e;->px:I

    iget v2, p0, Lcom/kwad/components/ad/nativead/e;->py:I

    invoke-direct {v0, v1, v2}, Lcom/kwad/components/core/webview/jshandler/g;-><init>(II)V

    .line 46
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 47
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveShopListener;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveShopListener;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->ja:Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveShopListener;

    .line 48
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveMessageListener;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveMessageListener;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->iZ:Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveMessageListener;

    .line 49
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->ja:Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveShopListener;

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 50
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->iZ:Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveMessageListener;

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 51
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/ba;

    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->getRegisterLiveListener()Lcom/kwad/components/core/webview/jshandler/ba$c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/ba;-><init>(Lcom/kwad/components/core/webview/jshandler/ba$c;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e;Z)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/nativead/e;->h(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveShopListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->ja:Lcom/kwad/components/core/webview/jshandler/WebCardRegisterLiveShopListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private bi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/webview/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/b;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fi:Lcom/kwad/sdk/core/webview/b;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lcom/kwad/sdk/core/webview/b;->mScreenOrientation:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, v0, Lcom/kwad/sdk/core/webview/b;->bbV:Lcom/kwad/sdk/widget/g;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/kwad/components/ad/nativead/e;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 22
    .line 23
    iput-object v3, v0, Lcom/kwad/sdk/core/webview/b;->adW:Landroid/view/ViewGroup;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 26
    .line 27
    iput-object v3, v0, Lcom/kwad/sdk/core/webview/b;->ade:Landroid/webkit/WebView;

    .line 28
    .line 29
    iput-object v2, v0, Lcom/kwad/sdk/core/webview/b;->mReportExtData:Lorg/json/JSONObject;

    .line 30
    .line 31
    iput-boolean v1, v0, Lcom/kwad/sdk/core/webview/b;->bbX:Z

    .line 32
    .line 33
    return-void
.end method

.method private bj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dH(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->fB()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private bl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fh:Lcom/kwad/components/core/webview/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/a;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fh:Lcom/kwad/components/core/webview/a;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/core/webview/jshandler/ba$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->jf:Lcom/kwad/components/core/webview/jshandler/ba$a;

    return-object p0
.end method

.method private c(J)V
    .locals 2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 8
    iget-object p2, p0, Lcom/kwad/components/ad/nativead/e;->cv:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/kwad/components/ad/nativead/e;->cv:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 10
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    .line 14
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f100000    # 0.5625f

    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 4
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private cA()Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->cB()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fI:Lcom/kwad/components/core/offline/a/c/a;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-static {v0, v1, v2}, Lcom/kwad/components/ad/j/c;->a(Lcom/kwad/components/core/offline/a/c/a;Landroid/content/Context;I)Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iput-object v4, p0, Lcom/kwad/components/ad/nativead/e;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/kwad/components/ad/nativead/e;->fI:Lcom/kwad/components/core/offline/a/c/a;

    .line 20
    .line 21
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v5, v0, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cw(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cx(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cy(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    invoke-interface/range {v3 .. v10}, Lcom/kwad/components/core/offline/a/c/a;->getAdLivePlayModule(Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-boolean v1, p0, Lcom/kwad/components/ad/nativead/e;->mIsAudioEnable:Z

    .line 60
    .line 61
    invoke-direct {p0, v1}, Lcom/kwad/components/ad/nativead/e;->h(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-interface {v0, v1, v2}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->setAudioEnabled(ZZ)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->ey:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->registerAdLivePlayStateListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 75
    .line 76
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->pQ:Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->pQ:Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Lcom/kwad/components/ad/nativead/e$1;

    .line 91
    .line 92
    invoke-direct {v2, p0, v1}, Lcom/kwad/components/ad/nativead/e$1;-><init>(Lcom/kwad/components/ad/nativead/e;Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->cO()V

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/kwad/components/ad/nativead/e;->mIsAudioEnable:Z

    .line 102
    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/kwad/components/core/t/a;->a(Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    return-object v0
.end method

.method private cB()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bA(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/b;->getUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->pP:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->pP:Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 26
    .line 27
    new-instance v3, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;

    .line 28
    .line 29
    invoke-direct {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x32

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;->setBlurRadius(I)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Lcom/kwad/components/ad/nativead/e$5;

    .line 43
    .line 44
    invoke-direct {v4, p0}, Lcom/kwad/components/ad/nativead/e$5;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v0, v2, v3, v4}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->pP:Landroid/widget/ImageView;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->pP:Landroid/widget/ImageView;

    .line 58
    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private cN()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/nativead/e;->fj:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method private cO()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 2
    .line 3
    new-instance v1, Lcom/kwad/components/ad/nativead/e$6;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/nativead/e$6;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->registerLiveMessageListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLiveMessageListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 12
    .line 13
    new-instance v1, Lcom/kwad/components/ad/nativead/e$7;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/nativead/e$7;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->registerLiveShopListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLiveShopListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic d(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/core/webview/jshandler/ba$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->je:Lcom/kwad/components/core/webview/jshandler/ba$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/nativead/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private fA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->bi()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->cN()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->bj()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private fB()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface",
            "JavascriptInterface"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->bl()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->getClientConfig()Lcom/kwad/sdk/core/webview/a/c$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->fo(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->setClientConfig(Lcom/kwad/sdk/core/webview/a/c$a;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/kwad/components/core/webview/a;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/a;-><init>(Landroid/webkit/WebView;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fh:Lcom/kwad/components/core/webview/a;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/kwad/components/ad/nativead/e;->a(Lcom/kwad/components/core/webview/a;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fh:Lcom/kwad/components/core/webview/a;

    .line 36
    .line 37
    const-string v2, "KwaiAd"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->dv(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private fw()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/sdk/internal/api/SceneImpl;->nativeAdExtraData:Lcom/kwad/sdk/internal/api/NativeAdExtraDataImpl;

    .line 6
    .line 7
    iget v1, v0, Lcom/kwad/sdk/internal/api/NativeAdExtraDataImpl;->showLiveStatus:I

    .line 8
    .line 9
    iput v1, p0, Lcom/kwad/components/ad/nativead/e;->px:I

    .line 10
    .line 11
    iget v0, v0, Lcom/kwad/sdk/internal/api/NativeAdExtraDataImpl;->showLiveStyle:I

    .line 12
    .line 13
    iput v0, p0, Lcom/kwad/components/ad/nativead/e;->py:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    :catchall_0
    return-void
.end method

.method public static synthetic g(Lcom/kwad/components/ad/nativead/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/nativead/e;->fj:I

    .line 2
    .line 3
    return p0
.end method

.method private getClickListener()Lcom/kwad/sdk/core/webview/d/a/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/ad/nativead/e$11;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/nativead/e$11;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fU:Lcom/kwad/components/core/l/a$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/core/l/a$b;

    .line 6
    .line 7
    new-instance v1, Lcom/kwad/components/ad/nativead/e$4;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/nativead/e$4;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/kwad/components/core/l/a$b;-><init>(Lcom/kwad/components/core/l/a$c;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fU:Lcom/kwad/components/core/l/a$b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fU:Lcom/kwad/components/core/l/a$b;

    .line 18
    .line 19
    return-object v0
.end method

.method private getOpenNewPageListener()Lcom/kwad/components/core/webview/jshandler/aq$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/nativead/e$9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/nativead/e$9;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private getRegisterLiveListener()Lcom/kwad/components/core/webview/jshandler/ba$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/nativead/e$8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/nativead/e$8;-><init>(Lcom/kwad/components/ad/nativead/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/sdk/core/webview/KsAdWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    return-object p0
.end method

.method private h(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->fU:Lcom/kwad/components/core/l/a$b;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->fU:Lcom/kwad/components/core/l/a$b;

    invoke-static {p1}, Lcom/kwad/components/core/l/a;->b(Lcom/kwad/components/core/l/a$b;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->hO()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/components/core/t/a;->wE()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/t/a;->bd(Z)Z

    move-result p1

    return p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/components/core/t/a;->wD()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 7
    :cond_4
    iget-boolean p1, p0, Lcom/kwad/components/ad/nativead/e;->cA:Z

    if-nez p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kwad/components/core/t/a;->bd(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/components/ad/nativead/e;->cA:Z

    .line 9
    :cond_5
    iget-boolean p1, p0, Lcom/kwad/components/ad/nativead/e;->cA:Z

    return p1
.end method

.method public static synthetic i(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/kwad/sdk/R$layout;->ksad_native_live_layout:I

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/kwad/sdk/R$id;->ksad_root_container:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 19
    .line 20
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_bg_img:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/ImageView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->pP:Landroid/widget/ImageView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 31
    .line 32
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_container:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 43
    .line 44
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_video_container:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->pQ:Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 55
    .line 56
    sget v1, Lcom/kwad/sdk/R$id;->ksad_web_card_webView:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    .line 69
    .line 70
    const-class v0, Lcom/kwad/components/core/offline/a/c/a;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/kwad/components/core/offline/a/c/a;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fI:Lcom/kwad/components/core/offline/a/c/a;

    .line 79
    .line 80
    return-void
.end method

.method public static synthetic j(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/ad/nativead/d$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->pD:Lcom/kwad/components/ad/nativead/d$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/core/e/d/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->js:Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->pv:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/sdk/core/network/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e;->mNetworking:Lcom/kwad/sdk/core/network/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/core/l/a$b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/kwad/components/ad/nativead/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/nativead/e;->mIsAudioEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic q(Lcom/kwad/components/ad/nativead/e;)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->cA()Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/d;Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;)V
    .locals 0
    .param p3    # Lcom/kwad/components/core/e/d/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    iput-object p2, p0, Lcom/kwad/components/ad/nativead/e;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 10
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/components/ad/nativead/e;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 11
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->mContext:Landroid/content/Context;

    .line 12
    iput-object p4, p0, Lcom/kwad/components/ad/nativead/e;->pS:Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 13
    iput-object p3, p0, Lcom/kwad/components/ad/nativead/e;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 14
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/a;->bv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->cv:Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 16
    :goto_0
    new-instance p2, Lcom/kwad/components/ad/nativead/g;

    invoke-direct {p2, p1}, Lcom/kwad/components/ad/nativead/g;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/kwad/components/ad/nativead/e;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 17
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->pS:Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    invoke-virtual {p1}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->getVideoSoundValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->pS:Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    invoke-virtual {p1}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->isVideoSoundEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/components/ad/nativead/e;->mIsAudioEnable:Z

    goto :goto_1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/e;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->ch(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/components/ad/nativead/e;->mIsAudioEnable:Z

    .line 20
    :goto_1
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->fw()V

    .line 21
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->fA()V

    return-void
.end method

.method public final ae()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSRelativeLayout;->ae()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/widget/a/a;->a(Lcom/kwad/sdk/core/j/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final af()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSRelativeLayout;->af()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/widget/a/a;->b(Lcom/kwad/sdk/core/j/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onDestroy()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/e;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/e;->fU:Lcom/kwad/components/core/l/a$b;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/l/a;->c(Lcom/kwad/components/core/l/a$b;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/e;->jf:Lcom/kwad/components/core/webview/jshandler/ba$a;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/e;->je:Lcom/kwad/components/core/webview/jshandler/ba$b;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->onDestroy()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final bA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/e;->fU:Lcom/kwad/components/core/l/a$b;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->c(Lcom/kwad/components/core/l/a$b;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final bz()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->a(Lcom/kwad/components/core/l/a$b;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e;->cA()Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onResume()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setInnerAdInteractionListener(Lcom/kwad/components/ad/nativead/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->pD:Lcom/kwad/components/ad/nativead/d$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e;->pv:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    .line 2
    .line 3
    return-void
.end method
