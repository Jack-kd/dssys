.class Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->startRender(Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field final synthetic d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATNativeExpressHandler;[ILcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->a:[I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->b:Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "onRenderFail, errorCode: %d, errorMsg: %s"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->a:[I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    aget v1, p1, v0

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    aput v1, p1, v0

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->b:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->b:Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1, p2, p3}, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;->onRenderFail(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->b:Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->b:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p1, p2}, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;->onRenderSuccess(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->b:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->a:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 3

    .line 1
    sget-object p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->b:Ljava/util/List;

    .line 6
    .line 7
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->c:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2, p2, p3}, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressHandler;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;FF)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->a:[I

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    aget p3, p1, p2

    .line 21
    .line 22
    add-int/lit8 p3, p3, -0x1

    .line 23
    .line 24
    aput p3, p1, p2

    .line 25
    .line 26
    if-nez p3, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->b:Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->b:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;->onRenderSuccess(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->b:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;->d:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->a:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
