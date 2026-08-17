package com.byazt.fu;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.os.Parcel;
import android.os.Parcelable;
import com.umeng.analytics.pro.bz;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

@com.byazt.kj.hp(hp = {0, 1, 677, 34})
/* loaded from: classes2.dex */
public class l implements Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new Parcelable.Creator<l>() { // from class: com.byazt.fu.l.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public l[] newArray(int i2) {
            return new l[i2];
        }
    };
    public static final String hp = "l";

    /* renamed from: a, reason: collision with root package name */
    public long f20123a;

    /* renamed from: e, reason: collision with root package name */
    public List<l> f20124e;
    public int eb;
    public l gu;

    /* renamed from: j, reason: collision with root package name */
    public AtomicLong f20125j;
    public int jl;
    public long jx;

    /* renamed from: k, reason: collision with root package name */
    public AtomicBoolean f20126k;

    /* renamed from: l, reason: collision with root package name */
    public int f20127l;

    /* renamed from: q, reason: collision with root package name */
    public long f20128q;

    /* renamed from: s, reason: collision with root package name */
    public AtomicInteger f20129s;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.ez.l f20130v;

    /* renamed from: w, reason: collision with root package name */
    public long f20131w;
    public boolean zy;

    @com.byazt.kj.hp(hp = {0, 1, 677, 123})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public int f20132a;
        public long eb;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public long f20133j;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public long f20134l;

        /* renamed from: s, reason: collision with root package name */
        public l f20135s;

        /* renamed from: w, reason: collision with root package name */
        public long f20136w;

        public hp(int i2) {
            this.hp = i2;
        }

        public hp hp(long j2) {
            this.f20134l = j2;
            return this;
        }

        public hp j(long j2) {
            this.f20136w = j2;
            return this;
        }

        public hp jx(long j2) {
            this.f20133j = j2;
            return this;
        }

        public hp l(long j2) {
            this.jx = j2;
            return this;
        }

        public hp w(long j2) {
            this.eb = j2;
            return this;
        }

        public hp hp(int i2) {
            this.f20132a = i2;
            return this;
        }

        public hp hp(l lVar) {
            this.f20135s = lVar;
            return this;
        }

        public l hp() {
            return new l(this);
        }
    }

    public boolean a() {
        List<l> list = this.f20124e;
        return list != null && list.size() > 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long e() {
        l lVar = this.gu;
        if (lVar != null && lVar.eb() != null) {
            int iIndexOf = this.gu.eb().indexOf(this);
            boolean z2 = false;
            for (int i2 = 0; i2 < this.gu.eb().size(); i2++) {
                l lVar2 = this.gu.eb().get(i2);
                if (lVar2 != null) {
                    if (z2) {
                        return lVar2.k();
                    }
                    if (iIndexOf == i2) {
                        z2 = true;
                    }
                }
            }
        }
        return -1L;
    }

    public List<l> eb() {
        return this.f20124e;
    }

    public int ec() {
        return this.eb;
    }

    public int gu() {
        return this.f20127l;
    }

    public ContentValues hp() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(bz.f48985d, Integer.valueOf(this.f20127l));
        contentValues.put("chunkIndex", Integer.valueOf(this.eb));
        contentValues.put("startOffset", Long.valueOf(this.jx));
        contentValues.put("curOffset", Long.valueOf(k()));
        contentValues.put("endOffset", Long.valueOf(this.f20131w));
        contentValues.put("chunkContentLen", Long.valueOf(this.f20123a));
        contentValues.put("hostChunkIndex", Integer.valueOf(l()));
        return contentValues;
    }

    public boolean j() {
        return l() == -1;
    }

    public long jl() {
        return this.jx;
    }

    public boolean jx() {
        AtomicBoolean atomicBoolean = this.f20126k;
        if (atomicBoolean == null) {
            return false;
        }
        return atomicBoolean.get();
    }

    public long k() {
        if (!j() || !a()) {
            return zy();
        }
        long jZy = 0;
        for (int i2 = 0; i2 < this.f20124e.size(); i2++) {
            l lVar = this.f20124e.get(i2);
            if (lVar != null) {
                if (!lVar.q()) {
                    return lVar.zy();
                }
                if (jZy < lVar.zy()) {
                    jZy = lVar.zy();
                }
            }
        }
        return jZy;
    }

    public int l() {
        AtomicInteger atomicInteger = this.f20129s;
        if (atomicInteger == null) {
            return -1;
        }
        return atomicInteger.get();
    }

    public boolean q() {
        long j2 = this.jx;
        if (j()) {
            long j3 = this.f20128q;
            if (j3 > this.jx) {
                j2 = j3;
            }
        }
        return k() - j2 >= this.f20123a;
    }

    public boolean s() {
        l lVar = this.gu;
        if (lVar == null) {
            return true;
        }
        if (!lVar.a()) {
            return false;
        }
        for (int i2 = 0; i2 < this.gu.eb().size(); i2++) {
            l lVar2 = this.gu.eb().get(i2);
            if (lVar2 != null) {
                int iIndexOf = this.gu.eb().indexOf(this);
                if (iIndexOf > i2 && !lVar2.q()) {
                    return false;
                }
                if (iIndexOf == i2) {
                    return true;
                }
            }
        }
        return false;
    }

    public long u() {
        return this.f20131w;
    }

    public long v() {
        long jK = k() - this.jx;
        if (a()) {
            jK = 0;
            for (int i2 = 0; i2 < this.f20124e.size(); i2++) {
                l lVar = this.f20124e.get(i2);
                if (lVar != null) {
                    jK += lVar.k() - lVar.jl();
                }
            }
        }
        return jK;
    }

    public void vv() {
        this.f20128q = k();
    }

    public l w() {
        l lVar = !j() ? this.gu : this;
        if (lVar == null || !lVar.a()) {
            return null;
        }
        return lVar.eb().get(0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f20127l);
        parcel.writeLong(this.jx);
        AtomicLong atomicLong = this.f20125j;
        parcel.writeLong(atomicLong != null ? atomicLong.get() : 0L);
        parcel.writeLong(this.f20131w);
        parcel.writeLong(this.f20123a);
        parcel.writeInt(this.eb);
        AtomicInteger atomicInteger = this.f20129s;
        parcel.writeInt(atomicInteger != null ? atomicInteger.get() : -1);
    }

    public long xs() {
        return this.f20123a;
    }

    public long zy() {
        AtomicLong atomicLong = this.f20125j;
        if (atomicLong != null) {
            return atomicLong.get();
        }
        return 0L;
    }

    private l(hp hpVar) {
        if (hpVar == null) {
            return;
        }
        this.f20127l = hpVar.hp;
        this.jx = hpVar.f20134l;
        this.f20125j = new AtomicLong(hpVar.jx);
        this.f20131w = hpVar.f20133j;
        this.f20123a = hpVar.f20136w;
        this.eb = hpVar.f20132a;
        this.f20128q = hpVar.eb;
        this.f20129s = new AtomicInteger(-1);
        hp(hpVar.f20135s);
        this.f20126k = new AtomicBoolean(false);
    }

    public void jx(int i2) {
        this.eb = i2;
    }

    public void l(boolean z2) {
        this.zy = z2;
    }

    public long jx(boolean z2) {
        long jK = k();
        long j2 = this.f20123a;
        long j3 = this.f20128q;
        long j4 = j2 - (jK - j3);
        if (!z2 && jK == j3) {
            j4 = j2 - (jK - this.jx);
        }
        com.byazt.nu.hp.l("DownloadChunk", "contentLength:" + this.f20123a + " curOffset:" + k() + " oldOffset:" + this.f20128q + " retainLen:" + j4);
        if (j4 < 0) {
            return 0L;
        }
        return j4;
    }

    public void l(int i2) {
        this.f20127l = i2;
    }

    public void l(long j2) {
        AtomicLong atomicLong = this.f20125j;
        if (atomicLong != null) {
            atomicLong.set(j2);
        } else {
            this.f20125j = new AtomicLong(j2);
        }
    }

    public void hp(SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        this.jl = 0;
        sQLiteStatement.clearBindings();
        int i2 = this.jl + 1;
        this.jl = i2;
        sQLiteStatement.bindLong(i2, this.f20127l);
        int i3 = this.jl + 1;
        this.jl = i3;
        sQLiteStatement.bindLong(i3, this.eb);
        int i4 = this.jl + 1;
        this.jl = i4;
        sQLiteStatement.bindLong(i4, this.jx);
        int i5 = this.jl + 1;
        this.jl = i5;
        sQLiteStatement.bindLong(i5, k());
        int i6 = this.jl + 1;
        this.jl = i6;
        sQLiteStatement.bindLong(i6, this.f20131w);
        int i7 = this.jl + 1;
        this.jl = i7;
        sQLiteStatement.bindLong(i7, this.f20123a);
        int i8 = this.jl + 1;
        this.jl = i8;
        sQLiteStatement.bindLong(i8, l());
    }

    public l(Cursor cursor) {
        if (cursor == null) {
            return;
        }
        this.f20127l = cursor.getInt(cursor.getColumnIndex(bz.f48985d));
        this.eb = cursor.getInt(cursor.getColumnIndex("chunkIndex"));
        this.jx = cursor.getLong(cursor.getColumnIndex("startOffset"));
        int columnIndex = cursor.getColumnIndex("curOffset");
        if (columnIndex != -1) {
            this.f20125j = new AtomicLong(cursor.getLong(columnIndex));
        } else {
            this.f20125j = new AtomicLong(0L);
        }
        this.f20131w = cursor.getLong(cursor.getColumnIndex("endOffset"));
        int columnIndex2 = cursor.getColumnIndex("hostChunkIndex");
        if (columnIndex2 != -1) {
            this.f20129s = new AtomicInteger(cursor.getInt(columnIndex2));
        } else {
            this.f20129s = new AtomicInteger(-1);
        }
        int columnIndex3 = cursor.getColumnIndex("chunkContentLen");
        if (columnIndex3 != -1) {
            this.f20123a = cursor.getLong(columnIndex3);
        }
        this.f20126k = new AtomicBoolean(false);
    }

    public void hp(int i2) {
        AtomicInteger atomicInteger = this.f20129s;
        if (atomicInteger == null) {
            this.f20129s = new AtomicInteger(i2);
        } else {
            atomicInteger.set(i2);
        }
    }

    public void hp(com.byazt.ez.l lVar) {
        this.f20130v = lVar;
        vv();
    }

    public void hp(boolean z2) {
        AtomicBoolean atomicBoolean = this.f20126k;
        if (atomicBoolean == null) {
            this.f20126k = new AtomicBoolean(z2);
        } else {
            atomicBoolean.set(z2);
        }
        this.f20130v = null;
    }

    public l(Parcel parcel) {
        this.f20127l = parcel.readInt();
        this.jx = parcel.readLong();
        this.f20125j = new AtomicLong(parcel.readLong());
        this.f20131w = parcel.readLong();
        this.f20123a = parcel.readLong();
        this.eb = parcel.readInt();
        this.f20129s = new AtomicInteger(parcel.readInt());
    }

    public void hp(l lVar) {
        this.gu = lVar;
        if (lVar != null) {
            hp(lVar.ec());
        }
    }

    public void hp(List<l> list) {
        this.f20124e = list;
    }

    public void hp(long j2) {
        this.f20123a = j2;
    }

    public List<l> hp(int i2, long j2) {
        long jU;
        long jJl;
        long j3;
        boolean z2;
        long j4;
        long j5;
        int i3 = i2;
        if (!j() || a()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        long jZy = zy();
        boolean z3 = true;
        long jJx = jx(true);
        long j6 = jJx / i3;
        com.byazt.nu.hp.l(hp, "retainLen:" + jJx + " divideChunkForReuse chunkSize:" + j6 + " current host downloadChunk index:" + this.eb);
        int i4 = 0;
        while (i4 < i3) {
            if (i4 == 0) {
                jJl = jl();
            } else {
                int i5 = i3 - 1;
                if (i4 == i5) {
                    long jU2 = u();
                    long j7 = jU2 > jZy ? (jU2 - jZy) + 1 : jJx - (i5 * j6);
                    j3 = jU2;
                    jJl = jZy;
                    z2 = z3;
                    long j8 = j7;
                    j4 = jJx;
                    j5 = j8;
                    l lVarHp = new hp(this.f20127l).hp((-i4) - 1).hp(jJl).l(jZy).w(jZy).jx(j3).j(j5).hp(this).hp();
                    long j9 = j6;
                    com.byazt.nu.hp.l(hp, "divide sub chunk : " + i4 + " startOffset:" + jJl + " curOffset:" + jZy + " endOffset:" + j3 + " contentLen:" + j5);
                    arrayList.add(lVarHp);
                    jZy += j9;
                    i4++;
                    i3 = i2;
                    z3 = z2;
                    jJx = j4;
                    j6 = j9;
                } else {
                    jJl = jZy;
                }
            }
            j3 = (jZy + j6) - 1;
            z2 = z3;
            j4 = jJx;
            j5 = j6;
            l lVarHp2 = new hp(this.f20127l).hp((-i4) - 1).hp(jJl).l(jZy).w(jZy).jx(j3).j(j5).hp(this).hp();
            long j92 = j6;
            com.byazt.nu.hp.l(hp, "divide sub chunk : " + i4 + " startOffset:" + jJl + " curOffset:" + jZy + " endOffset:" + j3 + " contentLen:" + j5);
            arrayList.add(lVarHp2);
            jZy += j92;
            i4++;
            i3 = i2;
            z3 = z2;
            jJx = j4;
            j6 = j92;
        }
        long jXs = 0;
        for (int size = arrayList.size() - 1; size > 0; size--) {
            l lVar = arrayList.get(size);
            if (lVar != null) {
                jXs += lVar.xs();
            }
        }
        com.byazt.nu.hp.l(hp, "reuseChunkContentLen:".concat(String.valueOf(jXs)));
        l lVar2 = arrayList.get(0);
        if (lVar2 != null) {
            if (u() == 0) {
                jU = j2 - jl();
            } else {
                jU = (u() - jl()) + 1;
            }
            lVar2.hp(jU - jXs);
            lVar2.jx(this.eb);
            com.byazt.ez.l lVar3 = this.f20130v;
            if (lVar3 != null) {
                lVar3.hp(lVar2.u(), xs() - jXs);
            }
        }
        hp(arrayList);
        return arrayList;
    }
}
