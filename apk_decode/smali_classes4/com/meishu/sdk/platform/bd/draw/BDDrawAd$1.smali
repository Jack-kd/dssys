.class Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->showAd(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public pauseBtnClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1100(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->pauseBtnClick()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public playCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$600(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$700(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playCompletion()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public playError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$800(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$900(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playError()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public playPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$200(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$300(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playPause()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public playRenderingStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$100(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playRenderingStart()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public playResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$400(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$500(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playResume()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
