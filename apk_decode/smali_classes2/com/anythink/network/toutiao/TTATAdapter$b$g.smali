.class Lcom/anythink/network/toutiao/TTATAdapter$b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


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
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->a:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->b:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iput p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->c:I

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

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

.method public onFeedAdLoad(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v6, v2

    .line 30
    check-cast v6, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 31
    .line 32
    new-instance v3, Lcom/anythink/network/toutiao/TTATNativePatchAd;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 35
    .line 36
    iget-object v4, v2, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 39
    .line 40
    iget-object v5, v2, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 41
    .line 42
    iget-boolean v7, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->a:Z

    .line 43
    .line 44
    iget-object v8, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->b:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    iget v9, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->c:I

    .line 47
    .line 48
    iget-boolean v10, v2, Lcom/anythink/network/toutiao/TTATAdapter;->h:Z

    .line 49
    .line 50
    invoke-direct/range {v3 .. v10}, Lcom/anythink/network/toutiao/TTATNativePatchAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;IZ)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    new-array v1, v1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 72
    .line 73
    invoke-static {v1, p1, v0}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Ljava/util/List;[Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$g;->d:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 80
    .line 81
    const-string v0, ""

    .line 82
    .line 83
    const-string v1, "Ad list is empty."

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
