package com.byazt.nke;

import android.graphics.Bitmap;
import android.util.SparseArray;
import android.widget.ImageView;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, 302})
@ATSKeep
/* loaded from: classes3.dex */
public class zy implements jl, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile jl f23681l;

    public zy(jl jlVar) {
        this.f23681l = jlVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (((Integer) ((SparseArray) obj).get(0)).intValue()) {
            case 1:
                return Boolean.valueOf(this.f23681l.cancelRequest());
            case 2:
                return this.f23681l.getUrl();
            case 3:
                return Integer.valueOf(this.f23681l.getWidth());
            case 4:
                return Integer.valueOf(this.f23681l.getHeight());
            case 5:
                return this.f23681l.getScaleType();
            case 6:
                return this.f23681l.getRawCacheKey();
            case 7:
                return this.f23681l.getMemoryCacheKey();
            case 8:
                return this.f23681l.getBitmapConfig();
            default:
                return null;
        }
    }

    @Override // com.byazt.nke.jl
    public boolean cancelRequest() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.nke.jl
    public Bitmap.Config getBitmapConfig() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return (Bitmap.Config) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.jl
    public int getHeight() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.nke.jl
    public String getMemoryCacheKey() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.jl
    public String getRawCacheKey() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.jl
    public ImageView.ScaleType getScaleType() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (ImageView.ScaleType) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.jl
    public String getUrl() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.jl
    public int getWidth() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    public zy(Function function) {
        this.hp = function;
    }
}
