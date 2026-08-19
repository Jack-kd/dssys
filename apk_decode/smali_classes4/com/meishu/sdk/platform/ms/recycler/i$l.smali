.class public Lcom/meishu/sdk/platform/ms/recycler/i$l;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/app/Activity;Lcom/meishu/sdk/core/view/TouchAdContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/view/TouchAdContainer;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/TouchAdContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->a:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->a:Lcom/meishu/sdk/core/view/TouchAdContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 v4, 0xa

    .line 17
    .line 18
    if-ge v3, v4, :cond_1

    .line 19
    .line 20
    instance-of v4, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    instance-of v4, v0, Landroid/widget/ListView;

    .line 25
    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    instance-of v4, v0, Landroid/widget/ScrollView;

    .line 29
    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    instance-of v4, v0, Landroidx/core/widget/NestedScrollView;

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    instance-of v4, v4, Landroid/view/View;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    :goto_1
    move-object v0, v1

    .line 62
    :cond_2
    :goto_2
    new-instance v3, Lcom/meishu/sdk/platform/ms/recycler/u;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Lcom/meishu/sdk/platform/ms/recycler/u;-><init>(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v4, v3, Lcom/meishu/sdk/platform/ms/recycler/u;->a:Z

    .line 68
    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->c()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_4

    .line 76
    .line 77
    new-instance v2, Lcom/meishu/sdk/platform/ms/recycler/p;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/ms/recycler/u;->a()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    move-object v1, v0

    .line 90
    :cond_3
    invoke-direct {v2, v4, v1}, Lcom/meishu/sdk/platform/ms/recycler/p;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->a:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 94
    .line 95
    sget v1, Lcom/meishu/sdk/platform/ms/recycler/i;->C:I

    .line 96
    .line 97
    new-instance v3, Lcom/meishu/sdk/platform/ms/recycler/i$l$a;

    .line 98
    .line 99
    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/ms/recycler/i$l$a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i$l;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0, v1, v3}, Lcom/meishu/sdk/platform/ms/recycler/p;->a(Landroid/view/ViewGroup;ILcom/meishu/sdk/platform/ms/recycler/q;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    if-nez v0, :cond_5

    .line 107
    .line 108
    :try_start_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    .line 111
    .line 112
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$l$b;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->a:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget v3, Lcom/meishu/sdk/platform/ms/recycler/i;->C:I

    .line 121
    .line 122
    invoke-direct {v1, p0, v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/i$l$b;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i$l;Landroid/view/View;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$l$c;

    .line 135
    .line 136
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/recycler/i$l$c;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i$l;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :goto_4
    return-void
.end method
