.class public final Lcom/kwad/components/core/s/b/b;
.super Lcom/kwad/sdk/mvp/Presenter;
.source "SourceFile"


# instance fields
.field private akX:Landroid/widget/FrameLayout;

.field private ala:Lcom/kwad/components/core/s/a/b;

.field private ald:Lcom/kwad/sdk/components/o;


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

.method public static synthetic a(Lcom/kwad/components/core/s/b/b;)Lcom/kwad/components/core/s/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/s/b/b;->ala:Lcom/kwad/components/core/s/a/b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final ay()V
    .locals 2

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
    check-cast v0, Lcom/kwad/components/core/s/a/b;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/core/s/b/b;->ala:Lcom/kwad/components/core/s/a/b;

    .line 11
    .line 12
    sget v0, Lcom/kwad/sdk/R$id;->ksad_js_container:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/FrameLayout;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/kwad/components/core/s/b/b;->akX:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b;->ala:Lcom/kwad/components/core/s/a/b;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/kwad/components/core/s/a/b;->akR:Lcom/kwad/components/core/webview/tachikoma/k;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/k;->a([Ljava/lang/Object;)Lcom/kwad/sdk/components/o;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/kwad/components/core/s/b/b;->ald:Lcom/kwad/sdk/components/o;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b;->ala:Lcom/kwad/components/core/s/a/b;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/kwad/components/core/n/a;->abk:Ljava/util/List;

    .line 40
    .line 41
    new-instance v1, Lcom/kwad/components/core/s/b/b$1;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/kwad/components/core/s/b/b$1;-><init>(Lcom/kwad/components/core/s/b/b;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b;->ald:Lcom/kwad/sdk/components/o;

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    const/4 v1, -0x1

    .line 70
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/kwad/components/core/s/b/b;->ald:Lcom/kwad/sdk/components/o;

    .line 74
    .line 75
    invoke-interface {v1}, Lcom/kwad/sdk/components/o;->getView()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b;->akX:Landroid/widget/FrameLayout;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b;->ald:Lcom/kwad/sdk/components/o;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v0, v1}, Lcom/kwad/sdk/components/o;->bindActivity(Landroid/app/Activity;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b;->ald:Lcom/kwad/sdk/components/o;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/kwad/sdk/components/o;->render()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b;->ald:Lcom/kwad/sdk/components/o;

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

.method public final onUnbind()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
