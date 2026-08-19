.class final Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

.field private final bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private bhD:I

.field final synthetic bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 9
    .line 10
    iput p4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhD:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->access$000(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Landroid/widget/OverScroller;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->access$000(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Landroid/widget/OverScroller;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->access$000(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Landroid/widget/OverScroller;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhD:I

    .line 36
    .line 37
    sub-int v1, v0, v1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-object v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sub-int/2addr v3, v4

    .line 58
    iget-object v4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 59
    .line 60
    invoke-static {v4}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->access$100(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    add-int/2addr v3, v4

    .line 65
    if-ne v2, v3, :cond_0

    .line 66
    .line 67
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->access$200(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    neg-int v1, v1

    .line 77
    invoke-interface {v2, v3, v1}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;->consumeAppBarFling(II)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    if-lez v2, :cond_1

    .line 82
    .line 83
    add-int v4, v2, v1

    .line 84
    .line 85
    if-ge v4, v3, :cond_1

    .line 86
    .line 87
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 88
    .line 89
    invoke-static {v1}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->access$200(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 94
    .line 95
    iget-object v5, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    sub-int/2addr v6, v2

    .line 102
    add-int/2addr v6, v3

    .line 103
    invoke-virtual {v1, v4, v5, v6}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 108
    .line 109
    invoke-static {v2}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->access$200(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 114
    .line 115
    iget-object v4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    add-int/2addr v5, v1

    .line 122
    invoke-virtual {v2, v3, v4, v5}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 126
    .line 127
    invoke-static {v1, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhD:I

    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhE:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->access$200(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 140
    .line 141
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;->bhC:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-void
.end method
