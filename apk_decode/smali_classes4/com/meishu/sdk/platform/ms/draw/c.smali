.class public Lcom/meishu/sdk/platform/ms/draw/c;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/draw/f$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/c;->a:Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/c;->a:Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/c;->a:Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
