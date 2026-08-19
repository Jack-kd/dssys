package com.byakv.x;

import com.byazt.em.hp;
import com.byazt.yn.a;
import com.byazt.yn.e;
import com.byazt.yn.eb;
import com.byazt.yn.j;
import com.byazt.yn.jx;
import com.byazt.yn.k;
import com.byazt.yn.l;
import com.byazt.yn.s;
import com.byazt.yn.w;
import com.byazt.yn.zy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@hp
/* loaded from: classes2.dex */
public abstract class YogaNodeJNIBase extends e implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public Object f17936a;

    @hp
    public float[] arr;
    public boolean eb;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public eb f17937j;
    public List<YogaNodeJNIBase> jx;

    /* renamed from: l, reason: collision with root package name */
    public YogaNodeJNIBase f17938l;

    @hp
    public int mLayoutDirection;

    /* renamed from: w, reason: collision with root package name */
    public l f17939w;

    private YogaNodeJNIBase(long j2) {
        this.arr = null;
        this.mLayoutDirection = 0;
        this.eb = true;
        if (j2 == 0) {
            throw new IllegalStateException("Failed to allocate native memory");
        }
        this.hp = j2;
    }

    @hp
    private final long replaceChild(YogaNodeJNIBase yogaNodeJNIBase, int i2) {
        List<YogaNodeJNIBase> list = this.jx;
        if (list == null) {
            throw new IllegalStateException("Cannot replace child. YogaNode does not have children");
        }
        list.remove(i2);
        this.jx.add(i2, yogaNodeJNIBase);
        yogaNodeJNIBase.f17938l = this;
        return yogaNodeJNIBase.hp;
    }

    @Override // com.byazt.yn.e
    public void a(float f2) {
        YogaNative.jni_YGNodeStyleSetHeightJNI(this.hp, f2);
    }

    @hp
    public final float baseline(float f2, float f3) {
        return this.f17939w.hp(this, f2, f3);
    }

    @Override // com.byazt.yn.e
    public void e(float f2) {
        YogaNative.jni_YGNodeStyleSetMaxWidthJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public void eb(float f2) {
        YogaNative.jni_YGNodeStyleSetHeightPercentJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    /* renamed from: gu, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase l() {
        return this.f17938l;
    }

    @Override // com.byazt.yn.e
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase l(int i2) {
        List<YogaNodeJNIBase> list = this.jx;
        if (list == null) {
            throw new IllegalStateException("Trying to remove a child of a YogaNode that does not have children");
        }
        YogaNodeJNIBase yogaNodeJNIBaseRemove = list.remove(i2);
        yogaNodeJNIBaseRemove.f17938l = null;
        YogaNative.jni_YGNodeRemoveChildJNI(this.hp, yogaNodeJNIBaseRemove.hp);
        return yogaNodeJNIBaseRemove;
    }

    @Override // com.byazt.yn.e
    public void jl(float f2) {
        YogaNative.jni_YGNodeStyleSetAspectRatioJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    /* renamed from: jx, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase hp(int i2) {
        List<YogaNodeJNIBase> list = this.jx;
        if (list != null) {
            return list.get(i2);
        }
        throw new IllegalStateException("YogaNode does not have children");
    }

    @hp
    public final long measure(float f2, int i2, float f3, int i3) {
        if (jl()) {
            return this.f17937j.hp(this, f2, s.hp(i2), f3, s.hp(i3));
        }
        throw new RuntimeException("Measure function isn't defined!");
    }

    @Override // com.byazt.yn.e
    public void q(float f2) {
        YogaNative.jni_YGNodeStyleSetMinHeightJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public void s(float f2) {
        YogaNative.jni_YGNodeStyleSetMinWidthJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public void w(float f2) {
        YogaNative.jni_YGNodeStyleSetWidthPercentJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public float a() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[3];
        }
        return 0.0f;
    }

    @Override // com.byazt.yn.e
    public Object e() {
        return this.f17936a;
    }

    @Override // com.byazt.yn.e
    public float eb() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[4];
        }
        return 0.0f;
    }

    @Override // com.byazt.yn.e
    public void gu(float f2) {
        YogaNative.jni_YGNodeStyleSetMaxHeightJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public int hp() {
        List<YogaNodeJNIBase> list = this.jx;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public boolean jl() {
        return this.f17937j != null;
    }

    @Override // com.byazt.yn.e
    public float q() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[2];
        }
        return 0.0f;
    }

    @Override // com.byazt.yn.e
    public float s() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[1];
        }
        return 0.0f;
    }

    @Override // com.byazt.yn.e
    public void w() {
        YogaNative.jni_YGNodeStyleSetHeightAutoJNI(this.hp);
    }

    @Override // com.byazt.yn.e
    public void hp(e eVar, int i2) {
        if (eVar instanceof YogaNodeJNIBase) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) eVar;
            if (yogaNodeJNIBase.f17938l == null) {
                if (this.jx == null) {
                    this.jx = new ArrayList(4);
                }
                this.jx.add(i2, yogaNodeJNIBase);
                yogaNodeJNIBase.f17938l = this;
                YogaNative.jni_YGNodeInsertChildJNI(this.hp, yogaNodeJNIBase.hp, i2);
                return;
            }
            throw new IllegalStateException("Child already has a parent, it must be removed first.");
        }
    }

    @Override // com.byazt.yn.e
    public void l(com.byazt.yn.hp hpVar) {
        YogaNative.jni_YGNodeStyleSetAlignSelfJNI(this.hp, hpVar.hp());
    }

    @Override // com.byazt.yn.e
    public void jx(com.byazt.yn.hp hpVar) {
        YogaNative.jni_YGNodeStyleSetAlignContentJNI(this.hp, hpVar.hp());
    }

    @Override // com.byazt.yn.e
    public void l(float f2) {
        YogaNative.jni_YGNodeStyleSetFlexShrinkJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public void jx(float f2) {
        YogaNative.jni_YGNodeStyleSetFlexBasisJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public void l(j jVar, float f2) {
        YogaNative.jni_YGNodeStyleSetPaddingJNI(this.hp, jVar.hp(), f2);
    }

    @Override // com.byazt.yn.e
    public void j(float f2) {
        YogaNative.jni_YGNodeStyleSetWidthJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public void jx() {
        YogaNative.jni_YGNodeStyleSetFlexBasisAutoJNI(this.hp);
    }

    public YogaNodeJNIBase() {
        this(YogaNative.jni_YGNodeNewJNI());
    }

    @Override // com.byazt.yn.e
    public void j() {
        YogaNative.jni_YGNodeStyleSetWidthAutoJNI(this.hp);
    }

    @Override // com.byazt.yn.e
    public void jx(j jVar, float f2) {
        YogaNative.jni_YGNodeStyleSetPositionJNI(this.hp, jVar.hp(), f2);
    }

    @Override // com.byazt.yn.e
    public int hp(e eVar) {
        List<YogaNodeJNIBase> list = this.jx;
        if (list == null) {
            return -1;
        }
        return list.indexOf(eVar);
    }

    @Override // com.byazt.yn.e
    public void hp(float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            List<YogaNodeJNIBase> list = ((YogaNodeJNIBase) arrayList.get(i2)).jx;
            if (list != null) {
                Iterator<YogaNodeJNIBase> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            }
        }
        YogaNodeJNIBase[] yogaNodeJNIBaseArr = (YogaNodeJNIBase[]) arrayList.toArray(new YogaNodeJNIBase[arrayList.size()]);
        long[] jArr = new long[yogaNodeJNIBaseArr.length];
        for (int i3 = 0; i3 < yogaNodeJNIBaseArr.length; i3++) {
            jArr[i3] = yogaNodeJNIBaseArr[i3].hp;
        }
        YogaNative.jni_YGNodeCalculateLayoutJNI(this.hp, f2, f3, jArr, yogaNodeJNIBaseArr);
    }

    @Override // com.byazt.yn.e
    public void hp(jx jxVar) {
        YogaNative.jni_YGNodeStyleSetDirectionJNI(this.hp, jxVar.hp());
    }

    @Override // com.byazt.yn.e
    public void hp(w wVar) {
        YogaNative.jni_YGNodeStyleSetFlexDirectionJNI(this.hp, wVar.hp());
    }

    @Override // com.byazt.yn.e
    public void hp(a aVar) {
        YogaNative.jni_YGNodeStyleSetJustifyContentJNI(this.hp, aVar.hp());
    }

    @Override // com.byazt.yn.e
    public void hp(com.byazt.yn.hp hpVar) {
        YogaNative.jni_YGNodeStyleSetAlignItemsJNI(this.hp, hpVar.hp());
    }

    @Override // com.byazt.yn.e
    public void hp(zy zyVar) {
        YogaNative.jni_YGNodeStyleSetPositionTypeJNI(this.hp, zyVar.hp());
    }

    @Override // com.byazt.yn.e
    public void hp(k kVar) {
        YogaNative.jni_YGNodeStyleSetFlexWrapJNI(this.hp, kVar.hp());
    }

    @Override // com.byazt.yn.e
    public void hp(float f2) {
        YogaNative.jni_YGNodeStyleSetFlexGrowJNI(this.hp, f2);
    }

    @Override // com.byazt.yn.e
    public void hp(j jVar, float f2) {
        YogaNative.jni_YGNodeStyleSetMarginJNI(this.hp, jVar.hp(), f2);
    }

    @Override // com.byazt.yn.e
    public void hp(eb ebVar) {
        this.f17937j = ebVar;
        YogaNative.jni_YGNodeSetHasMeasureFuncJNI(this.hp, ebVar != null);
    }

    @Override // com.byazt.yn.e
    public void hp(boolean z2) {
        YogaNative.jni_YGNodeSetAlwaysFormsContainingBlockJNI(this.hp, z2);
    }

    @Override // com.byazt.yn.e
    public void hp(Object obj) {
        this.f17936a = obj;
    }
}
