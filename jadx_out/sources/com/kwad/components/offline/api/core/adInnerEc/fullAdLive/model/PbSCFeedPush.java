package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.model;

import androidx.annotation.Keep;
import java.util.List;

@Keep
/* loaded from: classes4.dex */
public interface PbSCFeedPush {
    List<PbCommentFeed> getCommentFeeds();

    String getDisplayLikeCount();

    String getDisplayWatchingCount();

    List<PbSystemNoticeFeed> getSystemNoticeFeeds();
}
