.class public Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 2
    .line 3
    iget v1, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->k:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x64

    .line 6
    .line 7
    iput v1, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->k:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 13
    .line 14
    iget v1, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->k:I

    .line 15
    .line 16
    iget v2, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->l:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-le v1, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sub-int/2addr v2, v1

    .line 26
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->n:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->s:Ljava/lang/Runnable;

    .line 29
    .line 30
    const-wide/16 v4, 0x64

    .line 31
    .line 32
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->o:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    int-to-long v4, v2

    .line 42
    invoke-interface {v0, v4, v5}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;->onTick(J)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 46
    .line 47
    iget v1, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->l:I

    .line 48
    .line 49
    iget v4, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->m:I

    .line 50
    .line 51
    sub-int/2addr v1, v4

    .line 52
    if-ge v2, v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 61
    .line 62
    iget-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->q:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method
