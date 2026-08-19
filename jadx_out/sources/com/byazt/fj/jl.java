package com.byazt.fj;

import android.annotation.TargetApi;
import android.graphics.Path;
import com.byazt.mo.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 19})
@TargetApi(19)
/* loaded from: classes2.dex */
public class jl implements e, zy {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.mo.q f19823a;

    /* renamed from: j, reason: collision with root package name */
    public final String f19824j;
    public final Path hp = new Path();

    /* renamed from: l, reason: collision with root package name */
    public final Path f19825l = new Path();
    public final Path jx = new Path();

    /* renamed from: w, reason: collision with root package name */
    public final List<zy> f19826w = new ArrayList();

    @com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG})
    /* renamed from: com.byazt.fj.jl$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[q.hp.values().length];
            hp = iArr;
            try {
                iArr[q.hp.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[q.hp.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[q.hp.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[q.hp.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[q.hp.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public jl(com.byazt.mo.q qVar) {
        this.f19824j = qVar.hp();
        this.f19823a = qVar;
    }

    @Override // com.byazt.fj.e
    public void hp(ListIterator<jx> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            jx jxVarPrevious = listIterator.previous();
            if (jxVarPrevious instanceof zy) {
                this.f19826w.add((zy) jxVarPrevious);
                listIterator.remove();
            }
        }
    }

    @Override // com.byazt.fj.zy
    public Path j() {
        this.jx.reset();
        if (this.f19823a.jx()) {
            return this.jx;
        }
        int i2 = AnonymousClass1.hp[this.f19823a.l().ordinal()];
        if (i2 == 1) {
            hp();
        } else if (i2 == 2) {
            hp(Path.Op.UNION);
        } else if (i2 == 3) {
            hp(Path.Op.REVERSE_DIFFERENCE);
        } else if (i2 == 4) {
            hp(Path.Op.INTERSECT);
        } else if (i2 == 5) {
            hp(Path.Op.XOR);
        }
        return this.jx;
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
        for (int i2 = 0; i2 < this.f19826w.size(); i2++) {
            this.f19826w.get(i2).hp(list, list2);
        }
    }

    private void hp() {
        for (int i2 = 0; i2 < this.f19826w.size(); i2++) {
            this.jx.addPath(this.f19826w.get(i2).j());
        }
    }

    @TargetApi(19)
    private void hp(Path.Op op) {
        this.f19825l.reset();
        this.hp.reset();
        for (int size = this.f19826w.size() - 1; size > 0; size--) {
            zy zyVar = this.f19826w.get(size);
            if (zyVar instanceof j) {
                j jVar = (j) zyVar;
                List<zy> listL = jVar.l();
                for (int size2 = listL.size() - 1; size2 >= 0; size2--) {
                    Path pathJ = listL.get(size2).j();
                    pathJ.transform(jVar.jx());
                    this.f19825l.addPath(pathJ);
                }
            } else {
                this.f19825l.addPath(zyVar.j());
            }
        }
        zy zyVar2 = this.f19826w.get(0);
        if (zyVar2 instanceof j) {
            j jVar2 = (j) zyVar2;
            List<zy> listL2 = jVar2.l();
            for (int i2 = 0; i2 < listL2.size(); i2++) {
                Path pathJ2 = listL2.get(i2).j();
                pathJ2.transform(jVar2.jx());
                this.hp.addPath(pathJ2);
            }
        } else {
            this.hp.set(zyVar2.j());
        }
        this.jx.op(this.hp, this.f19825l, op);
    }
}
