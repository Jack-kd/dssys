.class public final Lcom/kwad/components/core/innerEc/live/a/p;
.super Lcom/kwad/components/core/webview/tachikoma/b/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/a/p$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/b/w;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private aG(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/p$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/p$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/kwad/components/core/innerEc/live/a/p$a;->a(Lcom/kwad/components/core/innerEc/live/a/p$a;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "registerHorizontalSwipeListener"

    .line 2
    .line 3
    return-object v0
.end method

.method public final ry()V
    .locals 1

    .line 1
    const-string v0, "left"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/a/p;->aG(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final rz()V
    .locals 1

    .line 1
    const-string v0, "right"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/a/p;->aG(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
