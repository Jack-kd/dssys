.class final Lcom/kwad/components/core/innerEc/live/b/c/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/comment/history/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic VA:Lcom/kwad/components/core/innerEc/live/b/c/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p1, Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;->historyFeedList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p1, Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;->historyFeedList:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p1, Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;->historyFeedList:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/kwad/components/core/innerEc/live/b/c/c;->o(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;->getCommentId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/kwad/components/core/innerEc/live/b/c/c;->o(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;->getCommentId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v3, Lcom/kwad/components/core/innerEc/live/widget/c;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 65
    .line 66
    invoke-static {v4}, Lcom/kwad/components/core/innerEc/live/b/c/c;->q(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v5, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 71
    .line 72
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;->getContent()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;->getUser()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbUserInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbUserInfo;->getUserName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v5, v6, v2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v4, v2}, Lcom/kwad/components/core/innerEc/live/comment/a;->a(Landroid/content/Context;Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {v3, v2}, Lcom/kwad/components/core/innerEc/live/widget/c;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->l(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/widget/h;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/innerEc/live/widget/h;->p(Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    invoke-static {p1, v0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->c(Lcom/kwad/components/core/innerEc/live/b/c/c;Z)Z

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->r(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->l(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/widget/h;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final rC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->c(Lcom/kwad/components/core/innerEc/live/b/c/c;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->r(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
