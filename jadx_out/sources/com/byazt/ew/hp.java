package com.byazt.ew;

import com.byazt.gy.s;
import com.byazt.ymw.e;

@com.byazt.kj.hp(hp = {0, 1, 161, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.gy.jx<com.byazt.np.hp, com.byazt.kf.hp> {

    @com.byazt.kj.hp(hp = {0, 1, 161, 88})
    /* renamed from: com.byazt.ew.hp$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[com.byazt.np.hp.values().length];
            hp = iArr;
            try {
                iArr[com.byazt.np.hp.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[com.byazt.np.hp.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[com.byazt.np.hp.MARKET_OPENED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[com.byazt.np.hp.MARKET_CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[com.byazt.np.hp.DOWNLOAD_STARTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[com.byazt.np.hp.DOWNLOAD_PAUSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[com.byazt.np.hp.DOWNLOAD_FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                hp[com.byazt.np.hp.DOWNLOAD_CANCELED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                hp[com.byazt.np.hp.DOWNLOAD_FINISHED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                hp[com.byazt.np.hp.END.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public hp(String str, String str2) {
        this.jx = new com.byazt.kf.hp(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(final com.byazt.np.hp hpVar, final s sVar) {
        this.f20633l = hpVar;
        if (sVar == null) {
            sVar = new s(System.currentTimeMillis());
        }
        e.jx().post(new Runnable() { // from class: com.byazt.ew.hp.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.gy.a aVar : hp.this.hp) {
                    if (aVar instanceof com.byazt.gj.hp) {
                        switch (AnonymousClass2.hp[hpVar.ordinal()]) {
                            case 1:
                                ((com.byazt.gj.hp) aVar).hp(hp.this.getContext(), sVar);
                                break;
                            case 2:
                                ((com.byazt.gj.hp) aVar).l(hp.this.getContext(), sVar);
                                break;
                            case 3:
                                ((com.byazt.gj.hp) aVar).jx(hp.this.getContext(), sVar);
                                break;
                            case 4:
                                ((com.byazt.gj.hp) aVar).j(hp.this.getContext(), sVar);
                                break;
                            case 5:
                                ((com.byazt.gj.hp) aVar).w(hp.this.getContext(), sVar);
                                break;
                            case 6:
                                ((com.byazt.gj.hp) aVar).a(hp.this.getContext(), sVar);
                                break;
                            case 7:
                                ((com.byazt.gj.hp) aVar).eb(hp.this.getContext(), sVar);
                                break;
                            case 8:
                                ((com.byazt.gj.hp) aVar).s(hp.this.getContext(), sVar);
                                break;
                            case 9:
                                ((com.byazt.gj.hp) aVar).q(hp.this.getContext(), sVar);
                                break;
                            case 10:
                                ((com.byazt.gj.hp) aVar).e(hp.this.getContext(), sVar);
                                break;
                        }
                    }
                }
            }
        });
    }
}
