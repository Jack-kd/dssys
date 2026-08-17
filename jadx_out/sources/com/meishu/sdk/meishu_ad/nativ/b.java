package com.meishu.sdk.meishu_ad.nativ;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.meishu.sdk.meishu_ad.n0;
import java.util.List;

/* loaded from: classes4.dex */
public interface b extends com.meishu.sdk.platform.ms.c {
    @Override // com.meishu.sdk.platform.ms.c
    f a();

    void a(Context context, ViewGroup viewGroup, List<View> list, com.meishu.sdk.platform.ms.recycler.d dVar);

    void a(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, e eVar);

    int getAdPatternType();

    String getDesc();

    String getIconUrl();

    String[] getImgUrls();

    @Override // com.meishu.sdk.platform.ms.c
    int getInteractionType();

    n0 getMediaView();

    String getTitle();
}
