.class public Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;
.super Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;
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
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->q:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/f;->b(Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
