.class public Lcom/meishu/sdk/platform/ms/splash/b$b;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/splash/b;->splashAnimationFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/splash/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/b;Lcom/meishu/sdk/meishu_ad/splash/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->b:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->b:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/splash/b;->a(Lcom/meishu/sdk/platform/ms/splash/b;Lcom/meishu/sdk/meishu_ad/splash/c;Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
