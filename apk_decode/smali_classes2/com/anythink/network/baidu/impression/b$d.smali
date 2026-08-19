.class Lcom/anythink/network/baidu/impression/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/baidu/impression/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
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

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/anythink/network/baidu/impression/b;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/impression/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/impression/b$d;->c:Lcom/anythink/network/baidu/impression/b;

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
    iput-object p1, p0, Lcom/anythink/network/baidu/impression/b$d;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/anythink/network/baidu/impression/b$d;->a:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b$d;->c:Lcom/anythink/network/baidu/impression/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/anythink/network/baidu/impression/b;->a(Lcom/anythink/network/baidu/impression/b;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b$d;->c:Lcom/anythink/network/baidu/impression/b;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/anythink/network/baidu/impression/b;->a(Lcom/anythink/network/baidu/impression/b;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/view/View;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/anythink/network/baidu/impression/b$b;

    .line 44
    .line 45
    iget v3, v3, Lcom/anythink/network/baidu/impression/b$b;->a:I

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/anythink/network/baidu/impression/b$b;

    .line 52
    .line 53
    iget v4, v4, Lcom/anythink/network/baidu/impression/b$b;->b:I

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Lcom/anythink/network/baidu/impression/b$b;

    .line 60
    .line 61
    iget-object v5, v5, Lcom/anythink/network/baidu/impression/b$b;->e:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/anythink/network/baidu/impression/b$b;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/anythink/network/baidu/impression/b$b;->d:Landroid/view/View;

    .line 70
    .line 71
    iget-object v6, p0, Lcom/anythink/network/baidu/impression/b$d;->c:Lcom/anythink/network/baidu/impression/b;

    .line 72
    .line 73
    invoke-static {v6}, Lcom/anythink/network/baidu/impression/b;->b(Lcom/anythink/network/baidu/impression/b;)Lcom/anythink/network/baidu/impression/b$c;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6, v1, v2, v3, v5}, Lcom/anythink/network/baidu/impression/b$c;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_1

    .line 82
    .line 83
    iget-object v1, p0, Lcom/anythink/network/baidu/impression/b$d;->a:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/anythink/network/baidu/impression/b$d;->c:Lcom/anythink/network/baidu/impression/b;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/anythink/network/baidu/impression/b;->b(Lcom/anythink/network/baidu/impression/b;)Lcom/anythink/network/baidu/impression/b$c;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/anythink/network/baidu/impression/b$c;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_0

    .line 101
    .line 102
    iget-object v1, p0, Lcom/anythink/network/baidu/impression/b$d;->b:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b$d;->c:Lcom/anythink/network/baidu/impression/b;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/anythink/network/baidu/impression/b;->c(Lcom/anythink/network/baidu/impression/b;)Lcom/anythink/network/baidu/impression/b$e;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b$d;->c:Lcom/anythink/network/baidu/impression/b;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/anythink/network/baidu/impression/b;->c(Lcom/anythink/network/baidu/impression/b;)Lcom/anythink/network/baidu/impression/b$e;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/anythink/network/baidu/impression/b$d;->a:Ljava/util/ArrayList;

    .line 123
    .line 124
    iget-object v2, p0, Lcom/anythink/network/baidu/impression/b$d;->b:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-interface {v0, v1, v2}, Lcom/anythink/network/baidu/impression/b$e;->onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b$d;->a:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b$d;->b:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    .line 138
    .line 139
    return-void
.end method
