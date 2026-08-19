package com.byazt.fl;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.FilterWord;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 54})
/* loaded from: classes2.dex */
public final class a implements FilterWord, Function<SparseArray<Object>, Object> {
    public final Function<SparseArray<Object>, Object> hp;

    /* renamed from: l, reason: collision with root package name */
    public FilterWord f20057l;

    public a(FilterWord filterWord) {
        this.f20057l = filterWord;
        this.hp = com.byazt.xi.jx.jx;
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public void addOption(FilterWord filterWord) {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 241101);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new a(filterWord));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public String getId() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 241103);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public boolean getIsSelected() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 241105);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public String getName() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 241104);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public List<FilterWord> getOptions() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 241108);
        sparseArray.put(-99999985, List.class);
        List arrayList = (List) this.hp.apply(sparseArray);
        if (arrayList == null) {
            arrayList = new ArrayList(0);
        }
        ArrayList arrayList2 = new ArrayList();
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(new a(v.hp(it.next())));
            }
        }
        return arrayList2;
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public boolean hasSecondOptions() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 241106);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public boolean isValid() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 241107);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public void setIsSelected(boolean z2) {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 241102);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f20057l == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 241101:
                this.f20057l.addOption(new a(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            case 241102:
                this.f20057l.setIsSelected(valueSetL.booleanValue(0));
                return null;
            case 241103:
                return this.f20057l.getId();
            case 241104:
                return this.f20057l.getName();
            case 241105:
                return Boolean.class.cast(Boolean.valueOf(this.f20057l.getIsSelected()));
            case 241106:
                return Boolean.class.cast(Boolean.valueOf(this.f20057l.hasSecondOptions()));
            case 241107:
                return Boolean.class.cast(Boolean.valueOf(this.f20057l.isValid()));
            case 241108:
                return this.f20057l.getOptions();
            default:
                return null;
        }
    }

    public a(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.jx.jx : function;
    }
}
