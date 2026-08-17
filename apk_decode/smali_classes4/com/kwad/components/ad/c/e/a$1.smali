.class final Lcom/kwad/components/ad/c/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/e/a;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/kwad/components/ad/c/e/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/e/a$1;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final aD()V
    .locals 2

    .line 1
    const-string v0, "BannerFullTKCardPresenter "

    .line 2
    .line 3
    const-string v1, "onViewFirstInVisible"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final ae()V
    .locals 0

    return-void
.end method

.method public final af()V
    .locals 0

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "BannerFullTKCardPresenter "

    .line 2
    .line 3
    const-string v0, "onViewVisible"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a$1;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/c/e/a;->a(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/core/webview/jshandler/az;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a$1;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/kwad/components/ad/c/e/a;->a(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/core/webview/jshandler/az;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/jshandler/az;->yB()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/kwad/components/core/webview/tachikoma/c/n;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/kwad/components/core/webview/tachikoma/c/n;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a$1;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/components/ad/c/e/a;->b(Lcom/kwad/components/ad/c/e/a;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a$1;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/kwad/components/ad/c/e/a;->c(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 40
    .line 41
    iget-boolean v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/kwad/components/ad/c/e/a;->a(Lcom/kwad/components/ad/c/e/a;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    xor-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    iput-boolean v0, p1, Lcom/kwad/components/core/webview/tachikoma/c/n;->aut:Z

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p1, Lcom/kwad/components/core/webview/tachikoma/c/n;->aut:Z

    .line 54
    .line 55
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a$1;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/kwad/components/ad/c/e/a;->d(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/core/webview/tachikoma/b/o;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/o;->c(Lcom/kwad/components/core/webview/tachikoma/c/n;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a$1;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/kwad/components/ad/c/e/a;->e(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 72
    .line 73
    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 74
    .line 75
    invoke-static {p1, v0}, Lcom/kwad/components/ad/c/e/a;->a(Lcom/kwad/components/ad/c/e/a;Z)Z

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a$1;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/kwad/components/ad/c/e/a;->a(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/core/webview/jshandler/az;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/jshandler/az;->yC()V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method
