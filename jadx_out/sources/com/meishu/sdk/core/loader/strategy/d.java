package com.meishu.sdk.core.loader.strategy;

import java.util.Comparator;

/* loaded from: classes4.dex */
public class d implements Comparator<com.meishu.sdk.core.loader.loadbean.a> {
    public d(e eVar) {
    }

    @Override // java.util.Comparator
    public int compare(com.meishu.sdk.core.loader.loadbean.a aVar, com.meishu.sdk.core.loader.loadbean.a aVar2) {
        return aVar2.a() - aVar.a();
    }
}
