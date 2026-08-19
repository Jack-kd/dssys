package com.byazt.ka;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.byazt.jw.a;

@com.byazt.kj.hp(hp = {0, 1, 673, 34})
/* loaded from: classes2.dex */
public class l implements a {
    public static final l hp = new l();

    /* renamed from: l, reason: collision with root package name */
    public volatile SQLiteDatabase f22005l;

    @Override // com.byazt.jw.a
    public String a() {
        return null;
    }

    @Override // com.byazt.jw.a
    public SQLiteDatabase hp(Context context) {
        if (this.f22005l == null) {
            synchronized (this) {
                try {
                    if (this.f22005l == null) {
                        this.f22005l = new hp(context, this).getWritableDatabase();
                    }
                } finally {
                }
            }
        }
        return this.f22005l;
    }

    @Override // com.byazt.jw.a
    public String j() {
        return "logstats";
    }

    @Override // com.byazt.jw.a
    public String jx() {
        return null;
    }

    @Override // com.byazt.jw.a
    public String l() {
        return "adevent";
    }

    @Override // com.byazt.jw.a
    public String w() {
        return "logstatsbatch";
    }

    @Override // com.byazt.jw.a
    public String hp() {
        return "loghighpriority";
    }
}
