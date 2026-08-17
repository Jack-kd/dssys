.class public Lcom/kwad/components/core/webview/tachikoma/d/b;
.super Lcom/kwad/sdk/mvp/a;
.source "SourceFile"


# instance fields
.field public Cd:Ljava/lang/String;

.field public Cj:J

.field public akL:Lcom/kwad/components/core/webview/tachikoma/f/c;

.field public akN:Lcom/kwad/components/offline/api/tk/model/StyleTemplate;

.field public asx:Lcom/kwad/components/core/webview/tachikoma/d/e;

.field public auD:Lcom/kwad/sdk/widget/g;

.field public auE:Lcom/kwad/sdk/components/l;

.field public auF:Lcom/kwad/components/core/webview/tachikoma/k;

.field public auG:Z

.field public auH:Lcom/kwad/components/core/webview/tachikoma/d/e$a;

.field public mActivity:Landroid/app/Activity;

.field public mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/mvp/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/d/b;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 8
    .line 9
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/b;->asx:Lcom/kwad/components/core/webview/tachikoma/d/e;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/b;->mActivity:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/b;->auD:Lcom/kwad/sdk/widget/g;

    .line 7
    .line 8
    return-void
.end method
