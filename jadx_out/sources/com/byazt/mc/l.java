package com.byazt.mc;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

@com.byazt.kj.hp(hp = {0, 1, 793, 34})
/* loaded from: classes3.dex */
public abstract class l {
    public final DataSetObservable hp = new DataSetObservable();

    /* renamed from: l, reason: collision with root package name */
    public DataSetObserver f22951l;

    public float hp(int i2) {
        return 1.0f;
    }

    public abstract int hp();

    public abstract boolean hp(View view, Object obj);

    public void jx() {
        synchronized (this) {
            try {
                DataSetObserver dataSetObserver = this.f22951l;
                if (dataSetObserver != null) {
                    dataSetObserver.onChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.hp.notifyChanged();
    }

    public Parcelable l() {
        return null;
    }

    public int hp(Object obj) {
        return -1;
    }

    public Object hp(ViewGroup viewGroup, int i2) {
        return hp((View) viewGroup, i2);
    }

    public void hp(ViewGroup viewGroup, int i2, Object obj) {
        hp((View) viewGroup, i2, obj);
    }

    @Deprecated
    public Object hp(View view, int i2) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    @Deprecated
    public void hp(View view, int i2, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void hp(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f22951l = dataSetObserver;
        }
    }
}
