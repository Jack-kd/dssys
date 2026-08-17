.class public Lcom/meishu/sdk/meishu_ad/nativ/o$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/nativ/o;->a(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/o;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/o;

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
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/o$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/o;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->F:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->E:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/m0;->onADExposure()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/o$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/o;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->P:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
