.class public Lcom/meishu/sdk/meishu_ad/nativ/i;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    iget v0, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->replay()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
