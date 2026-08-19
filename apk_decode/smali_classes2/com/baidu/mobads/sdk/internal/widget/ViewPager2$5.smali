.class Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;
.super Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field final synthetic d:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;

.field final synthetic e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->d:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->a:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->b:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->c:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->a:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->b:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iput-boolean v1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->c:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_8

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-lez p1, :cond_8

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->c:Z

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->getOrientation()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v2, -0x1

    .line 46
    if-ne v1, p1, :cond_5

    .line 47
    .line 48
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->canScrollVertically(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->getOverScrolledDirection()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-gez p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->d:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;

    .line 65
    .line 66
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;->onOverScrollStart()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->canScrollVertically(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_7

    .line 77
    .line 78
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->getOverScrolledDirection()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-lez p1, :cond_7

    .line 85
    .line 86
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->d:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;->onOverScrollEnd()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->getOrientation()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_7

    .line 99
    .line 100
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->canScrollHorizontally(I)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_6

    .line 107
    .line 108
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->getOverScrolledDirection()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-gez p1, :cond_6

    .line 115
    .line 116
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->d:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;

    .line 117
    .line 118
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;->onOverScrollStart()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->canScrollHorizontally(I)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_7

    .line 129
    .line 130
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->e:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;->getOverScrolledDirection()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-lez p1, :cond_7

    .line 137
    .line 138
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->d:Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;

    .line 139
    .line 140
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$OnOverScrollListener;->onOverScrollEnd()V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_0
    iput-boolean v0, p0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2$5;->c:Z

    .line 144
    .line 145
    :cond_8
    :goto_1
    return-void
.end method
