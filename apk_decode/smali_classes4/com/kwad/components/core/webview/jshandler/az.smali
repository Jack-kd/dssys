.class public final Lcom/kwad/components/core/webview/jshandler/az;
.super Lcom/kwad/components/core/webview/tachikoma/b/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/webview/jshandler/az$a;
    }
.end annotation


# instance fields
.field private arv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/kwad/components/core/webview/jshandler/az;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/b/w;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/core/webview/jshandler/az;->arv:Z

    return-void
.end method

.method private aG(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/az$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/az$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/kwad/components/core/webview/jshandler/az$a;->a(Lcom/kwad/components/core/webview/jshandler/az$a;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/webview/jshandler/az;->a(Lcom/kwad/sdk/core/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/b;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/webview/jshandler/az;->arv:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/b/w;->atX:Lcom/kwad/sdk/core/webview/c/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/webview/c/c;->b(Lcom/kwad/sdk/core/b;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/b/w;->atY:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final bm(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/webview/jshandler/az;->arv:Z

    .line 3
    .line 4
    return-void
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "registerLifecycleListener"

    .line 2
    .line 3
    return-object v0
.end method

.method public final yA()V
    .locals 1

    .line 1
    const-string v0, "hideEnd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/components/core/webview/jshandler/az;->aG(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final yB()V
    .locals 1

    .line 1
    const-string v0, "pageVisiable"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/components/core/webview/jshandler/az;->aG(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final yC()V
    .locals 1

    .line 1
    const-string v0, "pageInvisiable"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/components/core/webview/jshandler/az;->aG(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final yx()V
    .locals 1

    .line 1
    const-string v0, "showStart"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/components/core/webview/jshandler/az;->aG(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final yy()V
    .locals 1

    .line 1
    const-string v0, "showEnd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/components/core/webview/jshandler/az;->aG(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final yz()V
    .locals 1

    .line 1
    const-string v0, "hideStart"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/components/core/webview/jshandler/az;->aG(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
