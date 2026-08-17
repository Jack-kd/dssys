.class public abstract Lcom/ubix/ssp/ad/e/z/h;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/z/h$b;,
        Lcom/ubix/ssp/ad/e/z/h$c;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:D

.field protected c:Lcom/ubix/ssp/ad/e/a0/l;

.field protected d:Landroid/app/Dialog;

.field protected e:Lcom/ubix/ssp/ad/e/z/h$c;

.field protected f:Lcom/ubix/ssp/ad/e/z/h$b;

.field protected g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/h;->a:I

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    iput-wide v1, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/h;->g:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/e/a0/r;->g(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    div-double/2addr v1, v3

    float-to-double v3, v0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x402a000000000000L    # 13.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/h;->a:I

    :try_start_0
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/h;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/ubix/ssp/ad/e/z/h$a;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/z/h$a;-><init>(Lcom/ubix/ssp/ad/e/z/h;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/h;->g:Z

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/l;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_2
    return-void
.end method

.method public abstract a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
.end method

.method public abstract a(Lcom/ubix/ssp/ad/e/a0/l;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
.end method

.method public b()Landroid/widget/TextView;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x7c7c7d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/h;->g:Z

    return v0
.end method

.method public abstract getPopupType()I
.end method

.method public getType()I
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/z/h;->getPopupType()I

    move-result v0

    return v0
.end method

.method public abstract setData(Landroid/os/Bundle;)V
.end method
