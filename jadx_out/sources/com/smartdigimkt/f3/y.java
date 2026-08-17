package com.smartdigimkt.f3;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.anythink.core.common.f.s;
import java.io.File;

/* loaded from: classes5.dex */
public final class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f40264a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f40265b;

    public y(a0 a0Var, w wVar) {
        this.f40265b = a0Var;
        this.f40264a = wVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SQLiteDatabase sQLiteDatabaseB;
        try {
            File file = new File(this.f40264a.f40259b);
            if (file.exists()) {
                file.delete();
            }
        } catch (Throwable unused) {
        }
        com.smartdigimkt.k3.r rVar = this.f40265b.f40205b;
        String str = this.f40264a.f40258a;
        rVar.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            synchronized (rVar) {
                sQLiteDatabaseB = rVar.f41366a.b();
            }
            sQLiteDatabaseB.delete(s.a.f3399a, "video_url=?", new String[]{str});
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
