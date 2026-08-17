.class final Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/page/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/AdWebViewActivityProxy;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final aP(Z)V
    .locals 2

    .line 1
    const-string v0, "AdWebViewActivityProxy"

    .line 2
    .line 3
    const-string v1, "mH5LoginPageView onGetUserInfoFail"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$900(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/c/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/16 p1, 0x7d1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 p1, 0x7d0

    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$900(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/c/h;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "h5 get code error"

    .line 30
    .line 31
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/core/c/h;->l(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final tN()V
    .locals 2

    .line 1
    const-string v0, "AdWebViewActivityProxy"

    .line 2
    .line 3
    const-string v1, "mH5LoginPageView onGetCodeSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$900(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/c/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$900(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/c/h;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final tO()V
    .locals 3

    .line 1
    const-string v0, "mH5LoginPageView onGetUserInfoSuccess"

    .line 2
    .line 3
    const-string v1, "AdWebViewActivityProxy"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$1000(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isDoAuth:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$900(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/c/h;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$900(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/c/h;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$1100(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/kwad/components/core/proxy/f;->finish()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$1200(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/page/c;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$1300(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Landroid/view/ViewGroup;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$1200(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/page/c;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "after loading auth load landingView :"

    .line 77
    .line 78
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$1400(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$1400(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$1500(Lcom/kwad/components/core/page/AdWebViewActivityProxy;Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final tP()V
    .locals 2

    .line 1
    const-string v0, "AdWebViewActivityProxy"

    .line 2
    .line 3
    const-string v1, "mH5LoginPageView onGetUserInfoCancel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$900(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/c/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$3;->adm:Lcom/kwad/components/core/page/AdWebViewActivityProxy;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->access$900(Lcom/kwad/components/core/page/AdWebViewActivityProxy;)Lcom/kwad/components/core/c/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/kwad/components/core/c/h;->oW()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
