.class public Lcom/ad/main/bz/BeiZiATSplashAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/main/bz/BeiZiATSplashAdapter;->r(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/anythink/core/api/ATBiddingListener;

.field public final synthetic d:Lcom/ad/main/bz/BeiZiATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/main/bz/BeiZiATSplashAdapter;Landroid/content/Context;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->d:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->c:Lcom/anythink/core/api/ATBiddingListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Li/a;->a()Li/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->d:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->c(Lcom/ad/main/bz/BeiZiATSplashAdapter;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Li/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->d:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->a(Lcom/ad/main/bz/BeiZiATSplashAdapter;)Lcom/beizi/fusion/SplashAd;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->d:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 25
    .line 26
    new-instance v1, Lcom/beizi/fusion/SplashAd;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->j(Lcom/ad/main/bz/BeiZiATSplashAdapter;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v5, Lcom/ad/main/bz/BeiZiATSplashAdapter$b$a;

    .line 35
    .line 36
    invoke-direct {v5, p0}, Lcom/ad/main/bz/BeiZiATSplashAdapter$b$a;-><init>(Lcom/ad/main/bz/BeiZiATSplashAdapter$b;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->d:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->g(Lcom/ad/main/bz/BeiZiATSplashAdapter;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    int-to-long v6, v3

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/beizi/fusion/SplashAd;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/beizi/fusion/AdListener;J)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->b(Lcom/ad/main/bz/BeiZiATSplashAdapter;Lcom/beizi/fusion/SplashAd;)Lcom/beizi/fusion/SplashAd;

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->d:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->a(Lcom/ad/main/bz/BeiZiATSplashAdapter;)Lcom/beizi/fusion/SplashAd;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->d:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->h(Lcom/ad/main/bz/BeiZiATSplashAdapter;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object v2, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$b;->d:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->i(Lcom/ad/main/bz/BeiZiATSplashAdapter;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/SplashAd;->loadAd(II)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
