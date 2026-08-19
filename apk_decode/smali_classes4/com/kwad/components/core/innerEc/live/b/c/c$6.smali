.class final Lcom/kwad/components/core/innerEc/live/b/c/c$6;
.super Lcom/kwad/components/core/innerEc/live/g/c;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/g/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "LiveAdCommentsPresenter"

    .line 4
    .line 5
    const-string v0, "scFeedPush is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;->getSystemNoticeFeeds()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->m(Lcom/kwad/components/core/innerEc/live/b/c/c;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lcom/kwad/components/core/innerEc/live/b/c/c;->b(Lcom/kwad/components/core/innerEc/live/b/c/c;Z)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 39
    .line 40
    new-instance v4, Lcom/kwad/components/core/innerEc/live/widget/c;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->n(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 47
    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSystemNoticeFeed;

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSystemNoticeFeed;->getContent()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v7, ""

    .line 59
    .line 60
    invoke-static {v6, v0, v7}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v5, v0}, Lcom/kwad/components/core/innerEc/live/comment/a;->a(Landroid/content/Context;Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v4, v0, v3}, Lcom/kwad/components/core/innerEc/live/widget/c;-><init>(Ljava/lang/CharSequence;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v4, v2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;Lcom/kwad/components/core/innerEc/live/widget/c;Z)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;->getCommentFeeds()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_4

    .line 85
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-ge v2, v1, :cond_3

    .line 96
    .line 97
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 104
    .line 105
    invoke-static {v4}, Lcom/kwad/components/core/innerEc/live/b/c/c;->o(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;->getCommentId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_2

    .line 118
    .line 119
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 120
    .line 121
    invoke-static {v4}, Lcom/kwad/components/core/innerEc/live/b/c/c;->o(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;->getCommentId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v4, Lcom/kwad/components/core/innerEc/live/widget/c;

    .line 133
    .line 134
    iget-object v5, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 135
    .line 136
    invoke-static {v5}, Lcom/kwad/components/core/innerEc/live/b/c/c;->p(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 141
    .line 142
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;->getContent()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;->getUser()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbUserInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbUserInfo;->getUserName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v6, v7, v1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v5, v1}, Lcom/kwad/components/core/innerEc/live/comment/a;->a(Landroid/content/Context;Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;)Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v4, v1}, Lcom/kwad/components/core/innerEc/live/widget/c;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 172
    .line 173
    invoke-static {p1, v0, v3}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;Ljava/util/List;Z)V

    .line 174
    .line 175
    .line 176
    :cond_4
    return-void
.end method


# virtual methods
.method public final synthetic g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/c$6;->a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
