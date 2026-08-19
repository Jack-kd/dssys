package com.byazt.ew;

import com.byazt.gy.s;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 161, 54})
/* loaded from: classes2.dex */
public class a extends com.byazt.gy.jx<com.byazt.np.a, com.byazt.kf.a> {

    @com.byazt.kj.hp(hp = {0, 1, 161, MediaPlayer.MEDIA_PLAYER_OPTION_META_DATA_INFO})
    /* renamed from: com.byazt.ew.a$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[com.byazt.np.a.values().length];
            hp = iArr;
            try {
                iArr[com.byazt.np.a.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[com.byazt.np.a.FOREGROUNDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[com.byazt.np.a.BACKGROUNDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[com.byazt.np.a.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public a(String str, String str2) {
        this.jx = new com.byazt.kf.a(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(final com.byazt.np.a aVar, final s sVar) {
        this.f20633l = aVar;
        if (sVar == null) {
            sVar = new s(System.currentTimeMillis());
        }
        e.jx().post(new Runnable() { // from class: com.byazt.ew.a.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.gy.a aVar2 : a.this.hp) {
                    if (aVar2 instanceof com.byazt.gj.a) {
                        int i2 = AnonymousClass2.hp[aVar.ordinal()];
                        if (i2 == 1) {
                            ((com.byazt.gj.a) aVar2).hp(a.this.getContext(), sVar);
                        } else if (i2 == 2) {
                            ((com.byazt.gj.a) aVar2).l(a.this.getContext(), sVar);
                        } else if (i2 == 3) {
                            ((com.byazt.gj.a) aVar2).jx(a.this.getContext(), sVar);
                        } else if (i2 == 4) {
                            ((com.byazt.gj.a) aVar2).j(a.this.getContext(), sVar);
                        }
                    }
                }
            }
        });
    }
}
