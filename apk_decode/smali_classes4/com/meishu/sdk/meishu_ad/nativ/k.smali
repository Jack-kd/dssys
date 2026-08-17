.class public Lcom/meishu/sdk/meishu_ad/nativ/k;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/k;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

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
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/k;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/k;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
