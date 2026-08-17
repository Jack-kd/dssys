.class Lcom/anythink/network/toutiao/TTATAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/anythink/network/toutiao/TTATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->b:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->c:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onRenderFail(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p2, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRenderSuccess(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;

    .line 26
    .line 27
    new-instance v3, Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->a:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 32
    .line 33
    iget-object v5, v5, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v6, v2, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 36
    .line 37
    iget-boolean v7, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->b:Z

    .line 38
    .line 39
    iget-boolean v8, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->c:Z

    .line 40
    .line 41
    iget v9, v2, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;->expressWidth:F

    .line 42
    .line 43
    iget v10, v2, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;->expressHeight:F

    .line 44
    .line 45
    invoke-direct/range {v3 .. v10}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZFF)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 62
    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$c;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 70
    .line 71
    invoke-static {v0, v1, p1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
