.class public final Lcom/kwad/components/core/innerEc/live/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Xm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/components/core/innerEc/live/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/d/b;->Xm:Ljava/util/Set;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/d/b;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/d/b;->Xm:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/d/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/d/b;->Xm:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/d/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/d/b;->Xm:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/kwad/components/core/innerEc/live/d/b$2;

    invoke-direct {v0, p0, p1}, Lcom/kwad/components/core/innerEc/live/d/b$2;-><init>(Lcom/kwad/components/core/innerEc/live/d/b;Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final sJ()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/d/b$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/d/b$1;-><init>(Lcom/kwad/components/core/innerEc/live/d/b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
