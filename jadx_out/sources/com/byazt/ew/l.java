package com.byazt.ew;

import com.byazt.gy.s;
import com.byazt.ymw.e;

@com.byazt.kj.hp(hp = {0, 1, 161, 34})
/* loaded from: classes2.dex */
public class l extends com.byazt.gy.jx<com.byazt.np.l, com.byazt.kf.l> {

    @com.byazt.kj.hp(hp = {0, 1, 161, 24})
    /* renamed from: com.byazt.ew.l$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[com.byazt.np.l.values().length];
            hp = iArr;
            try {
                iArr[com.byazt.np.l.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[com.byazt.np.l.REQED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[com.byazt.np.l.RECEIVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[com.byazt.np.l.LOADED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public l(String str, String str2) {
        this.jx = new com.byazt.kf.l(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(final com.byazt.np.l lVar, final s sVar) {
        this.f20633l = lVar;
        if (sVar == null) {
            sVar = new s(System.currentTimeMillis());
        }
        e.jx().post(new Runnable() { // from class: com.byazt.ew.l.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.gy.a aVar : l.this.hp) {
                    if (aVar instanceof com.byazt.gj.l) {
                        int i2 = AnonymousClass2.hp[lVar.ordinal()];
                        if (i2 == 1) {
                            ((com.byazt.gj.l) aVar).hp(l.this.getContext(), sVar);
                        } else if (i2 == 2) {
                            ((com.byazt.gj.l) aVar).l(l.this.getContext(), sVar);
                        } else if (i2 == 3) {
                            ((com.byazt.gj.l) aVar).jx(l.this.getContext(), sVar);
                        } else if (i2 == 4) {
                            ((com.byazt.gj.l) aVar).j(l.this.getContext(), sVar);
                        }
                    }
                }
            }
        });
    }
}
