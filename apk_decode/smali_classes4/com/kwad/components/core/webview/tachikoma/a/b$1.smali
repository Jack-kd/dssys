.class final Lcom/kwad/components/core/webview/tachikoma/a/b$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/tachikoma/a/b;->call([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aqf:Lcom/kwad/sdk/commercial/model/WebCloseStatus;

.field final synthetic atF:Lcom/kwad/components/core/webview/tachikoma/a/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/webview/tachikoma/a/b;Lcom/kwad/sdk/commercial/model/WebCloseStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/a/b$1;->atF:Lcom/kwad/components/core/webview/tachikoma/a/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/webview/tachikoma/a/b$1;->aqf:Lcom/kwad/sdk/commercial/model/WebCloseStatus;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/a/b$1;->atF:Lcom/kwad/components/core/webview/tachikoma/a/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/webview/tachikoma/a/b$1;->aqf:Lcom/kwad/sdk/commercial/model/WebCloseStatus;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/a/b;->c(Lcom/kwad/sdk/commercial/model/WebCloseStatus;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
