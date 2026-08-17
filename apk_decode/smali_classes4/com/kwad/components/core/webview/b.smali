.class public final Lcom/kwad/components/core/webview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/webview/b$a;
    }
.end annotation


# instance fields
.field private ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

.field private aec:Lcom/kwad/sdk/core/webview/KsAdWebView$c;

.field private aoA:Lcom/kwad/components/core/webview/a/a;

.field private aoB:Lcom/kwad/components/core/webview/jshandler/aw;

.field private aoC:Lcom/kwad/sdk/core/download/d;

.field private aoD:Z

.field private aoE:Lcom/kwad/components/core/webview/jshandler/a/c;

.field private aoF:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdPublicJSBridge;

.field private aoG:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

.field private aoH:Z

.field private aoI:Lcom/kwad/components/core/webview/jshandler/as$b;

.field private aoz:Landroid/view/ViewGroup;

.field private fh:Lcom/kwad/components/core/webview/a;

.field private fi:Lcom/kwad/sdk/core/webview/b;

.field private jq:Lcom/kwad/components/core/webview/c;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

.field private mPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/core/webview/b;->aoH:Z

    .line 6
    .line 7
    new-instance v0, Lcom/kwad/components/core/webview/b$13;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/kwad/components/core/webview/b$13;-><init>(Lcom/kwad/components/core/webview/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aoI:Lcom/kwad/components/core/webview/jshandler/as$b;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/webview/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private static a(Lcom/kwad/components/core/webview/c;Landroid/webkit/WebView;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/kwad/components/core/webview/c;->uy()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/kwad/components/core/webview/jshandler/az;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->jq:Lcom/kwad/components/core/webview/c;

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/c;->a(Lcom/kwad/components/core/webview/jshandler/az;)V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/core/webview/b;)Lcom/kwad/sdk/core/webview/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    return-object p0
.end method

.method private b(Lcom/kwad/components/core/webview/a;Lcom/kwad/sdk/core/webview/b;)V
    .locals 10

    .line 8
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/az;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/az;-><init>()V

    .line 9
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/kwad/components/core/webview/b;->a(Lcom/kwad/components/core/webview/jshandler/az;)V

    .line 11
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/v;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/v;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 12
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/d;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 13
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/w;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/w;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 14
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/q;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/q;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 15
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/r;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/r;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 16
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/am;

    invoke-direct {v0, p2}, Lcom/kwad/components/core/webview/jshandler/am;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    .line 17
    new-instance v1, Lcom/kwad/components/core/webview/jshandler/o;

    invoke-direct {v1, p2}, Lcom/kwad/components/core/webview/jshandler/o;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v1}, Lcom/kwad/components/core/webview/a;->b(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 18
    new-instance v1, Lcom/kwad/components/core/webview/jshandler/n;

    invoke-direct {v1, p2}, Lcom/kwad/components/core/webview/jshandler/n;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v1}, Lcom/kwad/components/core/webview/a;->b(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 19
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->yc()Lcom/kwad/components/core/webview/jshandler/am$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/jshandler/am;->a(Lcom/kwad/components/core/webview/jshandler/am$a;)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 21
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/af;

    invoke-direct {v0, p2}, Lcom/kwad/components/core/webview/jshandler/af;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 22
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/b/f;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/tachikoma/b/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 23
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/kwad/components/core/e/d/d;

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/e/d/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/components/core/webview/b;->aoD:Z

    if-nez v0, :cond_1

    .line 26
    new-instance v1, Lcom/kwad/components/core/webview/jshandler/ac;

    iget-object v2, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    iget-object v3, p0, Lcom/kwad/components/core/webview/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 27
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->getClickListener()Lcom/kwad/sdk/core/webview/d/a/a;

    move-result-object v4

    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->ya()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/kwad/components/core/webview/jshandler/ac;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/e/d/d;Lcom/kwad/sdk/core/webview/d/a/a;ZZZ)V

    .line 28
    invoke-virtual {p1, v1}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 29
    new-instance v2, Lcom/kwad/components/core/webview/jshandler/z;

    iget-object v3, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    iget-object v4, p0, Lcom/kwad/components/core/webview/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 30
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->getClickListener()Lcom/kwad/sdk/core/webview/d/a/a;

    move-result-object v5

    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->ya()Z

    move-result v6

    .line 31
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->yb()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/kwad/components/core/webview/jshandler/z;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/e/d/d;Lcom/kwad/sdk/core/webview/d/a/a;ZIZZ)V

    .line 32
    invoke-virtual {p1, v2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 33
    :cond_1
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/bc;

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    iget-object v2, p0, Lcom/kwad/components/core/webview/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    invoke-direct {v0, v1, v2}, Lcom/kwad/components/core/webview/jshandler/bc;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/e/d/d;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 34
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/au;

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/au;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 35
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/ar;

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    iget-object v1, v1, Lcom/kwad/sdk/core/webview/b;->ade:Landroid/webkit/WebView;

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, v1, v2}, Lcom/kwad/components/core/webview/jshandler/ar;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 37
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 38
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/bh;

    new-instance v1, Lcom/kwad/components/core/webview/b$1;

    invoke-direct {v1, p0}, Lcom/kwad/components/core/webview/b$1;-><init>(Lcom/kwad/components/core/webview/b;)V

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/bh;-><init>(Lcom/kwad/components/core/webview/jshandler/bh$a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 39
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/aj;

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/aj;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 40
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/as;

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->aoI:Lcom/kwad/components/core/webview/jshandler/as$b;

    iget-object v2, p0, Lcom/kwad/components/core/webview/b;->mPageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kwad/components/core/webview/jshandler/as;-><init>(Lcom/kwad/components/core/webview/jshandler/as$b;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 42
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/aw;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/aw;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aoB:Lcom/kwad/components/core/webview/jshandler/aw;

    .line 43
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 44
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/aa;

    new-instance v1, Lcom/kwad/components/core/webview/b$6;

    invoke-direct {v1, p0}, Lcom/kwad/components/core/webview/b$6;-><init>(Lcom/kwad/components/core/webview/b;)V

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/aa;-><init>(Lcom/kwad/sdk/core/webview/d/a/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 45
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/b/s;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/tachikoma/b/s;-><init>()V

    .line 46
    new-instance v1, Lcom/kwad/components/core/webview/b$7;

    invoke-direct {v1, p0}, Lcom/kwad/components/core/webview/b$7;-><init>(Lcom/kwad/components/core/webview/b;)V

    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/b/s;->a(Lcom/kwad/components/core/webview/tachikoma/b/s$a;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 48
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/b/k;

    invoke-direct {v0}, Lcom/kwad/components/core/webview/tachikoma/b/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 49
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/ai;

    invoke-direct {v0, p2}, Lcom/kwad/components/core/webview/jshandler/ai;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 50
    iget-object p2, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 51
    new-instance p2, Lcom/kwad/components/core/webview/tachikoma/b/l;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/tachikoma/b/l;-><init>()V

    .line 52
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 53
    new-instance v0, Lcom/kwad/components/core/webview/b$8;

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, p0, v1, p2}, Lcom/kwad/components/core/webview/b$8;-><init>(Lcom/kwad/components/core/webview/b;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/webview/tachikoma/b/l;)V

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aoC:Lcom/kwad/sdk/core/download/d;

    .line 54
    invoke-static {}, Lcom/kwad/sdk/core/download/b;->Lz()Lcom/kwad/sdk/core/download/b;

    move-result-object p2

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->aoC:Lcom/kwad/sdk/core/download/d;

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p2, v0, v1}, Lcom/kwad/sdk/core/download/b;->a(Lcom/kwad/sdk/core/download/c;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 55
    :cond_2
    new-instance p2, Lcom/kwad/components/core/webview/b$9;

    invoke-direct {p2, p0}, Lcom/kwad/components/core/webview/b$9;-><init>(Lcom/kwad/components/core/webview/b;)V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 56
    new-instance p2, Lcom/kwad/components/core/webview/b$10;

    invoke-direct {p2, p0}, Lcom/kwad/components/core/webview/b$10;-><init>(Lcom/kwad/components/core/webview/b;)V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 57
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/f;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/f;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 58
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/i;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/i;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 59
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/l;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/l;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 60
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/e;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/e;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 61
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/ae;

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {p2, v0}, Lcom/kwad/components/core/webview/jshandler/ae;-><init>(Lcom/kwad/sdk/core/webview/b;)V

    .line 62
    new-instance v0, Lcom/kwad/components/core/webview/b$11;

    invoke-direct {v0, p0}, Lcom/kwad/components/core/webview/b$11;-><init>(Lcom/kwad/components/core/webview/b;)V

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/webview/jshandler/ae;->a(Lcom/kwad/components/core/webview/jshandler/ae$c;)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 64
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/m;

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/b;->ade:Landroid/webkit/WebView;

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p2, v0, v1}, Lcom/kwad/components/core/webview/jshandler/m;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 67
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/al;

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    new-instance v1, Lcom/kwad/components/core/webview/b$12;

    invoke-direct {v1, p0}, Lcom/kwad/components/core/webview/b$12;-><init>(Lcom/kwad/components/core/webview/b;)V

    invoke-direct {p2, v0, v1}, Lcom/kwad/components/core/webview/jshandler/al;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/webview/jshandler/al$b;)V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 68
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/k;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/k;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 69
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/u;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/u;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 70
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/t;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/t;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 71
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/s;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/s;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 72
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/a/f;

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/kwad/components/core/webview/jshandler/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 73
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/a/d;

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/kwad/components/core/webview/jshandler/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 74
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/a/b;

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->aoE:Lcom/kwad/components/core/webview/jshandler/a/c;

    invoke-direct {p2, v0}, Lcom/kwad/components/core/webview/jshandler/a/b;-><init>(Lcom/kwad/components/core/webview/jshandler/a/c;)V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 75
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/a/a;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/jshandler/a/a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 76
    new-instance p2, Lcom/kwad/components/core/webview/jshandler/a/e;

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/kwad/components/core/webview/jshandler/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    return-void
.end method

.method private b(Lcom/kwad/sdk/core/webview/KsAdWebView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface",
            "JavascriptInterface"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->bl()V

    .line 3
    new-instance v0, Lcom/kwad/components/core/webview/a;

    invoke-direct {v0, p1}, Lcom/kwad/components/core/webview/a;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->fh:Lcom/kwad/components/core/webview/a;

    .line 4
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-direct {p0, v0, v1}, Lcom/kwad/components/core/webview/b;->b(Lcom/kwad/components/core/webview/a;Lcom/kwad/sdk/core/webview/b;)V

    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->jq:Lcom/kwad/components/core/webview/c;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->fh:Lcom/kwad/components/core/webview/a;

    iget-object v2, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    invoke-virtual {v0, v1, v2}, Lcom/kwad/components/core/webview/c;->a(Lcom/kwad/components/core/webview/a;Lcom/kwad/sdk/core/webview/b;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fh:Lcom/kwad/components/core/webview/a;

    const-string v1, "KwaiAd"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private bi()V
    .locals 2

    .line 2
    new-instance v0, Lcom/kwad/sdk/core/webview/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/b;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/b;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/kwad/sdk/core/webview/b;->mScreenOrientation:I

    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/b;->ade:Landroid/webkit/WebView;

    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->aoz:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/b;->adW:Landroid/view/ViewGroup;

    return-void
.end method

.method private bl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->fh:Lcom/kwad/components/core/webview/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/a;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/kwad/components/core/webview/b;->fh:Lcom/kwad/components/core/webview/a;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->aoA:Lcom/kwad/components/core/webview/a/a;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/a/a;->destroy()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/kwad/components/core/webview/b;->aoA:Lcom/kwad/components/core/webview/a/a;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->aoF:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdPublicJSBridge;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdPublicJSBridge;->destroy()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/kwad/components/core/webview/b;->aoF:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdPublicJSBridge;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->aoG:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iput-object v1, p0, Lcom/kwad/components/core/webview/b;->aoG:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method private static bt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic c(Lcom/kwad/components/core/webview/b;)Lcom/kwad/components/core/webview/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/webview/b;->jq:Lcom/kwad/components/core/webview/c;

    return-object p0
.end method

.method private c(Lcom/kwad/sdk/core/webview/KsAdWebView;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface",
            "JavascriptInterface"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdPublicJSBridge;

    invoke-direct {v0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdPublicJSBridge;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aoF:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdPublicJSBridge;

    .line 3
    const-string v1, "KwaiAdPublic"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/kwad/components/core/webview/b;)Lcom/kwad/components/core/webview/jshandler/aw;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/webview/b;->aoB:Lcom/kwad/components/core/webview/jshandler/aw;

    return-object p0
.end method

.method private d(Lcom/kwad/sdk/core/webview/KsAdWebView;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface",
            "JavascriptInterface"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    invoke-direct {v0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aoG:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 3
    const-string v1, "KSAdChinaMobile"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private e(Lcom/kwad/sdk/core/webview/KsAdWebView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->bl()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/webview/a/a;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->fi:Lcom/kwad/sdk/core/webview/b;

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Lcom/kwad/components/core/webview/a/a;-><init>(Landroid/webkit/WebView;Lcom/kwad/sdk/core/webview/b;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aoA:Lcom/kwad/components/core/webview/a/a;

    .line 12
    .line 13
    const-string v1, "KwaiAdForThird"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private fA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->getClientConfig()Lcom/kwad/sdk/core/webview/a/c$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->fo(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->yf()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->eU(I)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->ye()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->b(Lcom/kwad/sdk/core/webview/KsAdWebView$e;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->yd()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->a(Lcom/kwad/sdk/core/webview/KsAdWebView$b;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->aec:Lcom/kwad/sdk/core/webview/KsAdWebView$c;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->c(Lcom/kwad/sdk/core/webview/KsAdWebView$c;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->setClientConfig(Lcom/kwad/sdk/core/webview/a/c$a;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private getClickListener()Lcom/kwad/sdk/core/webview/d/a/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/b$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/webview/b$2;-><init>(Lcom/kwad/components/core/webview/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private ya()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->jq:Lcom/kwad/components/core/webview/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/c;->uz()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private yb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private yc()Lcom/kwad/components/core/webview/jshandler/am$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/b$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/webview/b$3;-><init>(Lcom/kwad/components/core/webview/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private yd()Lcom/kwad/sdk/core/webview/KsAdWebView$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/b$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/webview/b$4;-><init>(Lcom/kwad/components/core/webview/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private ye()Lcom/kwad/sdk/core/webview/KsAdWebView$e;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/b$5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/webview/b$5;-><init>(Lcom/kwad/components/core/webview/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private yf()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->V(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    return v0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/b$a;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->tT()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->mPageUrl:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->yh()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aoz:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->yi()Lcom/kwad/sdk/core/webview/KsAdWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 6
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->yj()Lcom/kwad/components/core/webview/c;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->jq:Lcom/kwad/components/core/webview/c;

    .line 7
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->iv()Lcom/kwad/components/core/e/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 8
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->yk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/components/core/webview/b;->aoD:Z

    .line 9
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->ut()Lcom/kwad/sdk/core/webview/KsAdWebView$c;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aec:Lcom/kwad/sdk/core/webview/KsAdWebView$c;

    .line 10
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/b$a;->yl()Lcom/kwad/components/core/webview/jshandler/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/core/webview/b;->aoE:Lcom/kwad/components/core/webview/jshandler/a/c;

    .line 11
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->fA()V

    .line 12
    iget-object p1, p0, Lcom/kwad/components/core/webview/b;->jq:Lcom/kwad/components/core/webview/c;

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    invoke-static {p1, v0}, Lcom/kwad/components/core/webview/b;->a(Lcom/kwad/components/core/webview/c;Landroid/webkit/WebView;)V

    .line 13
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->bi()V

    .line 14
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KY()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->mPageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/components/core/webview/b;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/kwad/components/core/webview/b;->aoH:Z

    if-eqz p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/webview/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->R(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    invoke-direct {p0, p1}, Lcom/kwad/components/core/webview/b;->e(Lcom/kwad/sdk/core/webview/KsAdWebView;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/webview/b;->mPageUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->fm(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    invoke-direct {p0, p1}, Lcom/kwad/components/core/webview/b;->b(Lcom/kwad/sdk/core/webview/KsAdWebView;)V

    .line 19
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    invoke-direct {p0, p1}, Lcom/kwad/components/core/webview/b;->c(Lcom/kwad/sdk/core/webview/KsAdWebView;)V

    .line 20
    iget-object p1, p0, Lcom/kwad/components/core/webview/b;->ND:Lcom/kwad/sdk/core/webview/KsAdWebView;

    invoke-direct {p0, p1}, Lcom/kwad/components/core/webview/b;->d(Lcom/kwad/sdk/core/webview/KsAdWebView;)V

    return-void
.end method

.method public final bi(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/webview/b;->aoH:Z

    return-void
.end method

.method public final kV()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/webview/b;->bl()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/webview/b;->aoC:Lcom/kwad/sdk/core/download/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/kwad/sdk/core/download/b;->Lz()Lcom/kwad/sdk/core/download/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/kwad/components/core/webview/b;->aoC:Lcom/kwad/sdk/core/download/d;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/b;->a(Lcom/kwad/sdk/core/download/c;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/kwad/components/core/webview/b;->aoE:Lcom/kwad/components/core/webview/jshandler/a/c;

    .line 19
    .line 20
    return-void
.end method
