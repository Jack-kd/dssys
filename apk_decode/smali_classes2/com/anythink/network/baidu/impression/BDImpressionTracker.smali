.class public Lcom/anythink/network/baidu/impression/BDImpressionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;
    }
.end annotation


# static fields
.field private static final h:I = 0x64


# instance fields
.field private final a:Lcom/anythink/network/baidu/impression/b;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/network/baidu/impression/BDImpressionInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/network/baidu/impression/a<",
            "Lcom/anythink/network/baidu/impression/BDImpressionInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;

.field private final f:Lcom/anythink/network/baidu/impression/b$c;

.field private g:Lcom/anythink/network/baidu/impression/b$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/anythink/network/baidu/impression/b$c;

    invoke-direct {v3}, Lcom/anythink/network/baidu/impression/b$c;-><init>()V

    new-instance v4, Lcom/anythink/network/baidu/impression/b;

    invoke-direct {v4, p1}, Lcom/anythink/network/baidu/impression/b;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/network/baidu/impression/b$c;Lcom/anythink/network/baidu/impression/b;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 4
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/anythink/network/baidu/impression/b$c;

    invoke-direct {v3}, Lcom/anythink/network/baidu/impression/b$c;-><init>()V

    new-instance v4, Lcom/anythink/network/baidu/impression/b;

    invoke-direct {v4, p1, p2}, Lcom/anythink/network/baidu/impression/b;-><init>(Landroid/content/Context;I)V

    new-instance v5, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/network/baidu/impression/b$c;Lcom/anythink/network/baidu/impression/b;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/network/baidu/impression/b$c;Lcom/anythink/network/baidu/impression/b;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/network/baidu/impression/BDImpressionInterface;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/network/baidu/impression/a<",
            "Lcom/anythink/network/baidu/impression/BDImpressionInterface;",
            ">;>;",
            "Lcom/anythink/network/baidu/impression/b$c;",
            "Lcom/anythink/network/baidu/impression/b;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b:Ljava/util/Map;

    .line 9
    iput-object p2, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->c:Ljava/util/Map;

    .line 10
    iput-object p3, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->f:Lcom/anythink/network/baidu/impression/b$c;

    .line 11
    iput-object p4, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->a:Lcom/anythink/network/baidu/impression/b;

    .line 12
    new-instance p1, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;

    invoke-direct {p1, p0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;-><init>(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)V

    iput-object p1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->g:Lcom/anythink/network/baidu/impression/b$e;

    .line 13
    invoke-virtual {p4, p1}, Lcom/anythink/network/baidu/impression/b;->a(Lcom/anythink/network/baidu/impression/b$e;)V

    .line 14
    iput-object p5, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->d:Landroid/os/Handler;

    .line 15
    new-instance p1, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;

    invoke-direct {p1, p0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;-><init>(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)V

    iput-object p1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->e:Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b:Ljava/util/Map;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Lcom/anythink/network/baidu/impression/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->f:Lcom/anythink/network/baidu/impression/b$c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Lcom/anythink/network/baidu/impression/b$e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->g:Lcom/anythink/network/baidu/impression/b$e;

    return-object v0
.end method

.method public addView(Landroid/view/View;Lcom/anythink/network/baidu/impression/BDImpressionInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->removeView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Lcom/anythink/network/baidu/impression/BDImpressionInterface;->isImpressionRecorded()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->a:Lcom/anythink/network/baidu/impression/b;

    .line 26
    .line 27
    invoke-interface {p2}, Lcom/anythink/network/baidu/impression/BDImpressionInterface;->getImpressionMinPercentageViewed()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-interface {p2}, Lcom/anythink/network/baidu/impression/BDImpressionInterface;->getImpressionMinVisiblePx()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p1, v1, p2}, Lcom/anythink/network/baidu/impression/b;->a(Landroid/view/View;ILjava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->e:Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->c:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->a:Lcom/anythink/network/baidu/impression/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/anythink/network/baidu/impression/b;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->d:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->a:Lcom/anythink/network/baidu/impression/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/anythink/network/baidu/impression/b;->b()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->g:Lcom/anythink/network/baidu/impression/b$e;

    .line 11
    .line 12
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->a(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->a:Lcom/anythink/network/baidu/impression/b;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/anythink/network/baidu/impression/b;->a(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
