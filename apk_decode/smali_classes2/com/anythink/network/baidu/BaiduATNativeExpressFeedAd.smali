.class public Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaiduATNativeExpressFeedAd"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/baidu/mobads/sdk/api/ExpressResponse;

.field private c:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;

.field private d:Landroid/widget/FrameLayout;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/ExpressResponse;IIZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/mobads/sdk/api/ExpressResponse;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->b:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 7
    .line 8
    if-lez p3, :cond_0

    .line 9
    .line 10
    if-lez p4, :cond_0

    .line 11
    .line 12
    invoke-interface {p2, p3, p4}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setExpectedSizePixel(II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance p3, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getAdActionType()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p3, 0x2

    .line 27
    const/4 p4, 0x1

    .line 28
    if-eq p1, p4, :cond_2

    .line 29
    .line 30
    if-eq p1, p3, :cond_1

    .line 31
    .line 32
    const/4 p3, 0x3

    .line 33
    if-eq p1, p3, :cond_2

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p3, p4

    .line 38
    :cond_2
    :goto_0
    invoke-virtual {p0, p3}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p3, "request_id"

    .line 46
    .line 47
    invoke-interface {p2, p3}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getAdDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const/4 p4, 0x0

    .line 52
    invoke-virtual {p1, p3, p4, p6}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->e:Ljava/util/Map;

    .line 57
    .line 58
    if-eqz p5, :cond_3

    .line 59
    .line 60
    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getPECPM()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const-string p3, "en_p"

    .line 65
    .line 66
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->e:Ljava/util/Map;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->c:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;

    return-object p0
.end method

.method private a(Lcom/baidu/mobads/sdk/api/ExpressResponse;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;

    invoke-direct {v0, p0}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;-><init>(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)V

    invoke-interface {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setInteractionListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressInteractionListener;)V

    .line 3
    new-instance v0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$d;

    invoke-direct {v0, p0}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$d;-><init>(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)V

    invoke-interface {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setAdDislikeListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;)V

    .line 4
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->render()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->b:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->b:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$a;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$a;-><init>(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setAdDislikeListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->b:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 15
    .line 16
    new-instance p2, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$b;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$b;-><init>(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setAdCloseListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressCloseListener;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->b:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getExpressAdView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    new-instance p2, Landroid/widget/FrameLayout;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    :cond_1
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-lez p2, :cond_2

    .line 50
    .line 51
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 54
    .line 55
    .line 56
    :cond_2
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    check-cast p2, Landroid/view/ViewGroup;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->d:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_0
    return-void
.end method

.method public setRenderCallback(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->c:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;

    .line 2
    .line 3
    return-void
.end method

.method public startRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->b:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->a(Lcom/baidu/mobads/sdk/api/ExpressResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
