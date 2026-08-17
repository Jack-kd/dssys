.class public Lcom/meishu/sdk/core/bquery/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/view/player/c$a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/bquery/h;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/bquery/e;Lcom/meishu/sdk/core/bquery/h;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/bquery/b;->a:Lcom/meishu/sdk/core/bquery/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/bquery/b;->a:Lcom/meishu/sdk/core/bquery/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    const-string v2, "mediaPlayer loadVideo error"

    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/bquery/h;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/bquery/b;->a:Lcom/meishu/sdk/core/bquery/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, p2, v1}, Lcom/meishu/sdk/core/bquery/h;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method
