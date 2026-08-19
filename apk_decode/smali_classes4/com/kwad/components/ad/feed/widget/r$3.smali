.class final Lcom/kwad/components/ad/feed/widget/r$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/feed/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/r;->a(Lcom/kwad/components/core/webview/tachikoma/f/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic jG:Lcom/kwad/components/ad/feed/widget/r;

.field final synthetic jH:Lcom/kwad/components/core/webview/tachikoma/f/d;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/widget/r;Lcom/kwad/components/core/webview/tachikoma/f/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$3;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/feed/widget/r$3;->jH:Lcom/kwad/components/core/webview/tachikoma/f/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(D)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kd()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x42c80000    # 100.0f

    .line 6
    .line 7
    mul-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$3;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->d(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lcom/kwad/sdk/utils/cb;->r(Landroid/view/View;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$3;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/b;->fx()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/kwad/components/ad/feed/d;->ce()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$3;->jH:Lcom/kwad/components/core/webview/tachikoma/f/d;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {v0, v1, p1}, Lcom/kwad/components/core/webview/tachikoma/f/d;->u(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_1
    :goto_0
    return v1
.end method
