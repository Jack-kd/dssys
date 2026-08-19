.class public interface abstract Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract getCommentFeeds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbCommentFeed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisplayLikeCount()Ljava/lang/String;
.end method

.method public abstract getDisplayWatchingCount()Ljava/lang/String;
.end method

.method public abstract getSystemNoticeFeeds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSystemNoticeFeed;",
            ">;"
        }
    .end annotation
.end method
