.class public LD0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# static fields
.field public static f:Lcom/anythink/splashad/api/ATSplashAd;


# instance fields
.field public final b:Landroid/widget/FrameLayout;

.field public final c:Ljava/util/Map;

.field public final d:Landroid/app/Activity;

.field public final e:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, LD0/a;->c:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p1, p0, LD0/a;->d:Landroid/app/Activity;

    .line 7
    .line 8
    new-instance p4, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-direct {p4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p4, p0, LD0/a;->b:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p4, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    const/4 v1, -0x2

    .line 23
    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    .line 30
    .line 31
    new-instance p4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "com.flutter.advert/SplashAdView_"

    .line 37
    .line 38
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-direct {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, LD0/a;->e:Lio/flutter/plugin/common/MethodChannel;

    .line 52
    .line 53
    invoke-virtual {p0}, LD0/a;->c()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static bridge synthetic a(LD0/a;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, LD0/a;->e:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method

.method public static bridge synthetic b(LD0/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, LD0/a;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, LD0/a;->b:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LD0/a;->c:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "adId"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, LD0/a$a;

    .line 17
    .line 18
    invoke-direct {v1, p0}, LD0/a$a;-><init>(LD0/a;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/anythink/splashad/api/ATSplashAd;

    .line 22
    .line 23
    iget-object v3, p0, LD0/a;->d:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-direct {v2, v3, v0, v1}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    .line 26
    .line 27
    .line 28
    sput-object v2, LD0/a;->f:Lcom/anythink/splashad/api/ATSplashAd;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/anythink/splashad/api/ATSplashAd;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "splashonError:"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, LE0/a;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "onError"

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, LD0/a;->b:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->b:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method
