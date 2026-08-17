.class public Lcom/ubix/ssp/open/manager/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final a:Ljava/lang/String; = "f"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/ubix/ssp/ad/k/b;

.field private d:Landroid/app/Activity;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/open/manager/f;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/manager/f;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->h()V

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    return-void
.end method

.method public getBiddingToken()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBiddingToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->f(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "getBiddingToken:null"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsReview()Lcom/ubix/ssp/open/ParamsReview;
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParamsReview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/k/b;->C()Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->C()Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "getParamsReview: return null"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrice()J
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/k/b;->D()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->D()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "getPrice: return 0"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/k/b;->M()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->M()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "isValid: return false"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isVideoAd()Z
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoAd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/k/b;->N()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->N()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "isVideoAd: return false"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->O()V

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "loadAd"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadBiddingAd(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBiddingAd adm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/k/b;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadRewardVideoAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ubix/ssp/open/manager/f;->loadRewardVideoAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;)V

    return-void
.end method

.method public loadRewardVideoAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   listener is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "   context is null:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, p1, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/ubix/ssp/ad/k/b;

    invoke-direct {v0, p1, p2}, Lcom/ubix/ssp/ad/k/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0, p3}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;)V

    iget-object p1, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    new-instance p2, Lcom/ubix/ssp/open/manager/f$a;

    invoke-direct {p2, p0, p4}, Lcom/ubix/ssp/open/manager/f$a;-><init>(Lcom/ubix/ssp/open/manager/f;Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;)V

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/g/j;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/open/manager/f;->b:Ljava/lang/String;

    return-void
.end method

.method public lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v0, "lossInfo is empty"

    :goto_0
    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/open/UBiXAdLossInfo;->getInfo()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/k/b;->b(Ljava/util/HashMap;)V

    sget-object p1, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v0, "lossNotice"

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.ubix.ssp.open.comm.UBiXVideoActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/ubix/ssp/open/manager/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uniqueId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object p1, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/ubix/ssp/ad/k/b;->a(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/k/b;->G()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/k/b;->G()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/ubix/ssp/open/manager/f;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, -0x80000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x500

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_3
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/k/b;->h()V

    sget-object p1, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v0, "onActivityDestroyed"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/open/manager/f;->d:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setExtraInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/k/b;->a(Ljava/util/HashMap;)V

    sget-object p1, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v0, "setExtraInfo"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showRewardVideo(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->x()V

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "showRewardVideo:ShowStart"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x4

    const-string v0, "Activity/Context\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->b(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/k/b;->e(Lcom/ubix/ssp/open/AdError;)V

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRewardVideo:ShowError:ErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   ErrorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/open/manager/f;->e:I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ubix.ssp.open.comm.UBiXVideoActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ubix/ssp/open/manager/f;->b:Ljava/lang/String;

    const-string v2, "uniqueId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public winNotice(J)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f;->c:Lcom/ubix/ssp/ad/k/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(J)V

    sget-object p1, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string p2, "winNotice"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
