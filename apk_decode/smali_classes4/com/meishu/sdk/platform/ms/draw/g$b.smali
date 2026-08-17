.class public Lcom/meishu/sdk/platform/ms/draw/g$b;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/draw/g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/draw/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$b;->a:Lcom/meishu/sdk/platform/ms/draw/g;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$b;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$b;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
