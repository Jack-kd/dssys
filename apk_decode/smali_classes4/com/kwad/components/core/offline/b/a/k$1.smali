.class final Lcom/kwad/components/core/offline/b/a/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/NetworkMonitor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/offline/b/a/k;->aE(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic abJ:Lcom/kwad/components/core/offline/b/a/k;

.field final synthetic dK:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/offline/b/a/k;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/offline/b/a/k$1;->abJ:Lcom/kwad/components/core/offline/b/a/k;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/offline/b/a/k$1;->dK:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/kwad/components/core/offline/b/a/k$1$1;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/kwad/components/core/offline/b/a/k$1$1;-><init>(Lcom/kwad/components/core/offline/b/a/k$1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
