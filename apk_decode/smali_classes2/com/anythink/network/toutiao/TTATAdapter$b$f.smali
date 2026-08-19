.class Lcom/anythink/network/toutiao/TTATAdapter$b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:I

.field final synthetic d:Lcom/anythink/network/toutiao/TTATAdapter$b;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter$b;ZLandroid/graphics/Bitmap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->a:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->b:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iput p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onNativeAdLoad(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd;",
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v6, v2

    .line 21
    check-cast v6, Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 22
    .line 23
    new-instance v3, Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 26
    .line 27
    iget-object v4, v2, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 30
    .line 31
    iget-object v5, v2, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 32
    .line 33
    iget-boolean v7, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->a:Z

    .line 34
    .line 35
    iget-object v8, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->b:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    iget v9, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->c:I

    .line 38
    .line 39
    iget-boolean v10, v2, Lcom/anythink/network/toutiao/TTATAdapter;->h:Z

    .line 40
    .line 41
    invoke-direct/range {v3 .. v10}, Lcom/anythink/network/toutiao/TTATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;IZ)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    new-array v1, v1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$f;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 63
    .line 64
    invoke-static {v1, p1, v0}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
