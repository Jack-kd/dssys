.class public final Lcom/kwad/components/core/page/d/a/g;
.super Lcom/kwad/components/core/page/d/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/jshandler/a/c;


# static fields
.field private static final jk:Landroid/os/Handler;


# instance fields
.field private final Bq:Lcom/kwad/sdk/core/c/c;

.field public adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

.field private adK:Z

.field private aeC:Z

.field private aeD:Lcom/kwad/components/core/webview/jshandler/az;

.field private aeE:Lcom/kwad/components/core/webview/jshandler/av;

.field private aeF:Lcom/kwad/components/core/webview/jshandler/bi;

.field private aeG:Ljava/lang/String;

.field private aeH:Ljava/lang/Runnable;

.field private aeI:Z

.field private aee:Lcom/kwad/components/core/webview/jshandler/b;

.field private jp:Lcom/kwad/components/core/webview/b;

.field private jq:Lcom/kwad/components/core/webview/c;

.field public mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/components/core/page/d/a/g;->jk:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/page/d/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/core/page/d/a/g;->adK:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/core/page/d/a/g;->aeC:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/components/core/page/d/a/g;->aeI:Z

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/components/core/page/d/a/g$3;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kwad/components/core/page/d/a/g$3;-><init>(Lcom/kwad/components/core/page/d/a/g;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->Bq:Lcom/kwad/sdk/core/c/c;

    .line 17
    .line 18
    new-instance v0, Lcom/kwad/components/core/page/d/a/g$4;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/kwad/components/core/page/d/a/g$4;-><init>(Lcom/kwad/components/core/page/d/a/g;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->aee:Lcom/kwad/components/core/webview/jshandler/b;

    .line 24
    .line 25
    new-instance v0, Lcom/kwad/components/core/page/d/a/g$5;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/kwad/components/core/page/d/a/g$5;-><init>(Lcom/kwad/components/core/page/d/a/g;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->jq:Lcom/kwad/components/core/webview/c;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/d/a/g;Lcom/kwad/components/core/webview/jshandler/av;)Lcom/kwad/components/core/webview/jshandler/av;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g;->aeE:Lcom/kwad/components/core/webview/jshandler/av;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/d/a/g;Lcom/kwad/components/core/webview/jshandler/az;)Lcom/kwad/components/core/webview/jshandler/az;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g;->aeD:Lcom/kwad/components/core/webview/jshandler/az;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/d/a/g;Lcom/kwad/components/core/webview/jshandler/bi;)Lcom/kwad/components/core/webview/jshandler/bi;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g;->aeF:Lcom/kwad/components/core/webview/jshandler/bi;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/d/a/g;)Lcom/kwad/sdk/core/webview/KsAdWebView;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/d/a/g;Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/KsAdWebView;
    .locals 0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/d/a/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g;->aeH:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/d/a/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g;->aeG:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/d/a/g;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/kwad/components/core/page/d/a/g;->adK:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/core/page/d/a/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/d/a/g;->aeG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/core/page/d/a/g;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/page/d/a/g;->aeC:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/core/page/d/a/g;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/d/a/g;->aeH:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/page/d/a/g;)Lcom/kwad/components/core/webview/jshandler/av;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/d/a/g;->aeE:Lcom/kwad/components/core/webview/jshandler/av;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/core/page/d/a/g;)Lcom/kwad/components/core/webview/jshandler/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/d/a/g;->aee:Lcom/kwad/components/core/webview/jshandler/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/page/d/a/g;)Lcom/kwad/components/core/webview/jshandler/bi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/d/a/g;->aeF:Lcom/kwad/components/core/webview/jshandler/bi;

    .line 2
    .line 3
    return-object p0
.end method

