.class Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/baidu/impression/BDImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/anythink/network/baidu/impression/BDImpressionTracker;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->b:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->b:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/view/View;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/anythink/network/baidu/impression/a;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->b:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->c(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Lcom/anythink/network/baidu/impression/b$c;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-wide v4, v1, Lcom/anythink/network/baidu/impression/a;->b:J

    .line 46
    .line 47
    iget-object v6, v1, Lcom/anythink/network/baidu/impression/a;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Lcom/anythink/network/baidu/impression/BDImpressionInterface;

    .line 50
    .line 51
    invoke-interface {v6}, Lcom/anythink/network/baidu/impression/BDImpressionInterface;->getImpressionMinTimeViewed()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-virtual {v3, v4, v5, v6}, Lcom/anythink/network/baidu/impression/b$c;->a(JI)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v3, v1, Lcom/anythink/network/baidu/impression/a;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Lcom/anythink/network/baidu/impression/BDImpressionInterface;

    .line 65
    .line 66
    invoke-interface {v3, v2}, Lcom/anythink/network/baidu/impression/BDImpressionInterface;->recordImpression(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v1, Lcom/anythink/network/baidu/impression/a;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Lcom/anythink/network/baidu/impression/BDImpressionInterface;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/anythink/network/baidu/impression/BDImpressionInterface;->setImpressionRecorded()V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->a:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->a:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x0

    .line 89
    :goto_1
    if-ge v2, v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    check-cast v3, Landroid/view/View;

    .line 98
    .line 99
    iget-object v4, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->b:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->removeView(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->a:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->b:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b(Lcom/anythink/network/baidu/impression/BDImpressionTracker;)Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionTracker$b;->b:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->b()V

    .line 125
    .line 126
    .line 127
    :cond_3
    return-void
.end method
