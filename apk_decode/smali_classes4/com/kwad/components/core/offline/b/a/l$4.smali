.class final Lcom/kwad/components/core/offline/b/a/l$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/offline/api/core/api/IBundleService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/offline/b/a/l;->bundleService()Lcom/kwad/components/offline/api/core/api/IBundleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ack:Lcom/kwad/components/core/offline/b/a/l;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/offline/b/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/offline/b/a/l$4;->ack:Lcom/kwad/components/core/offline/b/a/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final loadBundle(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/components/offline/api/core/api/IBundleLoadListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/g;->yH()Lcom/kwad/components/core/webview/tachikoma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/kwad/components/core/offline/b/a/l$4$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p3}, Lcom/kwad/components/core/offline/b/a/l$4$1;-><init>(Lcom/kwad/components/core/offline/b/a/l$4;Lcom/kwad/components/offline/api/core/api/IBundleLoadListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1}, Lcom/kwad/components/core/webview/tachikoma/g;->b(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/components/core/webview/tachikoma/g$b;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final loadBundleWithString(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/components/offline/api/core/api/IBundleLoadListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/g;->yH()Lcom/kwad/components/core/webview/tachikoma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/kwad/components/core/offline/b/a/l$4$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p3}, Lcom/kwad/components/core/offline/b/a/l$4$2;-><init>(Lcom/kwad/components/core/offline/b/a/l$4;Lcom/kwad/components/offline/api/core/api/IBundleLoadListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1}, Lcom/kwad/components/core/webview/tachikoma/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/components/core/webview/tachikoma/g$b;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final unloadBundle(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/g;->yH()Lcom/kwad/components/core/webview/tachikoma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/g;->unloadBundle(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
