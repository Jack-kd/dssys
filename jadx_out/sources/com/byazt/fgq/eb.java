package com.byazt.fgq;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

@com.byazt.kj.hp(hp = {0, 1, 819, 94})
/* loaded from: classes2.dex */
public class eb {
    public static final Object jx = new Object();
    public hp hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f19733l;

    @com.byazt.kj.hp(hp = {0, 1, 819, 131})
    public class hp {

        /* renamed from: l, reason: collision with root package name */
        public SQLiteDatabase f19734l = null;

        public hp() {
        }

        private boolean jx() {
            SQLiteDatabase sQLiteDatabase = this.f19734l;
            return sQLiteDatabase != null && sQLiteDatabase.isOpen() && sQLiteDatabase.inTransaction();
        }

        private void l() {
            try {
                synchronized (eb.jx) {
                    try {
                        SQLiteDatabase sQLiteDatabase = this.f19734l;
                        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                            SQLiteDatabase writableDatabase = new s(eb.this.getContext(), "tt_mediation_open_sdk.db", 4).getWritableDatabase();
                            this.f19734l = writableDatabase;
                            writableDatabase.setLockingEnabled(false);
                        }
                    } finally {
                    }
                }
            } catch (Throwable unused) {
                jx();
            }
        }

        public SQLiteDatabase hp() {
            l();
            return this.f19734l;
        }
    }

    public eb(Context context) {
        try {
            this.f19733l = context == null ? com.byazt.di.l.getContext() : context.getApplicationContext();
            if (this.hp == null) {
                this.hp = new hp();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        Context context = this.f19733l;
        return context == null ? com.byazt.di.l.getContext() : context;
    }

    public hp hp() {
        return this.hp;
    }
}
