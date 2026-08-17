.class public Lcom/meishu/sdk/platform/ms/recycler/l$g;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/l;->replay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$g;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$g;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$g;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->replay()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
