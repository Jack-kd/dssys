.class public Lcom/baidu/mobads/sdk/internal/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/IOAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/sdk/internal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IAdInterListener;[Ljava/lang/Object;)Lcom/baidu/mobads/sdk/internal/a/a;
    .locals 2
    .param p2    # Lcom/baidu/mobads/sdk/api/IAdInterListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ViewPager2"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v0, Landroid/content/Context;

    .line 11
    .line 12
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p3, v0}, Lcom/baidu/mobads/sdk/internal/a/c;->a([Ljava/lang/Object;[Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/ViewPager2Delegate;

    .line 23
    .line 24
    aget-object p3, p3, v1

    .line 25
    .line 26
    check-cast p3, Landroid/content/Context;

    .line 27
    .line 28
    invoke-direct {p1, p2, p3}, Lcom/baidu/mobads/sdk/internal/concrete/ViewPager2Delegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    const-string v0, "RVAdapter"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/RVAdapterDelegate;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/baidu/mobads/sdk/internal/concrete/RVAdapterDelegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_1
    const-string v0, "RVViewHolder"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const-class v0, Landroid/view/View;

    .line 55
    .line 56
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p3, v0}, Lcom/baidu/mobads/sdk/internal/a/c;->a([Ljava/lang/Object;[Ljava/lang/Class;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/RVViewHolderDelegate;

    .line 67
    .line 68
    aget-object p3, p3, v1

    .line 69
    .line 70
    check-cast p3, Landroid/view/View;

    .line 71
    .line 72
    invoke-direct {p1, p2, p3}, Lcom/baidu/mobads/sdk/internal/concrete/RVViewHolderDelegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_2
    const-string v0, "ViewCompat"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/ViewCompatDelegate;

    .line 85
    .line 86
    invoke-direct {p1, p2}, Lcom/baidu/mobads/sdk/internal/concrete/ViewCompatDelegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_3
    const-string v0, "Fragment"

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/FragmentDelegate;

    .line 99
    .line 100
    invoke-direct {p1}, Lcom/baidu/mobads/sdk/internal/concrete/FragmentDelegate;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/concrete/FragmentDelegate;->setDispatcher(Lcom/baidu/mobads/sdk/api/IAdInterListener;)Lcom/baidu/mobads/sdk/internal/concrete/FragmentDelegate;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_4
    const-string v0, "FragmentV4"

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/FragmentV4Delegate;

    .line 117
    .line 118
    invoke-direct {p1}, Lcom/baidu/mobads/sdk/internal/concrete/FragmentV4Delegate;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/concrete/FragmentV4Delegate;->setDispatcher(Lcom/baidu/mobads/sdk/api/IAdInterListener;)Lcom/baidu/mobads/sdk/internal/concrete/FragmentV4Delegate;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :cond_5
    const-string v0, "RLRecyclerView"

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;

    .line 135
    .line 136
    invoke-direct {p1, p2, p3}, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object p1

    .line 140
    :cond_6
    const/4 p1, 0x0

    .line 141
    return-object p1
.end method


# virtual methods
.method public run(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    :try_start_0
    const-string v0, "p_e"

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    const-string v0, "e_t"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "e_n"

    .line 38
    .line 39
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "e_a"

    .line 44
    .line 45
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    instance-of v3, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    move-object v3, v2

    .line 54
    check-cast v3, [Ljava/lang/Object;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v3, 0x0

    .line 60
    :goto_0
    instance-of v4, v1, Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    instance-of v4, v0, Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    const-string v4, "p_init"

    .line 69
    .line 70
    move-object v5, v1

    .line 71
    check-cast v5, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    const-string v1, "e_d"

    .line 80
    .line 81
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    instance-of v2, v1, Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .line 91
    check-cast v1, Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 92
    .line 93
    invoke-direct {p0, v0, v1, v3}, Lcom/baidu/mobads/sdk/internal/a/c$a;->a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IAdInterListener;[Ljava/lang/Object;)Lcom/baidu/mobads/sdk/internal/a/a;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    const-string v1, "e_r"

    .line 100
    .line 101
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    const-string p1, "p_set_class"

    .line 106
    .line 107
    check-cast v1, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    instance-of p1, v2, Ljava/util/Map;

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    check-cast v2, Ljava/util/Map;

    .line 120
    .line 121
    const-string p1, "ViewPager2"

    .line 122
    .line 123
    const-class v0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 124
    .line 125
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string p1, "RVAdapter"

    .line 129
    .line 130
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 131
    .line 132
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    const-string p1, "RVViewHolder"

    .line 136
    .line 137
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 138
    .line 139
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_1
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bv;->b(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_2
    return-void
.end method
