.class public Lcom/ubix/ssp/open/manager/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/open/icon/UBiXIconManager;


# static fields
.field public static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:Lcom/ubix/ssp/ad/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/f/b;->a()V

    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBiddingToken()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/f/b;->b()Ljava/lang/String;

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
    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v1, "getBiddingToken:null"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIconView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/f/b;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/f/b;->c()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v1, "getIconView: return null"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsReview()Lcom/ubix/ssp/open/ParamsReview;
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParamsReview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/f/b;->d()Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/f/b;->d()Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v1, "getParamsReview: return null"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrice()J
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/f/b;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/f/b;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v1, "getPrice: return 0"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/f/b;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/f/b;->f()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v1, "isValid: return false"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/f/b;->g()V

    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v1, "loadAd"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadBiddingAd(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/f/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBiddingAd adm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadIconAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;Lcom/ubix/ssp/open/icon/UBiXIconAdListener;)V
    .locals 5

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   AdSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    new-instance v0, Lcom/ubix/ssp/ad/f/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/ubix/ssp/ad/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;)V

    iput-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    new-instance p1, Lcom/ubix/ssp/open/manager/b$a;

    invoke-direct {p1, p0, p4}, Lcom/ubix/ssp/open/manager/b$a;-><init>(Lcom/ubix/ssp/open/manager/b;Lcom/ubix/ssp/open/icon/UBiXIconAdListener;)V

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/g/d;)V

    return-void
.end method

.method public lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v0, "lossInfo is empty"

    :goto_0
    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/open/UBiXAdLossInfo;->getInfo()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/f/b;->a(Ljava/util/HashMap;)V

    sget-object p1, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string v0, "lossNotice"

    goto :goto_0

    :cond_1
    return-void
.end method

.method public winNotice(J)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/b;->b:Lcom/ubix/ssp/ad/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/f/b;->a(J)V

    sget-object p1, Lcom/ubix/ssp/open/manager/b;->a:Ljava/lang/String;

    const-string p2, "winNotice"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
