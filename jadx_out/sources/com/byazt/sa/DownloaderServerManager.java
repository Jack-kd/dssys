package com.byazt.sa;

import com.byazt.ik.a;
import com.byazt.kc.AbsServerManager;
import com.byazt.kj.hp;
import com.byazt.rz.q;

@hp(hp = {0, 1, 1981, 2524})
/* loaded from: classes3.dex */
public class DownloaderServerManager extends AbsServerManager {
    @Override // com.byazt.kc.AbsServerManager, android.content.ContentProvider
    public boolean onCreate() {
        try {
            q.hp(getContext());
        } catch (Throwable th) {
            a.hp(th);
        }
        return super.onCreate();
    }
}
