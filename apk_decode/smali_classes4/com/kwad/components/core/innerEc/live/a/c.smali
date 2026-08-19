.class public final Lcom/kwad/components/core/innerEc/live/a/c;
.super Lcom/kwad/components/core/webview/tachikoma/b/w;
.source "SourceFile"


# instance fields
.field private final TD:Lcom/kwad/sdk/core/response/model/LiveInfo;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/LiveInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/b/w;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/a/c;->TD:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/c/c;)V
    .locals 0
    .param p2    # Lcom/kwad/sdk/core/webview/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/a/c;->TD:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/c/c;->b(Lcom/kwad/sdk/core/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getLiveDetailInfo"

    .line 2
    .line 3
    return-object v0
.end method