.method private fA()V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/webview/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->jp:Lcom/kwad/components/core/webview/b;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/b;->bi(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/kwad/components/core/webview/b$a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/kwad/components/core/webview/b$a;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/b$a;->bi(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/webview/b$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/b;->mPageUrl:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/b$a;->bu(Ljava/lang/String;)Lcom/kwad/components/core/webview/b$a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/b$a;->f(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/components/core/webview/b$a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/b;->mRootContainer:Landroid/view/ViewGroup;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/b$a;->m(Landroid/view/ViewGroup;)Lcom/kwad/components/core/webview/b$a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g;->jq:Lcom/kwad/components/core/webview/c;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/b$a;->a(Lcom/kwad/components/core/webview/c;)Lcom/kwad/components/core/webview/b$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/b;->aec:Lcom/kwad/sdk/core/webview/KsAdWebView$c;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/b$a;->b(Lcom/kwad/sdk/core/webview/KsAdWebView$c;)Lcom/kwad/components/core/webview/b$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/webview/b$a;->a(Lcom/kwad/components/core/webview/jshandler/a/c;)Lcom/kwad/components/core/webview/b$a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g;->jp:Lcom/kwad/components/core/webview/b;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/webview/b;->a(Lcom/kwad/components/core/webview/b$a;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/kwad/components/core/page/d/a/g;->uv()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tU()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-object v2, p0, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tT()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/commercial/f/a;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->getClientConfig()Lcom/kwad/sdk/core/webview/a/c$a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->getClientConfig()Lcom/kwad/sdk/core/webview/a/c$a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lcom/kwad/components/core/page/d/a/g$1;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/kwad/components/core/page/d/a/g$1;-><init>(Lcom/kwad/components/core/page/d/a/g;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->a(Lcom/kwad/sdk/core/webview/KsAdWebView$d;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 110
    .line 111
    .line 112
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/b;->mPageUrl:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->loadUrl(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->onActivityCreate()V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static synthetic g(Lcom/kwad/components/core/page/d/a/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/page/d/a/g;->aeC:Z

    .line 2
    .line 3
    return p0
.end method

.method private uv()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->getClientConfig()Lcom/kwad/sdk/core/webview/a/c$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->bV(Z)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/kwad/components/core/page/d/a/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/webview/a/c$a;->fo(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/webview/a/c$a;->bR(Z)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->setClientConfig(Lcom/kwad/sdk/core/webview/a/c$a;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bR(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    cmp-long v0, v2, v4

    .line 45
    .line 46
    if-lez v0, :cond_0

    .line 47
    .line 48
    new-instance v0, Lcom/kwad/components/core/page/d/a/g$6;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/kwad/components/core/page/d/a/g$6;-><init>(Lcom/kwad/components/core/page/d/a/g;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bR(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/by;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bR(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    cmp-long v0, v2, v4

    .line 82
    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->getClientConfig()Lcom/kwad/sdk/core/webview/a/c$a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/a/c$a;->bR(Z)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 97
    .line 98
    new-instance v1, Lcom/kwad/components/core/page/d/a/g$7;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/kwad/components/core/page/d/a/g$7;-><init>(Lcom/kwad/components/core/page/d/a/g;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static synthetic uw()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/page/d/a/g;->jk:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/webview/a/c$a;Ljava/lang/String;)I
    .locals 8
    .param p1    # Lcom/kwad/sdk/core/webview/a/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->cr(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v1, v0

    .line 10
    :goto_0
    new-instance v2, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v2}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 11
    iget-object v4, v2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-nez v4, :cond_0

    .line 12
    new-instance v4, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v4}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object v4, v2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 13
    :cond_0
    iget-object v4, v2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iput-boolean v3, v4, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 14
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/kwad/components/core/page/d/a/g$2;

    invoke-direct {v5, p0}, Lcom/kwad/components/core/page/d/a/g$2;-><init>(Lcom/kwad/components/core/page/d/a/g;)V

    invoke-static {v4, p2, v5}, Lcom/kwad/sdk/core/download/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/a/b$a;)I

    move-result v4

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/kwad/sdk/core/download/a/b;->I(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    :goto_1
    const/4 v5, 0x2

    .line 16
    const-string v6, ""

    if-ne v4, v3, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    move-result-object p2

    invoke-interface {p2}, Lcom/kwad/sdk/core/webview/KsAdWebView$b;->onSuccess()V

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p2

    invoke-static {p2, v6, v5, v2}, Lcom/kwad/sdk/core/adlog/c;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    .line 20
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/kwad/sdk/core/adlog/c;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    move-result-object v7

    invoke-interface {v7}, Lcom/kwad/sdk/core/webview/KsAdWebView$b;->onFailed()V

    :cond_4
    const/4 v7, -0x1

    if-ne v4, v7, :cond_5

    .line 23
    iget-boolean v7, p0, Lcom/kwad/components/core/page/d/a/g;->aeI:Z

    if-nez v7, :cond_5

    .line 24
    iput-boolean v3, p0, Lcom/kwad/components/core/page/d/a/g;->aeI:Z

    .line 25
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p2

    invoke-static {p2, v6, v5, v2}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    .line 26
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZI)V

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 28
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, v1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZI)V

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    .line 29
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_7

    .line 30
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, v1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZI)V

    :cond_7
    :goto_2
    return v4
.end method

.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/page/d/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/kwad/components/core/page/d/a/b;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/kwad/components/core/page/d/a/g;->fA()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->Bq:Lcom/kwad/sdk/core/c/c;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/c/b;->a(Lcom/kwad/sdk/core/c/c;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->aeD:Lcom/kwad/components/core/webview/jshandler/az;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yz()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->aeD:Lcom/kwad/components/core/webview/jshandler/az;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_webview:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 13
    .line 14
    return-void
.end method

.method public final onUnbind()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->jp:Lcom/kwad/components/core/webview/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/b;->kV()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->Bq:Lcom/kwad/sdk/core/c/c;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/core/c/b;->b(Lcom/kwad/sdk/core/c/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/d/a/g;->adK:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->aeD:Lcom/kwad/components/core/webview/jshandler/az;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yx()V

    .line 11
    .line 12
    .line 13
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->mAdWebView:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g;->aeD:Lcom/kwad/components/core/webview/jshandler/az;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yy()V

    .line 33
    .line 34
    .line 35
    :cond_3
    :goto_1
    return-void
.end method

.method public final ug()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
