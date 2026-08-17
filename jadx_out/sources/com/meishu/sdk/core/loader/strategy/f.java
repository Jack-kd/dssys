package com.meishu.sdk.core.loader.strategy;

import com.meishu.sdk.core.loader.cache.CacheManager;
import com.meishu.sdk.core.safe.l;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes4.dex */
public class f extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f31681a;

    public f(e eVar) {
        this.f31681a = eVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            if (this.f31681a.f31651b.getCache() > 0) {
                String cacheKey = this.f31681a.f31651b.getCacheKey();
                if (this.f31681a.f31666q.size() > 0) {
                    HashSet hashSet = new HashSet(this.f31681a.f31666q);
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(hashSet);
                    this.f31681a.a(arrayList);
                    for (int i2 = 0; i2 < this.f31681a.f31666q.size(); i2++) {
                        if (i2 != 0 || this.f31681a.f31667r) {
                            com.meishu.sdk.core.loader.loadbean.a aVar = this.f31681a.f31666q.get(i2);
                            if (aVar.f31644g) {
                                com.meishu.sdk.core.loader.concurrent.e eVar = (com.meishu.sdk.core.loader.concurrent.e) this.f31681a.f31660k;
                                eVar.f31629i.post(new com.meishu.sdk.core.loader.concurrent.c(eVar));
                            } else {
                                e.b(this.f31681a, aVar);
                            }
                        }
                    }
                }
                CacheManager cacheManager = CacheManager.INSTANCE;
                e eVar2 = this.f31681a;
                cacheManager.handleCurrentList(cacheKey, eVar2.f31652c, eVar2.f31651b.getCache());
                e.a(this.f31681a);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
