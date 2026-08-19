.class Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/baidu/impression/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/impression/BDImpressionTracker;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/network/baidu/impression/b$c;Lcom/anythink/network/baidu/impression/b;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/impression/BDImpressionTracker;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;->a:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/View;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;->a:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->a(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/anythink/network/baidu/impression/BDImpressionInterface;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;->a:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->removeView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;->a:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/anythink/network/baidu/impression/a;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v2, v2, Lcom/anythink/network/baidu/impression/a;->a:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;->a:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-instance v3, Lcom/anythink/network/baidu/impression/a;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Lcom/anythink/network/baidu/impression/a;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Landroid/view/View;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;->a:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$a;->a:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b()V

    .line 104
    .line 105
    .line 106
    return-void
.end method
