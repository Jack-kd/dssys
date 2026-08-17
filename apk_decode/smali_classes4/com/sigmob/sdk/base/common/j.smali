.class public abstract Lcom/sigmob/sdk/base/common/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/j$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/widget/RelativeLayout;

.field protected d:Lcom/sigmob/sdk/base/common/k;

.field protected e:Lcom/sigmob/sdk/base/common/g;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/RelativeLayout;

.field private final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/sigmob/sdk/base/common/j$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->h:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sigmob/sdk/b;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sigmob/sdk/base/blurkit/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/sdk/base/blurkit/a;->a()Lcom/sigmob/sdk/base/blurkit/a;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/base/blurkit/a;->a(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->f:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/j;->f:Landroid/widget/ImageView;

    :cond_3
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2

    .line 3
    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v0, "isHalfInterstitial"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int/lit8 p2, p2, 0x55

    div-int/lit8 p2, p2, 0x64

    mul-int/lit8 p3, p2, 0x10

    div-int/lit8 p3, p3, 0x9

    new-instance v0, Lcom/sigmob/sdk/base/common/g;

    invoke-direct {v0, p3, p2}, Lcom/sigmob/sdk/base/common/g;-><init>(II)V

    :goto_0
    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/g;

    goto :goto_1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int/lit8 p2, p2, 0x55

    div-int/lit8 p2, p2, 0x64

    mul-int/lit8 p3, p2, 0x10

    div-int/lit8 p3, p3, 0x9

    new-instance v0, Lcom/sigmob/sdk/base/common/g;

    invoke-direct {v0, p2, p3}, Lcom/sigmob/sdk/base/common/g;-><init>(II)V

    goto :goto_0

    :goto_1
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/j;->g:Landroid/widget/RelativeLayout;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/g;->a()I

    move-result p2

    iget-object p3, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/common/g;->b()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/j;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/j;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_2
    return-void
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public a(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/j$a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j;->i:Lcom/sigmob/sdk/base/common/j$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Tried to broadcast a video event without a broadcast identifier to send to."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->i:Lcom/sigmob/sdk/base/common/j$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "action.interstitial.click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/j;->i:Lcom/sigmob/sdk/base/common/j$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/j$a;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Tried to broadcast a video event without a broadcast identifier to send to."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v1, v0, p1, p2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Tried to broadcast a video event without a broadcast identifier to send to."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, p1, v2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/app/Dialog;)Z
    .locals 0

    .line 9
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public c()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/j;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->f:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public abstract i()V
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Lcom/sigmob/sdk/base/common/k;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    return-object v0
.end method

.method public l()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public m()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    :cond_0
    return-object v0
.end method

.method public n()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public abstract o()V
.end method
