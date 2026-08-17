.class final Lcom/kwad/components/core/widget/FeedVideoView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/video/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/widget/FeedVideoView;->a(Lcom/kwad/components/core/video/a;Lcom/kwad/sdk/core/video/videoview/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic awh:Lcom/kwad/components/core/widget/FeedVideoView;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/widget/FeedVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/widget/FeedVideoView$10;->awh:Lcom/kwad/components/core/widget/FeedVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILcom/kwad/sdk/utils/al$a;)V
    .locals 5

    .line 1
    const/16 v0, 0xab

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq p1, v3, :cond_5

    .line 7
    .line 8
    if-eq p1, v1, :cond_3

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    if-eq p1, v4, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/kwad/components/core/widget/FeedVideoView$10;->awh:Lcom/kwad/components/core/widget/FeedVideoView;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->at(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const/16 v0, 0x6c

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/widget/FeedVideoView$10;->awh:Lcom/kwad/components/core/widget/FeedVideoView;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->at(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const/16 p1, 0x32

    .line 38
    .line 39
    :goto_0
    move v0, p1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/16 p1, 0x53

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    move v1, v3

    .line 45
    move v2, v1

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/kwad/components/core/widget/FeedVideoView$10;->awh:Lcom/kwad/components/core/widget/FeedVideoView;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->at(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    const/16 v0, 0x52

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    iget-object p1, p0, Lcom/kwad/components/core/widget/FeedVideoView$10;->awh:Lcom/kwad/components/core/widget/FeedVideoView;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->at(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_6
    const/16 v0, 0xd

    .line 73
    .line 74
    :goto_2
    new-instance p1, Lcom/kwad/components/core/e/d/a$a;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/kwad/components/core/widget/FeedVideoView$10;->awh:Lcom/kwad/components/core/widget/FeedVideoView;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-direct {p1, v4}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/kwad/components/core/widget/FeedVideoView$10;->awh:Lcom/kwad/components/core/widget/FeedVideoView;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 88
    .line 89
    invoke-virtual {p1, v4}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1, v3}, Lcom/kwad/components/core/e/d/a$a;->ax(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v4, p0, Lcom/kwad/components/core/widget/FeedVideoView$10;->awh:Lcom/kwad/components/core/widget/FeedVideoView;

    .line 98
    .line 99
    invoke-static {v4}, Lcom/kwad/components/core/widget/FeedVideoView;->o(Lcom/kwad/components/core/widget/FeedVideoView;)Lcom/kwad/components/core/e/d/d;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {p1, v4}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, v1}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v2}, Lcom/kwad/components/core/e/d/a$a;->as(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v3}, Lcom/kwad/components/core/e/d/a$a;->au(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/e/d/a$a;->aM(I)Lcom/kwad/components/core/e/d/a$a;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/e/d/a$a;->d(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/components/core/e/d/a$a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Lcom/kwad/components/core/widget/FeedVideoView$10$1;

    .line 128
    .line 129
    invoke-direct {p2, p0}, Lcom/kwad/components/core/widget/FeedVideoView$10$1;-><init>(Lcom/kwad/components/core/widget/FeedVideoView$10;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 137
    .line 138
    .line 139
    return-void
.end method
