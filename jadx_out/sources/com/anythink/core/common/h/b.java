package com.anythink.core.common.h;

import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATRequestingInfo;
import java.util.List;

/* loaded from: classes2.dex */
public final class b extends ATRequestingInfo {

    /* renamed from: a, reason: collision with root package name */
    protected List<ATAdInfo> f3884a;

    /* renamed from: b, reason: collision with root package name */
    protected List<ATAdInfo> f3885b;

    public b(List<ATAdInfo> list, List<ATAdInfo> list2) {
        this.f3884a = list;
        this.f3885b = list2;
    }

    @Override // com.anythink.core.api.ATRequestingInfo
    public final List<ATAdInfo> getBiddingAttemptAdInfoList() {
        return this.f3885b;
    }

    @Override // com.anythink.core.api.ATRequestingInfo
    public final List<ATAdInfo> getLoadingAdInfoList() {
        return this.f3884a;
    }
}
