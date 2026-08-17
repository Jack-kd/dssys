package com.byazt.lsx;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, 310, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu implements com.byazt.jw.a {
    public static final gu hp = new gu();

    /* renamed from: l, reason: collision with root package name */
    public volatile SQLiteDatabase f22767l;

    @Override // com.byazt.jw.a
    public String a() {
        return null;
    }

    @Override // com.byazt.jw.a
    public String hp() {
        return null;
    }

    @Override // com.byazt.jw.a
    public String j() {
        return null;
    }

    @Override // com.byazt.jw.a
    public String jx() {
        return "adevent_applog";
    }

    @Override // com.byazt.jw.a
    public String l() {
        return "adevent";
    }

    @Override // com.byazt.jw.a
    public String w() {
        return null;
    }

    @Override // com.byazt.jw.a
    public SQLiteDatabase hp(Context context) {
        if (this.f22767l == null) {
            synchronized (this) {
                try {
                    if (this.f22767l == null) {
                        this.f22767l = com.byazt.fgq.a.hp(context).hp().hp();
                        com.byazt.aw.l.hp("---------------DB CREATE  SUCCESS new------------");
                    }
                } finally {
                }
            }
        }
        return this.f22767l;
    }
}
