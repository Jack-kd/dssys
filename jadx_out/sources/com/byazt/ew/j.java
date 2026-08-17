package com.byazt.ew;

import com.byazt.gy.s;
import com.byazt.ymw.e;

@com.byazt.kj.hp(hp = {0, 1, 161, 38})
/* loaded from: classes2.dex */
public class j extends com.byazt.gy.jx<com.byazt.np.j, com.byazt.kf.j> {

    @com.byazt.kj.hp(hp = {0, 1, 161, 263})
    /* renamed from: com.byazt.ew.j$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[com.byazt.np.j.values().length];
            hp = iArr;
            try {
                iArr[com.byazt.np.j.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[com.byazt.np.j.INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[com.byazt.np.j.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[com.byazt.np.j.PREPARED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[com.byazt.np.j.PLAYED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[com.byazt.np.j.BUFFERED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[com.byazt.np.j.PAUSED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                hp[com.byazt.np.j.STOPPED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                hp[com.byazt.np.j.COMPLETED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                hp[com.byazt.np.j.END.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public j(String str, String str2) {
        this.jx = new com.byazt.kf.j(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(final com.byazt.np.j jVar, final s sVar) {
        this.f20633l = jVar;
        if (sVar == null) {
            sVar = new s(System.currentTimeMillis());
        }
        e.jx().post(new Runnable() { // from class: com.byazt.ew.j.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.gy.a aVar : j.this.hp) {
                    if (aVar instanceof com.byazt.gj.j) {
                        switch (AnonymousClass2.hp[jVar.ordinal()]) {
                            case 1:
                                ((com.byazt.gj.j) aVar).hp(j.this.getContext(), sVar);
                                break;
                            case 2:
                                ((com.byazt.gj.j) aVar).l(j.this.getContext(), sVar);
                                break;
                            case 3:
                                ((com.byazt.gj.j) aVar).jx(j.this.getContext(), sVar);
                                break;
                            case 4:
                                ((com.byazt.gj.j) aVar).j(j.this.getContext(), sVar);
                                break;
                            case 5:
                                ((com.byazt.gj.j) aVar).w(j.this.getContext(), sVar);
                                break;
                            case 6:
                                ((com.byazt.gj.j) aVar).a(j.this.getContext(), sVar);
                                break;
                            case 7:
                                ((com.byazt.gj.j) aVar).eb(j.this.getContext(), sVar);
                                break;
                            case 8:
                                ((com.byazt.gj.j) aVar).s(j.this.getContext(), sVar);
                                break;
                            case 9:
                                ((com.byazt.gj.j) aVar).q(j.this.getContext(), sVar);
                                break;
                            case 10:
                                ((com.byazt.gj.j) aVar).e(j.this.getContext(), sVar);
                                break;
                        }
                    }
                }
            }
        });
    }
}
