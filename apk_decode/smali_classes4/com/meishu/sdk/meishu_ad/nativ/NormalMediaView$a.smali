.class public Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->F:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->E:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/m0;->onADExposure()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->P:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
