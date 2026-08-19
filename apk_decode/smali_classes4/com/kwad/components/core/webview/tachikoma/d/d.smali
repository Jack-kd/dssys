.class public final Lcom/kwad/components/core/webview/tachikoma/d/d;
.super Lcom/kwad/sdk/mvp/Presenter;
.source "SourceFile"


# instance fields
.field private akX:Landroid/widget/FrameLayout;

.field private ald:Lcom/kwad/sdk/components/o;

.field private asx:Lcom/kwad/components/core/webview/tachikoma/d/e;

.field protected auC:Lcom/kwad/components/core/webview/tachikoma/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final ay()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->ay()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->SB()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/kwad/components/core/webview/tachikoma/d/b;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->auC:Lcom/kwad/components/core/webview/tachikoma/d/b;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/d/b;->asx:Lcom/kwad/components/core/webview/tachikoma/d/e;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->asx:Lcom/kwad/components/core/webview/tachikoma/d/e;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/kwad/components/core/webview/tachikoma/d/d$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/kwad/components/core/webview/tachikoma/d/d$1;-><init>(Lcom/kwad/components/core/webview/tachikoma/d/d;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/d/e;->a(Lcom/kwad/components/core/webview/tachikoma/f/e;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->auC:Lcom/kwad/components/core/webview/tachikoma/d/b;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/d/b;->auF:Lcom/kwad/components/core/webview/tachikoma/k;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/webview/tachikoma/k;->a([Ljava/lang/Object;)Lcom/kwad/sdk/components/o;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->ald:Lcom/kwad/sdk/components/o;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->auC:Lcom/kwad/components/core/webview/tachikoma/d/b;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/d/b;->auE:Lcom/kwad/sdk/components/l;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-interface {v0, v2, v1}, Lcom/kwad/sdk/components/l;->callbackPageStatus(ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->asx:Lcom/kwad/components/core/webview/tachikoma/d/e;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    .line 63
    const/4 v2, -0x1

    .line 64
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->ald:Lcom/kwad/sdk/components/o;

    .line 68
    .line 69
    invoke-interface {v2}, Lcom/kwad/sdk/components/o;->getView()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->akX:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->ald:Lcom/kwad/sdk/components/o;

    .line 82
    .line 83
    invoke-interface {v0}, Lcom/kwad/sdk/components/o;->render()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->auC:Lcom/kwad/components/core/webview/tachikoma/d/b;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/d/b;->auE:Lcom/kwad/sdk/components/l;

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    invoke-interface {v0, v2, v1}, Lcom/kwad/sdk/components/l;->callbackPageStatus(ZLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final onBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->ald:Lcom/kwad/sdk/components/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/components/o;->onBackPressed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_tk_dialog_container:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/d/d;->akX:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    return-void
.end method

.method public final onUnbind()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
