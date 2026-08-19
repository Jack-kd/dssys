package com.byazt.na;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public enum ec {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    @com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE})
    /* renamed from: com.byazt.na.ec$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[ec.values().length];
            hp = iArr;
            try {
                iArr[ec.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[ec.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[ec.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean hp(int i2, boolean z2, int i3) {
        int i4 = AnonymousClass1.hp[ordinal()];
        if (i4 == 1) {
            return false;
        }
        if (i4 != 2) {
            return (z2 && i2 < 28) || i3 > 4 || i2 <= 25;
        }
        return true;
    }
}
