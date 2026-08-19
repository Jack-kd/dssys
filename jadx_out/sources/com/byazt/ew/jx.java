package com.byazt.ew;

import com.byazt.gy.s;
import com.byazt.ymw.e;

@com.byazt.kj.hp(hp = {0, 1, 161, 30})
/* loaded from: classes2.dex */
public class jx extends com.byazt.gy.jx<com.byazt.np.jx, com.byazt.kf.jx> {

    @com.byazt.kj.hp(hp = {0, 1, 161, 16})
    /* renamed from: com.byazt.ew.jx$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[com.byazt.np.jx.values().length];
            hp = iArr;
            try {
                iArr[com.byazt.np.jx.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[com.byazt.np.jx.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[com.byazt.np.jx.SHOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[com.byazt.np.jx.VISIBLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[com.byazt.np.jx.INVISIBLED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[com.byazt.np.jx.CLICKED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[com.byazt.np.jx.END.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public jx(String str, String str2) {
        this.jx = new com.byazt.kf.jx(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(final com.byazt.np.jx jxVar, final s sVar) {
        this.f20633l = jxVar;
        if (sVar == null) {
            sVar = new s(System.currentTimeMillis());
        }
        e.jx().post(new Runnable() { // from class: com.byazt.ew.jx.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.gy.a aVar : jx.this.hp) {
                    if (aVar instanceof com.byazt.gj.jx) {
                        switch (AnonymousClass2.hp[jxVar.ordinal()]) {
                            case 1:
                                ((com.byazt.gj.jx) aVar).hp(jx.this.getContext(), sVar);
                                break;
                            case 2:
                                ((com.byazt.gj.jx) aVar).l(jx.this.getContext(), sVar);
                                break;
                            case 3:
                                ((com.byazt.gj.jx) aVar).jx(jx.this.getContext(), sVar);
                                break;
                            case 4:
                                ((com.byazt.gj.jx) aVar).j(jx.this.getContext(), sVar);
                                break;
                            case 5:
                                ((com.byazt.gj.jx) aVar).w(jx.this.getContext(), sVar);
                                break;
                            case 6:
                                ((com.byazt.gj.jx) aVar).a(jx.this.getContext(), sVar);
                                break;
                            case 7:
                                ((com.byazt.gj.jx) aVar).eb(jx.this.getContext(), sVar);
                                break;
                        }
                    }
                }
            }
        });
    }
}
